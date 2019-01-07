.class final Laps$6;
.super Ljava/lang/Object;
.source "ScheduleDetailPresenterImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

.field final synthetic c:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

.field final synthetic d:Laps;


# direct methods
.method constructor <init>(Laps;ILcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;)V
    .locals 0
    .param p1, "this$0"    # Laps;

    .prologue
    .line 398
    iput-object p1, p0, Laps$6;->d:Laps;

    iput p2, p0, Laps$6;->a:I

    iput-object p3, p0, Laps$6;->b:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    iput-object p4, p0, Laps$6;->c:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 412
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[ScheduleDetailPresenterImpl] updateAlert calendarId="

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Laps$6;->d:Laps;

    .line 414
    invoke-static {v2}, Laps;->b(Laps;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", eventId="

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Laps$6;->d:Laps;

    invoke-static {v2}, Laps;->h(Laps;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, ", code="

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object p1, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, ", reason="

    aput-object v2, v0, v1

    const/4 v1, 0x7

    aput-object p2, v0, v1

    .line 413
    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 415
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 398
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 398
    .line 1402
    sget v0, Laow$f;->dt_calendar_schedule_modify_success:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1404
    iget-object v0, p0, Laps$6;->d:Laps;

    iget v1, p0, Laps$6;->a:I

    invoke-static {v0, v1}, Laps;->a(Laps;I)I

    .line 1405
    iget-object v0, p0, Laps$6;->d:Laps;

    iget-object v1, p0, Laps$6;->b:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    invoke-static {v0, v1}, Laps;->a(Laps;Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;)Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    .line 1407
    iget-object v0, p0, Laps$6;->d:Laps;

    invoke-static {v0}, Laps;->a(Laps;)Lapr$b;

    move-result-object v0

    iget-object v1, p0, Laps$6;->c:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

    iget-object v2, p0, Laps$6;->d:Laps;

    invoke-static {v2}, Laps;->g(Laps;)Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lapr$b;->a(Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;)V

    .line 398
    return-void
.end method
