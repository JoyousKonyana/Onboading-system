export interface N_questionBank {
  id: number,
  name: string,
  courseId: number,
  courseName: string,
  lessonId: number,
  lessonName: string,
  lessonOutcomeName: string,
  lessonOutcomeId: number
}

export interface N_questionBankWithQuestions {
  id: number,
  name: string,
  courseId: number,
  courseName: string,
  lessonId: number,
  lessonName: string,
  lessonOutcomeName: string,
  lessonOutcomeId: number,
  questions: Array<N_questionInBank>
}


export interface N_questionInBank {
  id: number,
  name: string,
}

export interface N_AnswerOption{
  id: number,
  option: string,
  correct: string,
}
