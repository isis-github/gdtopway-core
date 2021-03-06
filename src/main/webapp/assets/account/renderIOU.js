var IOU_RENDER_UTILITY = {
    FinalRepaymentDate: function (a, b, c) {
        if (a || (b === YcLoanIouStatus.Effecting && today > c)) {
            return '<span class="text-xs text-danger">' + c.toFormat("yyyy-MM-dd") + "</span>"
        } else {
            return c.toFormat("yyyy-MM-dd")
        }
    }, StatusInfo: function (d, a, c, b, e) {
        if (b === YcLoanIouStatus.Pending && d == 0) {
            return {icon: "fa-rmb", iconClass: "text-warning", text: "待支付", textClass: "text-warning"}
        } else {
            if (b === YcLoanIouStatus.Effecting && today > e) {
                a = true;
                c = (today - e) / daysTime
            }
            !a && (a = false);
            if (a) {
                return {
                    icon: "fa-times-circle",
                    iconClass: "text-danger",
                    text: (b === YcLoanIouStatus.Effecting ? "应还未还" : getEnumMessage("YcLoanIouStatus", b)) + " (逾期" + c + "天)",
                    textClass: "text-danger"
                }
            } else {
                if (b === YcLoanIouStatus.Effecting) {
                    if ((e - today) / daysTime <= 3) {
                        return {
                            icon: "fa-check-circle",
                            iconClass: "text-info",
                            text: e - today === 0 ? "今日到期" : "即将到期",
                            textClass: ""
                        }
                    } else {
                        return {
                            icon: "fa-check-circle",
                            iconClass: "text-success",
                            text: getEnumMessage("YcLoanIouStatus", b),
                            textClass: ""
                        }
                    }
                } else {
                    return {
                        icon: "fa-check-circle",
                        iconClass: "",
                        text: getEnumMessage("YcLoanIouStatus", b),
                        textClass: ""
                    }
                }
            }
        }
    }
};
var renderIOU = function (c, a, b) {
    $.each(b, function (e, d) {
        var f = parseDatetime(d.finalRepaymentDate);
        var g = IOU_RENDER_UTILITY.StatusInfo(d.isPaid, d.isOverdue, d.overdueDays, d.status, f);
        a.append('<a href="/m/iou/info/' + encodeParameters(d.loanIOUId) + '" class="card-container"><div class="weui-flex border-bottom"><div><img src="' + (d.creditorId == c ? d.debtorHeadImageUrl : d.creditorHeadImageUrl) + '" class="head-img"></div><div class="ml10 text-center"><div class="text-dark" style="line-height: 25px;">' + (d.creditorId == c ? d.debtorName : d.creditorName) + '</div><div class="text-xs" style="line-height: 15px;">(' + (d.creditorId == c ? "借款人" : "出借人") + ')</div></div><div class="weui-flex__item text-right"><div style="line-height: 14px;"><span class="text-' + (d.creditorId == c ? "primary" : "success") + '" style="font-size: 14px;">' + (d.creditorId == c ? "他跟我借" : "我跟他借") + '</span><small class="ml5" style="font-size: 12px;">(元)</small></div><div style="line-height: 25px;"><strong class="text-dark text-xl">' + d.amount.toFixed(2) + '</strong></div></div></div><div class="weui-flex border-bottom" style="line-height: 22px;"><div class="weui-flex__item"><div class="text-xs">利率：' + d.annualInterestRate + '%</div><div class="text-xs">用途：' + getEnumMessage("LoanUse", d.loanUse) + '</div></div><div class="weui-flex__item" style="text-align: right;"><div class="text-xs">借款日：' + parseDatetime(d.borrowingDate).toFormat("yyyy-MM-dd") + '</div><div class="text-xs">还款日：' + IOU_RENDER_UTILITY.FinalRepaymentDate(d.isOverdue, d.status, f) + '</div></div></div><div class="text-right"><span class="text-xs fa ' + g.icon + " " + g.iconClass + '"></span><span class="text-xs ' + g.textClass + ' ml5">' + g.text + "</span></div></a>")
    })
};
var renderExten = function (c, a, b) {
    $.each(b, function (e, d) {
        a.append('<a href="/m/iou/info/' + encodeParameters(d.loanIOUId) + '" class="card-container card-container-border"><div class="weui-flex border-bottom"><div><img src="' + (d.creditorId == c ? d.debtorHeadImageUrl : d.creditorHeadImageUrl) + '" class="head-img"></div><div class="ml10 text-center"><div class="text-dark" style="line-height: 25px;">' + (d.creditorId == c ? d.debtorName : d.creditorName) + '</div><div class="text-xs" style="line-height: 15px;">(' + (d.creditorId == c ? "借款人" : "出借人") + ')</div></div><div class="weui-flex__item text-right"><div style="line-height: 40px;"><strong class="text-dark text-xl">展期</strong></div></div></div><div class="weui-flex" style="line-height: 22px;"><div class="weui-flex__item"><div class="text-xs">展期本金：' + d.amount.toFixed(2) + '元</div></div><div class="weui-flex__item" style="text-align: right;"><div class="text-xs">展期至：' + parseDatetime(d.newRepaymentDate).toFormat("yyyy-MM-dd") + "</div></div></div></a>")
    })
};