.class final Ldea$4$1;
.super Ljava/lang/Object;
.source "ChatSendPresenter.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldea$4;
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
        "Lcom/alibaba/wukong/im/Message;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic b:Ldea$4;


# direct methods
.method constructor <init>(Ldea$4;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p1, "this$1"    # Ldea$4;

    .prologue
    .line 715
    iput-object p1, p0, Ldea$4$1;->b:Ldea$4;

    iput-object p2, p0, Ldea$4$1;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;

    .prologue
    .line 791
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 715
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 715
    check-cast p1, Lcom/alibaba/wukong/im/Message;

    .line 1718
    if-eqz p1, :cond_0

    .line 1720
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->recallStatus()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1721
    iget-object v0, p0, Ldea$4$1;->b:Ldea$4;

    iget-object v0, v0, Ldea$4;->d:Ldea;

    .line 2095
    iget-object v0, v0, Ldea;->b:Lddz$b;

    .line 1721
    invoke-interface {v0}, Lddz$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1722
    iget-object v0, p0, Ldea$4$1;->b:Ldea$4;

    iget-object v0, v0, Ldea$4;->d:Ldea;

    .line 3095
    iget-object v0, v0, Ldea;->b:Lddz$b;

    .line 1722
    const-string/jumbo v1, ""

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lctk$i;->msg_forward_failed_recall:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lddz$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 1732
    :cond_0
    :goto_0
    return-void

    .line 1728
    :cond_1
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->shieldStatus()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1729
    iget-object v0, p0, Ldea$4$1;->b:Ldea$4;

    iget-object v0, v0, Ldea$4;->d:Ldea;

    .line 4095
    iget-object v0, v0, Ldea;->b:Lddz$b;

    .line 1729
    invoke-interface {v0}, Lddz$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1730
    iget-object v0, p0, Ldea$4$1;->b:Ldea$4;

    iget-object v0, v0, Ldea$4;->d:Ldea;

    .line 5095
    iget-object v0, v0, Ldea;->b:Lddz$b;

    .line 1730
    const-string/jumbo v1, ""

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lctk$i;->dt_message_shielded_tip:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lddz$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1736
    :cond_2
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_3

    .line 1737
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_6

    .line 1738
    :cond_3
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;

    .line 1739
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->size()I

    move-result v1

    if-lez v1, :cond_9

    .line 1740
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->contents()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;

    .line 1741
    const-class v1, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->url()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->title()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->text()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->picUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/alibaba/wukong/im/MessageBuilder;->buildLinkedMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 1747
    :goto_2
    iget-object v0, p0, Ldea$4$1;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    cmp-long v0, v2, v4

    if-nez v0, :cond_4

    .line 1748
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;I)Lcom/alibaba/wukong/im/Message;

    .line 1750
    :cond_4
    invoke-static {}, Ldho;->a()Ldho;

    move-result-object v0

    iget-object v2, p0, Ldea$4$1;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v0, v2}, Ldho;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1751
    new-instance v2, Lcom/alibaba/wukong/im/MessageSendInfo;

    invoke-direct {v2}, Lcom/alibaba/wukong/im/MessageSendInfo;-><init>()V

    .line 1752
    sget-object v0, Lcom/alibaba/wukong/im/Message$MessageType;->ENCRYPT:Lcom/alibaba/wukong/im/Message$MessageType;

    iput-object v0, v2, Lcom/alibaba/wukong/im/MessageSendInfo;->messageType:Lcom/alibaba/wukong/im/Message$MessageType;

    .line 1753
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->extension()Ljava/util/Map;

    move-result-object v0

    iput-object v0, v2, Lcom/alibaba/wukong/im/MessageSendInfo;->extension:Ljava/util/Map;

    .line 1754
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/MessageSendInfo;)Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    .line 1756
    :cond_5
    iget-object v2, p0, Ldea$4$1;->a:Lcom/alibaba/wukong/im/Conversation;

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Ldea$4$1$1;

    invoke-direct {v3, p0}, Ldea$4$1$1;-><init>(Ldea$4$1;)V

    const-class v4, Lcom/alibaba/wukong/Callback;

    iget-object v5, p0, Ldea$4$1;->b:Ldea$4;

    iget-object v5, v5, Ldea$4;->d:Ldea;

    .line 6095
    iget-object v5, v5, Ldea;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 1756
    invoke-interface {v0, v3, v4, v5}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    invoke-interface {v1, v2, v0}, Lcom/alibaba/wukong/im/Message;->sendTo(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/Callback;)V

    goto/16 :goto_0

    .line 1743
    :cond_6
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    const/16 v1, 0x12d

    if-eq v0, v1, :cond_7

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    const/16 v1, 0x12c

    if-ne v0, v1, :cond_8

    .line 1744
    :cond_7
    invoke-static {p1}, Ldrp;->b(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    move-object v1, v0

    goto :goto_2

    :cond_8
    move-object v1, p1

    goto/16 :goto_2

    :cond_9
    move-object v0, p1

    goto/16 :goto_1
.end method
