.class final Lazx$1;
.super Landroid/content/BroadcastReceiver;
.source "DingCreateActivityV2BasePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lazx;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lazx;


# direct methods
.method constructor <init>(Lazx;)V
    .locals 0
    .param p1, "this$0"    # Lazx;

    .prologue
    .line 275
    iput-object p1, p0, Lazx$1;->a:Lazx;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v4, 0x0

    const-wide/16 v8, 0x0

    const/4 v1, 0x1

    .line 278
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "ding config: receiver_action:"

    aput-object v6, v5, v4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v5}, Lbkd;->a([Ljava/lang/String;)V

    .line 279
    const-string/jumbo v5, "com.workapp.ding.choose.deadline.remind.type"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 280
    iget-object v1, p0, Lazx$1;->a:Lazx;

    const-string/jumbo v4, "intent_key_deadline_remind_type"

    invoke-virtual {p2, v4, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;->fromValue(J)Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;

    move-result-object v4

    invoke-virtual {v1, v4}, Lazx;->a(Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;)V

    .line 281
    iget-object v1, p0, Lazx$1;->a:Lazx;

    const-string/jumbo v4, "intent_key_task_remind_type"

    sget-object v5, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->APP:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    .line 283
    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->getValue()I

    move-result v5

    .line 282
    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 281
    invoke-static {v4}, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->fromValue(I)Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    move-result-object v4

    iput-object v4, v1, Lazx;->u:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    .line 284
    iget-object v1, p0, Lazx$1;->a:Lazx;

    iget-object v1, v1, Lazx;->y:Lazy$b;

    invoke-interface {v1}, Lazy$b;->o()V

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    const-string/jumbo v5, "com.workapp.ding.choose.repeat.mode"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 286
    const-string/jumbo v1, "intent_key_repeat_mode_data"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 287
    .local v0, "data":Ljava/io/Serializable;
    const-string/jumbo v1, "intent_key_menu_seed"

    invoke-virtual {p2, v1, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 288
    .local v2, "menuSeed":J
    iget-object v1, p0, Lazx$1;->a:Lazx;

    .line 1049
    iget-wide v4, v1, Lazx;->x:J

    .line 288
    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    instance-of v1, v0, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    if-eqz v1, :cond_0

    .line 291
    iget-object v1, p0, Lazx$1;->a:Lazx;

    check-cast v0, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    .end local v0    # "data":Ljava/io/Serializable;
    iput-object v0, v1, Lazx;->z:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    .line 292
    iget-object v1, p0, Lazx$1;->a:Lazx;

    iget-object v1, v1, Lazx;->y:Lazy$b;

    invoke-interface {v1}, Lazy$b;->l()V

    goto :goto_0

    .line 293
    .end local v2    # "menuSeed":J
    :cond_2
    const-string/jumbo v5, "com.workapp.ding.choose.group_task_board"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 295
    const-string/jumbo v5, "intent_key_group_task_board"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 296
    .restart local v0    # "data":Ljava/io/Serializable;
    const-string/jumbo v5, "intent_key_menu_seed"

    invoke-virtual {p2, v5, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 297
    .restart local v2    # "menuSeed":J
    iget-object v5, p0, Lazx$1;->a:Lazx;

    .line 2049
    iget-wide v6, v5, Lazx;->x:J

    .line 297
    cmp-long v5, v2, v6

    if-nez v5, :cond_0

    instance-of v5, v0, Lcom/alibaba/android/ding/data/object/ConversationBoardObject;

    if-eqz v5, :cond_0

    .line 300
    iget-object v5, p0, Lazx$1;->a:Lazx;

    check-cast v0, Lcom/alibaba/android/ding/data/object/ConversationBoardObject;

    .end local v0    # "data":Ljava/io/Serializable;
    iput-object v0, v5, Lazx;->A:Lcom/alibaba/android/ding/data/object/ConversationBoardObject;

    .line 301
    iget-object v5, p0, Lazx$1;->a:Lazx;

    iget-object v5, v5, Lazx;->y:Lazy$b;

    iget-object v6, p0, Lazx$1;->a:Lazx;

    iget-object v6, v6, Lazx;->A:Lcom/alibaba/android/ding/data/object/ConversationBoardObject;

    invoke-virtual {v6}, Lcom/alibaba/android/ding/data/object/ConversationBoardObject;->getName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lazx$1;->a:Lazx;

    iget-object v7, v7, Lazx;->B:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v1, :cond_3

    :goto_1
    invoke-interface {v5, v6, v1}, Lazy$b;->a(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    move v1, v4

    goto :goto_1
.end method
