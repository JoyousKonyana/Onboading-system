import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { environment } from 'src/environments/environment';

@Injectable({
  providedIn: 'root'
})
export class ManageCoursesService {

  endpointBase = environment.endpointBase;

  constructor(
    private _httpClient: HttpClient,
  ) { }

  getAllQuestionBanksByLessonOutcomeId(lessonOutcomeId: number) {
    return this._httpClient.get(this.endpointBase.concat("QuestionBanks/GetAll/LessonOutcome/" + lessonOutcomeId),
      { reportProgress: true, observe: 'events' });
  }

  getAllQuestionBanks() {
    return this._httpClient.get(this.endpointBase.concat("QuestionBanks/GetAll" ),
      { reportProgress: true, observe: 'events' });
  }
}
