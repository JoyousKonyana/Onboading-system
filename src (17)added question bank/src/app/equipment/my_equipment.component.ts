

import { Component, OnInit, OnDestroy } from '@angular/core';
import { Subscription } from 'rxjs';
import { first } from 'rxjs/operators';

import { AssignEquipment, Equipment_Query, EquipmentQuery } from '../_models';
import { EquipmentService, Equipment_QueryService, AlertService } from '../_services';

@Component({ 
    templateUrl: 'my_equipment.component.html',
    styleUrls: ['./ss_equipment.component.css'] 
})

export class My_EquipmentComponent implements OnInit {

  x!: any;
  //y: Equipment_Query[] = [];
  query: any = {};

  constructor(
    private xService: EquipmentService,
    private alertService: AlertService,
    private yService: Equipment_QueryService,
) {

}

ngOnInit() { 
    this.loadAll();
}

private loadAll() {
  this.xService.GetAssignedEquipment(1)
  .pipe(first())
  .subscribe(
    x => {
      this.x = x;
    },
    error => {
      this.alertService.error('Error, Data was unsuccesfully retrieved');
    } 
  );
}

    newUser_RoleClicked = false;

    newReport_QueryClicked = false;

  model: any = {};

  model2: Equipment_Query = {
    EquipmentId: 0,
    EquipmentQueryDescription: '',
    EquipmentQueryDate: '',
    OnboarderId: 1,
    EquipmentQueryId: 0
  }; 

  myValue = 0;

  editReport_Query(editReport_QueryInfo: number) {
    this.newReport_QueryClicked = !this.newReport_QueryClicked;
    this.myValue = editReport_QueryInfo;
  }

  Report_Query() {
    let editReport_QueryInfo = this.myValue;

    this.model2.EquipmentId = this.x[editReport_QueryInfo].EquipmentId;

    this.yService.create(this.model2)
            .pipe(first())
            .subscribe(
                data => {
                    this.alertService.success('Query was Reported was successfully', true);
                    this.loadAll()
                },
                error => {
                    this.alertService.error('Error, Report was unsuccesful');
                });

    this.newReport_QueryClicked = !this.newReport_QueryClicked;
  }

  CloseReport_QueryBtn() {
    this.newReport_QueryClicked = !this.newReport_QueryClicked;
  }

}