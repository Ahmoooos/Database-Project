-- 1.Insert a New Question
CREATE PROCEDURE AddQuestion
    @Text TEXT,
    @Answer VARCHAR(200),
    @Mark INT,
    @MCQ BIT,
    @TFQ BIT,
    @ExamID INT,
    @Ins_ID INT
AS
BEGIN
    INSERT INTO Questions (Text, Answer, Mark, MCQ, TFQ, ExamID, Ins_ID)
    VALUES (@Text, @Answer, @Mark, @MCQ, @TFQ, @ExamID, @Ins_ID);

    SELECT SCOPE_IDENTITY() AS NewQuestionID;
END;

-- Add choices for MCQ (max 4 choices)
CREATE PROCEDURE AddMCQChoices
    @Q_ID INT,
    @Choice1 VARCHAR(200),
    @Choice2 VARCHAR(200),
    @Choice3 VARCHAR(200),
    @Choice4 VARCHAR(200),
    @CorrectChoice VARCHAR(200)
AS
BEGIN
    IF (SELECT MCQ FROM Questions WHERE Q_ID = @Q_ID) = 1
    BEGIN
        INSERT INTO Choices (Q_ID, Choice_Text, Is_Correct)
        VALUES
            (@Q_ID, @Choice1, CASE WHEN @Choice1 = @CorrectChoice THEN 1 ELSE 0 END),
            (@Q_ID, @Choice2, CASE WHEN @Choice2 = @CorrectChoice THEN 1 ELSE 0 END),
            (@Q_ID, @Choice3, CASE WHEN @Choice3 = @CorrectChoice THEN 1 ELSE 0 END),
            (@Q_ID, @Choice4, CASE WHEN @Choice4 = @CorrectChoice THEN 1 ELSE 0 END);
    END
    ELSE
    BEGIN
        PRINT 'Error: This question is not an MCQ.';
    END
END;

-- Add choices for True/False (2 choices only)
CREATE PROCEDURE AddTFChoices
    @Q_ID INT,
    @CorrectChoice VARCHAR(200)
AS
BEGIN
    IF (SELECT TFQ FROM Questions WHERE Q_ID = @Q_ID) = 1
    BEGIN
        INSERT INTO Choices (Q_ID, Choice_Text, Is_Correct)
        VALUES
            (@Q_ID, 'True', CASE WHEN 'True' = @CorrectChoice THEN 1 ELSE 0 END),
            (@Q_ID, 'False', CASE WHEN 'False' = @CorrectChoice THEN 1 ELSE 0 END);
    END
    ELSE
    BEGIN
        PRINT 'Error: This question is not a True/False question.';
    END
END;

-- Get question with choices
CREATE PROCEDURE GetQuestionWithChoices
    @Q_ID INT
AS
BEGIN
    SELECT q.Q_ID, q.Text, q.Answer, q.Mark, q.MCQ, q.TFQ, q.ExamID, q.Ins_ID,
           c.Choice_Text, c.Is_Correct
    FROM Questions q
    LEFT JOIN Choices c ON q.Q_ID = c.Q_ID
    WHERE q.Q_ID = @Q_ID;
END;



-- 2.Get All Questions
create procedure GetAllQuestions
as
begin
    select * from Questions;
end;

-- 3.Update Question Text
create procedure UpdateQuestionText
    @Q_ID int,
    @NewText text
as
begin
    update Questions
    set Text = @NewText
    where Q_ID = @Q_ID;
end;

-- 4.Delete a Question
create procedure DeleteQuestion
    @Q_ID int
as
begin
    delete from Questions where Q_ID = @Q_ID;
end;

-- 5.Get Questions by Exam
create procedure GetQuestionsByExam
    @ExamID int
as
begin
    select * from Questions where ExamID = @ExamID;
end;

