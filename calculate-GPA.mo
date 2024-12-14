import Nat32 "mo:base/Nat32";
import Trie "mo:base/Trie";
import Option "mo:base/Option";
import List "mo:base/List";
import Text "mo:base/Text";
import Result "mo:base/Result";
import Nat "mo:base/Nat";
import Float "mo:base/Float";

actor {
  public type Lesson = {
    Name: Text;
    Credit: Nat;
    Visa_Exam: Nat;
    Final_Exam: Nat;

    //bookPowers: List.List<Text>;
  };

  public type LessonId = Nat32;

  private stable var next : LessonId = 0;

  private stable var lessons : Trie.Trie<LessonId, Lesson> = Trie.empty();
  
  public func createBook (newLesson: Lesson) : async Nat32{
    let id = next;
    next += 1;

    lessons := Trie.replace(
      lessons,
      key(id),
      Nat32.equal,
      ?newLesson
    ).0;

    return id;
  };

  public func getLesson (id:LessonId) : async ?Lesson {
    let result = Trie.find(
      lessons,
      key(id),
      Nat32.equal
    );
    return result;
  };

  public func updateLesson(id: LessonId, newLesson: Lesson) : async Bool{
    let result = Trie.find(
      lessons,
      key(id),
      Nat32.equal
    );
    
    let exists = Option.isSome(result);

    if(exists){
      lessons := Trie.replace(
        lessons,
        key(id),
        Nat32.equal,
        ?newLesson
      ).0;
    };


    return exists;
  };

  public func deleteLesson(id: LessonId) : async Bool{
    let result = Trie.find(lessons, key(id), Nat32.equal);
    let exists = Option.isSome(result);

    if (exists) {
      // Remove the superhero from the Trie
      lessons := Trie.replace(lessons, key(id), Nat32.equal, null).0;
    };

    return exists;
  };

  private func key(x: LessonId): Trie.Key<LessonId>{
    { hash = x; key = x};
  };

public func calculateTotal() : async Text {
  var i : Nat32 = 0;
  var toplaNotes : Nat = 0;
  var toplaCredit : Nat = 0;
  while(i < next){
    let result = Trie.find(
      lessons,
      key(i),
      Nat32.equal
    );
      
    switch (result) {
      case (null) { };  // Do nothing if lesson not found
      case (?lesson) { 
        var note : Nat = ((lesson.Visa_Exam * 4 / 10) + (lesson.Final_Exam * 6 / 10)) * lesson.Credit;
        toplaNotes += note; 
        toplaCredit += lesson.Credit;
      };
    };
      
    i += 1;
  };

  var lastNote : Float = Float.fromInt(toplaNotes) / Float.fromInt(toplaCredit) / 25;

  var harfNotu : Text = "";

  var lastNoteUnder100 : Float = lastNote * 25;

  if(lastNoteUnder100 >= 90){
    harfNotu := "AA";
  };
  if(lastNoteUnder100 >= 85 and lastNoteUnder100 < 90){
    harfNotu := "BA";
  };
  if(lastNoteUnder100 >= 80 and lastNoteUnder100 < 85){
    harfNotu := "BB";
  };
  if(lastNoteUnder100 >= 75 and lastNoteUnder100 < 80){
    harfNotu := "BC";
  };
  if(lastNoteUnder100 >= 65 and lastNoteUnder100 < 75){
    harfNotu := "CC";
  };
    if(lastNoteUnder100 >= 60 and lastNoteUnder100 < 65){
    harfNotu := "DC";
  };
    if(lastNoteUnder100 >= 55 and lastNoteUnder100 < 60){
    harfNotu := "DD";
  };
    if(lastNoteUnder100 >= 50 and lastNoteUnder100 < 55){
    harfNotu := "FD";
  };
    if(lastNoteUnder100 >= 0 and lastNoteUnder100 < 50){
    harfNotu := "FF";
  };

  let lastNoteString = Float.toText(lastNote);

  //harfSistemi(lastNote);
    
  var lastText : Text = "GPA = " # lastNoteString # ", Harf Notunuz = " # harfNotu;

  return lastText;
};

 private func harfSistemi(note: Nat32) : async Text{
  var harfNotu : Text = "";

  if(note >= 90){
    harfNotu := "AA";
  };
  if(note >= 85 and note < 90){
    harfNotu := "BA";
  };
  if(note >= 80 and note < 85){
    harfNotu := "BA";
  };
  if(note >= 75 and note < 80){
    harfNotu := "BA";
  };
  if(note >= 65 and note < 75){
    harfNotu := "BA";
  };
    if(note >= 60 and note < 65){
    harfNotu := "BA";
  };
    if(note >= 55 and note < 60){
    harfNotu := "BA";
  };
    if(note >= 50 and note < 55){
    harfNotu := "BA";
  };
    if(note >= 0 and note < 50){
    harfNotu := "BA";
  };

  harfNotu
 };
};
