.class final Lapn$1;
.super Landroid/content/BroadcastReceiver;
.source "BaseSchedulePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lapn;


# direct methods
.method constructor <init>(Lapn;)V
    .locals 0
    .param p1, "this$0"    # Lapn;

    .prologue
    .line 231
    iput-object p1, p0, Lapn$1;->a:Lapn;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    .line 234
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v4, "ding create event: receiver_action:"

    aput-object v4, v1, v6

    const/4 v4, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 235
    const-string/jumbo v1, "com.workapp.ding.choose.event.remind.mode"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 236
    iget-object v1, p0, Lapn$1;->a:Lapn;

    const-string/jumbo v4, "intent_key_remind_mode_index"

    invoke-static {p2, v4, v6}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v4

    iput v4, v1, Lapn;->f:I

    .line 237
    iget-object v1, p0, Lapn$1;->a:Lapn;

    const-string/jumbo v4, "intent_key_remind_type_value"

    sget-object v5, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->APP:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    .line 238
    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->getValue()I

    move-result v5

    .line 237
    invoke-static {p2, v4, v5}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->fromValue(I)Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    move-result-object v4

    iput-object v4, v1, Lapn;->g:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    .line 239
    const-string/jumbo v1, "intent_key_menu_seed"

    invoke-virtual {p2, v1, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 240
    .local v2, "menuSeed":J
    iget-object v1, p0, Lapn$1;->a:Lapn;

    .line 1033
    iget-wide v4, v1, Lapn;->i:J

    .line 240
    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 254
    .end local v2    # "menuSeed":J
    :cond_0
    :goto_0
    return-void

    .line 244
    .restart local v2    # "menuSeed":J
    :cond_1
    iget-object v1, p0, Lapn$1;->a:Lapn;

    .line 2033
    invoke-virtual {v1}, Lapn;->b()V

    goto :goto_0

    .line 245
    .end local v2    # "menuSeed":J
    :cond_2
    const-string/jumbo v1, "com.workapp.ding.choose.repeat.mode"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    const-string/jumbo v1, "intent_key_repeat_mode_data"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 247
    .local v0, "data":Ljava/io/Serializable;
    const-string/jumbo v1, "intent_key_menu_seed"

    invoke-virtual {p2, v1, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 248
    .restart local v2    # "menuSeed":J
    iget-object v1, p0, Lapn$1;->a:Lapn;

    .line 3033
    iget-wide v4, v1, Lapn;->i:J

    .line 248
    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    instance-of v1, v0, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    if-eqz v1, :cond_0

    .line 251
    iget-object v1, p0, Lapn$1;->a:Lapn;

    check-cast v0, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    .end local v0    # "data":Ljava/io/Serializable;
    iput-object v0, v1, Lapn;->e:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    .line 252
    iget-object v1, p0, Lapn$1;->a:Lapn;

    iget-object v1, v1, Lapn;->j:Lapq$c;

    iget-object v4, p0, Lapn$1;->a:Lapn;

    iget-object v4, v4, Lapn;->e:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    invoke-interface {v1, v4}, Lapq$c;->a(Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;)V

    goto :goto_0
.end method
