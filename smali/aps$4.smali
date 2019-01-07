.class final Laps$4;
.super Landroid/content/BroadcastReceiver;
.source "ScheduleDetailPresenterImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laps;


# direct methods
.method constructor <init>(Laps;)V
    .locals 0
    .param p1, "this$0"    # Laps;

    .prologue
    .line 302
    iput-object p1, p0, Laps$4;->a:Laps;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 305
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "ding create event: receiver_action:"

    aput-object v5, v4, v6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v4}, Lavy;->a([Ljava/lang/String;)V

    .line 307
    const-string/jumbo v4, "com.workapp.ding.choose.event.remind.mode"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 308
    const-string/jumbo v4, "intent_key_remind_mode_index"

    invoke-static {p2, v4, v6}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v2

    .line 309
    .local v2, "remindModeIndex":I
    const-string/jumbo v4, "intent_key_remind_type_value"

    sget-object v5, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->APP:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    .line 310
    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->getValue()I

    move-result v5

    .line 309
    invoke-static {p2, v4, v5}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->fromValue(I)Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    move-result-object v3

    .line 312
    .local v3, "remindType":Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;
    const-string/jumbo v4, "intent_key_menu_seed"

    const-wide/16 v6, 0x0

    invoke-virtual {p2, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 313
    .local v0, "menuSeed":J
    iget-object v4, p0, Laps$4;->a:Laps;

    invoke-static {v4}, Laps;->e(Laps;)J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-eqz v4, :cond_1

    .line 322
    .end local v0    # "menuSeed":J
    .end local v2    # "remindModeIndex":I
    .end local v3    # "remindType":Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;
    :cond_0
    :goto_0
    return-void

    .line 317
    .restart local v0    # "menuSeed":J
    .restart local v2    # "remindModeIndex":I
    .restart local v3    # "remindType":Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;
    :cond_1
    iget-object v4, p0, Laps$4;->a:Laps;

    invoke-static {v4, v2, v3}, Laps;->a(Laps;ILcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;)V

    goto :goto_0

    .line 318
    .end local v0    # "menuSeed":J
    .end local v2    # "remindModeIndex":I
    .end local v3    # "remindType":Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;
    :cond_2
    const-string/jumbo v4, "com.workapp.calendar.reload.instances"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 319
    new-array v4, v7, [Ljava/lang/String;

    const-string/jumbo v5, "[ScheduleDetailPresenterImpl] calendarObject changed"

    aput-object v5, v4, v6

    invoke-static {v4}, Lavy;->a([Ljava/lang/String;)V

    .line 320
    iget-object v4, p0, Laps$4;->a:Laps;

    invoke-static {v4}, Laps;->f(Laps;)V

    goto :goto_0
.end method
