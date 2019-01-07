.class public interface abstract Lcom/alibaba/android/oa/rpc/CalendarService;
.super Ljava/lang/Object;
.source "CalendarService.java"


# virtual methods
.method public abstract cancelSubscribeOrgEmpMessagePush(JLcma;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getDayManagerCalDetails(JJJLjava/lang/String;Ljava/lang/String;IIILcma;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getDaySubDeptManagerCalStatistics(JJJLjava/lang/String;Ljava/lang/String;IIILcma;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getManagerCalDayFullInfos(JJJLcma;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Lcma",
            "<",
            "Lcom/alibaba/android/oa/model/calendar/ManagerCalendarDayObject;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getManagerCalFullInfos(JJJJJZLcma;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJJJZ",
            "Lcma",
            "<",
            "Lcom/alibaba/android/oa/model/calendar/ManagerCalendarObject;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getManagerCalendarOrgData(JJZLcma;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJZ",
            "Lcma",
            "<",
            "Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getManagerCalendarPersonalData(JLcma;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcma",
            "<",
            "Lcom/alibaba/android/oa/model/calendar/ManagerCalendarDayObject;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getNodesFromDirectDeptOneDay(JJJLjava/lang/String;Ljava/lang/String;IIILcma;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lefz;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract getOrgEmpManagerCalSetting(JLcma;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcma",
            "<",
            "Lega;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getUserNodesFromCurDeptOneDay(JJJLjava/lang/String;Ljava/lang/String;IIIZLcma;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIZ",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lefz;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract subscribeOrgEmpMessagePush(JLcma;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method
