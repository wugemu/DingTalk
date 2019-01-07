.class final Lbxo$11;
.super Landroid/content/BroadcastReceiver;
.source "AnchorPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbxo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbxo;


# direct methods
.method constructor <init>(Lbxo;)V
    .locals 0
    .param p1, "this$0"    # Lbxo;

    .prologue
    .line 424
    iput-object p1, p0, Lbxo$11;->a:Lbxo;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 427
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 428
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v5, "intent_action_link_live_cids_changed"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 429
    const-string/jumbo v5, "conversation_ids"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 430
    .local v1, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Lbxo$11;->a:Lbxo;

    .line 1059
    iget-object v5, v5, Lbxo;->a:Lbxn$b;

    .line 430
    invoke-interface {v5}, Lbxn$b;->f()Lcom/taobao/taolive/sdk/component/ChatFrame;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 431
    iget-object v5, p0, Lbxo$11;->a:Lbxo;

    .line 2059
    iget-object v5, v5, Lbxo;->a:Lbxn$b;

    .line 431
    invoke-interface {v5}, Lbxn$b;->f()Lcom/taobao/taolive/sdk/component/ChatFrame;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/taobao/taolive/sdk/component/ChatFrame;->setLiveLinkCids(Ljava/util/List;)V

    .line 434
    :cond_0
    iget-object v5, p0, Lbxo$11;->a:Lbxo;

    .line 3059
    iget v5, v5, Lbxo;->b:I

    .line 434
    if-eq v5, v6, :cond_1

    .line 435
    invoke-static {}, Lbtq;->a()Lbtq;

    move-result-object v5

    .line 3086
    iget-object v2, v5, Lbtq;->f:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    .line 436
    .local v2, "liveInfo":Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;
    if-eqz v2, :cond_1

    iget-object v5, v2, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->shareToCids:Ljava/util/List;

    if-eqz v5, :cond_1

    iget-object v5, v2, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->shareToCids:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 437
    iget-object v5, p0, Lbxo$11;->a:Lbxo;

    .line 4059
    iput v6, v5, Lbxo;->b:I

    .line 440
    .end local v2    # "liveInfo":Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;
    :cond_1
    iget-object v5, p0, Lbxo$11;->a:Lbxo;

    .line 5059
    iget v5, v5, Lbxo;->b:I

    .line 440
    if-eq v5, v6, :cond_2

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 442
    iget-object v5, p0, Lbxo$11;->a:Lbxo;

    .line 6059
    iput v6, v5, Lbxo;->b:I

    .line 443
    iget-object v5, p0, Lbxo$11;->a:Lbxo;

    .line 7059
    iget-object v5, v5, Lbxo;->a:Lbxn$b;

    .line 443
    invoke-interface {v5}, Lbxn$b;->f()Lcom/taobao/taolive/sdk/component/ChatFrame;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 444
    new-instance v3, Lcom/alibaba/android/dingtalk/live/im/model/LiveMessageObject;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalk/live/im/model/LiveMessageObject;-><init>()V

    .line 445
    .local v3, "object":Lcom/alibaba/android/dingtalk/live/im/model/LiveMessageObject;
    iput v6, v3, Lcom/alibaba/android/dingtalk/live/im/model/LiveMessageObject;->messageType:I

    .line 446
    iput v6, v3, Lcom/alibaba/android/dingtalk/live/im/model/LiveMessageObject;->contentType:I

    .line 447
    invoke-static {}, Lcms;->u()J

    move-result-wide v6

    iput-wide v6, v3, Lcom/alibaba/android/dingtalk/live/im/model/LiveMessageObject;->timestamp:J

    .line 448
    sget v5, Lbtp$g;->dt_lv_change_to_simul_mode:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/alibaba/android/dingtalk/live/im/model/LiveMessageObject;->textContent:Ljava/lang/String;

    .line 450
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 451
    .local v4, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/live/im/model/LiveMessageObject;>;"
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    iget-object v5, p0, Lbxo$11;->a:Lbxo;

    .line 8059
    iget-object v5, v5, Lbxo;->a:Lbxn$b;

    .line 452
    invoke-interface {v5}, Lbxn$b;->f()Lcom/taobao/taolive/sdk/component/ChatFrame;

    move-result-object v5

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/live/im/model/LiveMessageObject;->convert(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/taobao/taolive/sdk/component/ChatFrame;->onGetMessages(Ljava/util/List;)V

    .line 9479
    .end local v1    # "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "object":Lcom/alibaba/android/dingtalk/live/im/model/LiveMessageObject;
    .end local v4    # "objects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/live/im/model/LiveMessageObject;>;"
    :cond_2
    :goto_0
    return-void

    .line 455
    :cond_3
    const-string/jumbo v5, "intent_action_link_live_shared_cids"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 456
    const-string/jumbo v5, "conversation_ids"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 457
    .restart local v1    # "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Lbxo$11;->a:Lbxo;

    .line 9478
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 9482
    const-string/jumbo v6, "generateLiveLinkStartMsg"

    .line 10013
    const-string/jumbo v7, "live"

    const/4 v8, 0x0

    invoke-static {v7, v8, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9483
    new-instance v6, Lbxo$2;

    invoke-direct {v6, v5}, Lbxo$2;-><init>(Lbxo;)V

    .line 9514
    const-class v7, Lcom/alibaba/wukong/Callback;

    iget-object v5, v5, Lbxo;->a:Lbxn$b;

    invoke-interface {v5}, Lbxn$b;->e()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v6, v7, v5}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/wukong/Callback;

    .line 9515
    const-class v6, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v6}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/wukong/im/ConversationService;

    invoke-interface {v6, v5, v1}, Lcom/alibaba/wukong/im/ConversationService;->getConversations(Lcom/alibaba/wukong/Callback;Ljava/util/List;)V

    goto :goto_0
.end method
