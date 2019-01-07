.class final Laxf$2;
.super Ljava/lang/Object;
.source "HeaderEventHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laxf;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laxf;


# direct methods
.method constructor <init>(Laxf;)V
    .locals 0
    .param p1, "this$0"    # Laxf;

    .prologue
    .line 57
    iput-object p1, p0, Laxf$2;->a:Laxf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/16 v9, 0xe

    const/16 v8, 0xd

    const/16 v7, 0xc

    const/16 v6, 0xb

    .line 60
    const/4 v3, 0x0

    .line 62
    .local v3, "scheduleCreateModel":Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;
    iget-object v4, p0, Laxf$2;->a:Laxf;

    iget-object v4, v4, Laxf;->d:Lawv;

    instance-of v4, v4, Lawt;

    if-eqz v4, :cond_0

    .line 63
    invoke-static {}, Lavu;->a()Ljava/util/Calendar;

    move-result-object v1

    .line 64
    .local v1, "calendar":Ljava/util/Calendar;
    iget-object v4, p0, Laxf$2;->a:Laxf;

    iget-object v4, v4, Laxf;->d:Lawv;

    check-cast v4, Lawt;

    .line 1030
    iget-wide v4, v4, Lawt;->b:J

    .line 64
    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 66
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 67
    .local v2, "calendarNow":Ljava/util/Calendar;
    invoke-static {}, Lcms;->u()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 69
    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v6, v4}, Ljava/util/Calendar;->set(II)V

    .line 70
    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v7, v4}, Ljava/util/Calendar;->set(II)V

    .line 71
    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v8, v4}, Ljava/util/Calendar;->set(II)V

    .line 72
    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v9, v4}, Ljava/util/Calendar;->set(II)V

    .line 74
    new-instance v0, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel$a;

    invoke-direct {v0}, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel$a;-><init>()V

    .line 75
    .local v0, "builder":Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel$a;
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 1183
    iput-object v4, v0, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel$a;->c:Ljava/lang/Long;

    .line 76
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x36ee80

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 1188
    iput-object v4, v0, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel$a;->d:Ljava/lang/Long;

    .line 77
    invoke-virtual {v0}, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel$a;->a()Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;

    move-result-object v3

    .line 80
    .end local v0    # "builder":Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel$a;
    .end local v1    # "calendar":Ljava/util/Calendar;
    .end local v2    # "calendarNow":Ljava/util/Calendar;
    :cond_0
    iget-object v4, p0, Laxf$2;->a:Laxf;

    iget-object v4, v4, Laxf;->b:Landroid/app/Activity;

    invoke-static {v4, v3}, Lavr;->a(Landroid/app/Activity;Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;)V

    .line 1204
    const-string/jumbo v4, "ding_calendar_create_click"

    invoke-static {v4}, Lavw;->a(Ljava/lang/String;)V

    .line 82
    return-void
.end method
