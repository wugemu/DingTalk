.class final Laps$1;
.super Ljava/lang/Object;
.source "ScheduleDetailPresenterImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laps;->a(Landroid/content/Intent;)V
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
        "Lasc;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Laps;


# direct methods
.method constructor <init>(Laps;)V
    .locals 0
    .param p1, "this$0"    # Laps;

    .prologue
    .line 105
    iput-object p1, p0, Laps$1;->a:Laps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 150
    iget-object v0, p0, Laps$1;->a:Laps;

    invoke-static {v0}, Laps;->a(Laps;)Lapr$b;

    move-result-object v0

    invoke-interface {v0}, Lapr$b;->H_()V

    .line 151
    iget-object v0, p0, Laps$1;->a:Laps;

    invoke-static {v0}, Laps;->a(Laps;)Lapr$b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lapr$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Laps$1;->a:Laps;

    invoke-static {v0}, Laps;->a(Laps;)Lapr$b;

    move-result-object v0

    invoke-interface {v0}, Lapr$b;->a()V

    .line 153
    const-string/jumbo v0, "ScheduleDetailPage exception"

    const-string/jumbo v1, "-1"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "query from local failed, calendarId:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Laps$1;->a:Laps;

    .line 155
    invoke-static {v4}, Laps;->b(Laps;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", code:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p1, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, ", reason:"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object p2, v2, v3

    invoke-static {v2}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 153
    invoke-static {v0, v1, v2}, Lawm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v2, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 105
    check-cast p1, Lasc;

    .line 1109
    iget-object v0, p0, Laps$1;->a:Laps;

    invoke-static {v0}, Laps;->a(Laps;)Lapr$b;

    move-result-object v0

    invoke-interface {v0}, Lapr$b;->H_()V

    .line 1111
    if-nez p1, :cond_0

    .line 1112
    const-string/jumbo v0, "ScheduleDetailPage exception"

    const-string/jumbo v1, "-1"

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "calendarObject is null, calendarId:"

    aput-object v3, v2, v4

    iget-object v3, p0, Laps$1;->a:Laps;

    invoke-static {v3}, Laps;->b(Laps;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v2}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lawm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    iget-object v0, p0, Laps$1;->a:Laps;

    invoke-static {v0}, Laps;->a(Laps;)Lapr$b;

    move-result-object v0

    const-string/jumbo v1, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Laow$f;->unknown_error:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lapr$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    iget-object v0, p0, Laps$1;->a:Laps;

    invoke-static {v0}, Laps;->a(Laps;)Lapr$b;

    move-result-object v0

    invoke-interface {v0}, Lapr$b;->a()V

    .line 1129
    :goto_0
    return-void

    .line 1155
    :cond_0
    iget-boolean v0, p1, Lasc;->l:Z

    .line 1118
    if-eqz v0, :cond_1

    .line 1119
    sget v0, Laow$f;->dt_ding_schedule_already_deleted:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1120
    const-string/jumbo v0, "ScheduleDetailPage exception"

    const-string/jumbo v1, "-1"

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "calendarObject is deleted, calendarId:"

    aput-object v3, v2, v4

    iget-object v3, p0, Laps$1;->a:Laps;

    invoke-static {v3}, Laps;->b(Laps;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v2}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lawm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    iget-object v0, p0, Laps$1;->a:Laps;

    invoke-static {v0}, Laps;->a(Laps;)Lapr$b;

    move-result-object v0

    invoke-interface {v0}, Lapr$b;->a()V

    goto :goto_0

    .line 1125
    :cond_1
    invoke-virtual {p1}, Lasc;->a()Lary;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1126
    const-string/jumbo v0, "ScheduleDetailPage exception"

    const-string/jumbo v1, "-1"

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "calendarObject has not main event, calendarId:"

    aput-object v3, v2, v4

    iget-object v3, p0, Laps$1;->a:Laps;

    invoke-static {v3}, Laps;->b(Laps;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v2}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lawm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    iget-object v0, p0, Laps$1;->a:Laps;

    invoke-static {v0}, Laps;->a(Laps;)Lapr$b;

    move-result-object v0

    const-string/jumbo v1, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Laow$f;->unknown_error:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lapr$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    iget-object v0, p0, Laps$1;->a:Laps;

    invoke-static {v0}, Laps;->a(Laps;)Lapr$b;

    move-result-object v0

    invoke-interface {v0}, Lapr$b;->a()V

    goto :goto_0

    .line 1132
    :cond_2
    iget-object v0, p0, Laps$1;->a:Laps;

    invoke-static {v0, p1}, Laps;->a(Laps;Lasc;)Lasc;

    .line 1133
    iget-object v0, p0, Laps$1;->a:Laps;

    invoke-virtual {p1}, Lasc;->a()Lary;

    move-result-object v1

    invoke-static {v0, v1}, Laps;->a(Laps;Lary;)Lary;

    .line 1134
    iget-object v0, p0, Laps$1;->a:Laps;

    iget-object v1, p0, Laps$1;->a:Laps;

    invoke-static {v1}, Laps;->c(Laps;)Lary;

    move-result-object v1

    invoke-virtual {v1}, Lary;->b()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Laps;->a(Laps;J)J

    .line 1136
    iget-object v0, p0, Laps$1;->a:Laps;

    invoke-static {v0}, Laps;->c(Laps;)Lary;

    move-result-object v0

    .line 2081
    iget-object v0, v0, Lary;->g:Ljava/util/List;

    .line 1136
    if-eqz v0, :cond_3

    iget-object v0, p0, Laps$1;->a:Laps;

    invoke-static {v0}, Laps;->c(Laps;)Lary;

    move-result-object v0

    .line 3081
    iget-object v0, v0, Lary;->g:Ljava/util/List;

    .line 1136
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1137
    iget-object v0, p0, Laps$1;->a:Laps;

    invoke-static {v0}, Laps;->c(Laps;)Lary;

    move-result-object v0

    .line 4081
    iget-object v0, v0, Lary;->g:Ljava/util/List;

    .line 1137
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/calendar/data/object/AlarmObject;

    .line 1138
    invoke-virtual {v0}, Lcom/alibaba/android/calendar/data/object/AlarmObject;->getTime()J

    move-result-wide v0

    .line 1139
    invoke-static {v0, v1}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->fromValue(J)Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

    move-result-object v0

    .line 1140
    if-eqz v0, :cond_3

    .line 1141
    iget-object v1, p0, Laps$1;->a:Laps;

    iget-object v2, p0, Laps$1;->a:Laps;

    invoke-static {v2}, Laps;->c(Laps;)Lary;

    move-result-object v2

    invoke-virtual {v2}, Lary;->d()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->convertToModeIndex(Z)I

    move-result v0

    invoke-static {v1, v0}, Laps;->a(Laps;I)I

    .line 1145
    :cond_3
    iget-object v0, p0, Laps$1;->a:Laps;

    invoke-static {v0}, Laps;->a(Laps;)Lapr$b;

    move-result-object v0

    iget-object v1, p0, Laps$1;->a:Laps;

    invoke-static {v1}, Laps;->c(Laps;)Lary;

    move-result-object v1

    invoke-interface {v0, v1}, Lapr$b;->a(Lary;)V

    goto/16 :goto_0
.end method
