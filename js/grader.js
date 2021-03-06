//**********************************************************************
//**  Rounds the value x to dcml decimal places                       **
//**********************************************************************
function roundDec(x, dcml)  {
	var dvsr = Math.pow (10,dcml);
	var num = Math.round(x*dvsr)/dvsr;
	if ((num < 1) && (num>=0.1)) num = "0" + num;
	return (num);
}

//**********************************************************************
//**  Sets weights for assessment components                          **
//**********************************************************************
function get_wghts() {
  PREP_WT = 0.08; HW_WT = 0.08; PART_WT = 0.08; Q1_WT = 0.15;
  Q2_WT = 0.13; Q3_WT = 0.13;	Q4_WT = 0.10;	FNL_WT = 0.25;
}

//**********************************************************************
//**  Computes the final grade                                        **
//**********************************************************************
function find_grade(form, pts, outof) {
	form.SCORE.value = roundDec((pts/outof)*100,1);
	curr_sc = roundDec(pts/outof,2);
	if (curr_sc >= 0.92) {form.GRADE.value="A"}
	else if (curr_sc >= 0.90) {form.GRADE.value="A-"}
	else if (curr_sc >= 0.87) {form.GRADE.value="B+"}
	else if (curr_sc >= 0.82) {form.GRADE.value="B"}
	else if (curr_sc >= 0.80) {form.GRADE.value="B-"}
	else if (curr_sc >= 0.77) {form.GRADE.value="C+"}
	else if (curr_sc >= 0.70) {form.GRADE.value="C"}
	else if (curr_sc >= 0.67) {form.GRADE.value="D+"}
	else if (curr_sc >= 0.60) {form.GRADE.value="D"}
	else {form.GRADE.value="F"}
}

function calc_grade(form) {
	get_wghts();
	pts = 0; outof=0;
	temp = form.PREP_SC.value;
	if (temp!=="") {
		if (temp > 1) {temp=temp/100};
		pts += PREP_WT*temp;	outof += PREP_WT;
	}
	temp = form.HW_SC.value;
	if (temp!=="") {
		if (temp > 1) {temp=temp/100};
		pts += HW_WT*temp;	outof += HW_WT;
	}
	temp = form.PART_SC.value;
	if (temp!=="") {
		if (temp > 1) {temp=temp/100};
		pts += PART_WT*temp;	outof += PART_WT;
	}
	temp = form.Q1_SC.value;
	if (temp!=="") {
		if (temp > 1) {temp=temp/100};
		pts += Q1_WT*temp;	outof += Q1_WT;
	}
	temp = form.Q2_SC.value;
	if (temp!=="") {
		if (temp > 1) {temp=temp/100};
		pts += Q2_WT*temp;	outof += Q2_WT;
	}
	temp = form.Q3_SC.value;
	if (temp!=="") {
		if (temp > 1) {temp=temp/100};
		pts += Q3_WT*temp;	outof += Q3_WT;
	}
	temp = form.Q4_SC.value;
	if (temp!=="") {
		if (temp > 1) {temp=temp/100};
		pts += Q4_WT*temp;	outof += Q4_WT;
	}
	temp = form.FNL_SC.value;
	if (temp!=="") {
		if (temp > 1) {temp=temp/100};
		pts += FNL_WT*temp;	outof += FNL_WT;
	}
	find_grade(form, pts, outof);
}
