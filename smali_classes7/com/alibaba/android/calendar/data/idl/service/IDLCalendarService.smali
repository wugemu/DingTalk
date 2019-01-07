.class public interface abstract Lcom/alibaba/android/calendar/data/idl/service/IDLCalendarService;
.super Ljava/lang/Object;
.source "IDLCalendarService.java"

# interfaces
.implements Lizm;


# annotations
.annotation runtime Lcom/laiwang/idl/AppName;
    value = "DD"
.end annotation


# virtual methods
.method public abstract create(Laqd;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laqd;",
            "Liyv",
            "<",
            "Laqp;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract createCalendarSharers(Laqr;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laqr;",
            "Liyv",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract deleteCalendar(Ljava/lang/Long;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract deleteCalendarShare(Laqr;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laqr;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getReportConfig(Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liyv",
            "<",
            "Laqi;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract listCalendarByVersionModel(Laqo;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laqo;",
            "Liyv",
            "<",
            "Laqf;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract listCalendarNewestByNewestModel(Laql;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laql;",
            "Liyv",
            "<",
            "Laqh;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract listMyFolders(Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liyv",
            "<",
            "Ljava/util/List",
            "<",
            "Laqu;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract listNonRepeatCalendarByNonRepeatModel(Laqm;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laqm;",
            "Liyv",
            "<",
            "Laqf;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract listRepeatCalendarByRepeatModel(Laqn;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laqn;",
            "Liyv",
            "<",
            "Laqf;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract listShareReceivers(Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Ljava/util/List",
            "<",
            "Larb;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract showCalendarEntry(Ljava/lang/Long;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Liyv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract update(Laqs;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laqs;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateAlert(Ljava/lang/Long;Ljava/lang/Long;Ljava/util/List;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lapz;",
            ">;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateCalendarShare(Laqr;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laqr;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateExceptionDate(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract uploadReportData(Ljava/util/List;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Laqj;",
            ">;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method
