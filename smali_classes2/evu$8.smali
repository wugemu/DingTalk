.class final Levu$8;
.super Ljava/lang/Object;
.source "TeleConfNotificationListeners.java"

# interfaces
.implements Lcom/alibaba/wukong/im/MessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Levu;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Levu;


# direct methods
.method constructor <init>(Levu;)V
    .locals 0
    .param p1, "this$0"    # Levu;

    .prologue
    .line 506
    iput-object p1, p0, Levu$8;->a:Levu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdded(Ljava/util/List;Lcom/alibaba/wukong/im/MessageListener$DataType;)V
    .locals 13
    .param p2, "dataType"    # Lcom/alibaba/wukong/im/MessageListener$DataType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;",
            "Lcom/alibaba/wukong/im/MessageListener$DataType;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .local p1, "newMessageList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    const/4 v10, 0x0

    const/4 v12, 0x0

    .line 510
    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_7

    .line 511
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 512
    .local v1, "confMessageList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/im/Message;

    .line 513
    .local v4, "message":Lcom/alibaba/wukong/im/Message;
    if-eqz v4, :cond_0

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 514
    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v9

    invoke-interface {v9}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    .line 515
    .local v0, "cid":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->a(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 516
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 520
    .end local v0    # "cid":Ljava/lang/String;
    .end local v4    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_7

    .line 521
    invoke-static {v1}, Lewp;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 522
    .local v6, "newRecords":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/ConfRecordItem;>;"
    invoke-static {}, Lewx;->h()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 523
    invoke-static {}, Lewl;->a()Lewl;

    invoke-static {}, Lewl;->c()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 524
    invoke-static {v10}, Lewp;->b(Landroid/content/Context;)Z

    move-result v3

    .line 525
    .local v3, "isScreenOn":Z
    invoke-static {v10}, Lewp;->c(Landroid/content/Context;)Z

    move-result v2

    .line 526
    .local v2, "isScreenLocked":Z
    if-nez v2, :cond_2

    if-nez v3, :cond_5

    .line 527
    :cond_2
    if-eqz v6, :cond_5

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    .line 529
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 530
    .local v5, "missedVoIPCalls":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/ConfRecordItem;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    .line 531
    .local v7, "recordItem":Lcom/alibaba/android/teleconf/data/ConfRecordItem;
    if-eqz v7, :cond_3

    .line 534
    invoke-virtual {v7}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isMissedVoIPCall()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 535
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 538
    .end local v7    # "recordItem":Lcom/alibaba/android/teleconf/data/ConfRecordItem;
    :cond_4
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    .line 540
    iget-object v8, p0, Levu$8;->a:Levu;

    invoke-static {v8}, Levu;->a(Levu;)Landroid/content/Context;

    move-result-object v9

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    invoke-static {v9, v8}, Lewb;->a(Landroid/content/Context;Lcom/alibaba/android/teleconf/data/ConfRecordItem;)V

    .line 544
    .end local v5    # "missedVoIPCalls":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/ConfRecordItem;>;"
    :cond_5
    const-string/jumbo v8, "tele_conf"

    invoke-static {}, Levu;->i()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/String;

    const-string/jumbo v11, "Screen state: "

    aput-object v11, v10, v12

    const/4 v11, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string/jumbo v12, ","

    aput-object v12, v10, v11

    const/4 v11, 0x3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v10}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    .end local v2    # "isScreenLocked":Z
    .end local v3    # "isScreenOn":Z
    :cond_6
    iget-object v8, p0, Levu$8;->a:Levu;

    invoke-static {v8}, Levu;->c(Levu;)Levq;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 547
    iget-object v8, p0, Levu$8;->a:Levu;

    invoke-static {v8}, Levu;->c(Levu;)Levq;

    move-result-object v8

    invoke-interface {v8, v6}, Levq;->a(Ljava/util/List;)V

    .line 551
    .end local v1    # "confMessageList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    .end local v6    # "newRecords":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/ConfRecordItem;>;"
    :cond_7
    return-void
.end method

.method public final onChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 561
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    return-void
.end method

.method public final onRemoved(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 556
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    return-void
.end method
