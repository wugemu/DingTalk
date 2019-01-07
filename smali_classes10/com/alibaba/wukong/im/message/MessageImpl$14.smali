.class final Lcom/alibaba/wukong/im/message/MessageImpl$14;
.super Liae;
.source "MessageImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wukong/im/message/MessageImpl;->translateVoice(Lcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Liae",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/message/MessageImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/wukong/im/message/MessageImpl;
    .param p3, "needAfterRpc"    # Z
    .param p4, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 1567
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Ljava/lang/Void;>;"
    iput-object p1, p0, Lcom/alibaba/wukong/im/message/MessageImpl$14;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p4}, Liae;-><init>(Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final synthetic onExecuteRpc(Ljava/lang/Object;Lcom/alibaba/wukong/Callback;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 1567
    .line 2570
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageRpc()Libz;

    move-result-object v7

    iget-object v8, p0, Lcom/alibaba/wukong/im/message/MessageImpl$14;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 2678
    if-nez v8, :cond_1

    .line 2679
    if-eqz p2, :cond_0

    .line 2680
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR message is null"

    invoke-interface {p2, v0, v1}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2715
    :cond_0
    :goto_0
    return-void

    .line 2684
    :cond_1
    invoke-virtual {v8}, Lcom/alibaba/wukong/im/message/MessageImpl;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    if-nez v1, :cond_2

    .line 2685
    if-eqz p2, :cond_0

    .line 2686
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR conversation is null"

    invoke-interface {p2, v0, v1}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2690
    :cond_2
    invoke-virtual {v8}, Lcom/alibaba/wukong/im/message/MessageImpl;->status()Lcom/alibaba/wukong/im/Message$MessageStatus;

    move-result-object v1

    sget-object v2, Lcom/alibaba/wukong/im/Message$MessageStatus;->SENT:Lcom/alibaba/wukong/im/Message$MessageStatus;

    if-eq v1, v2, :cond_3

    .line 2691
    if-eqz p2, :cond_0

    .line 2692
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR message is not sent"

    invoke-interface {p2, v0, v1}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2696
    :cond_3
    iget-object v1, v8, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageContent:Lcom/alibaba/wukong/im/MessageContent;

    if-nez v1, :cond_4

    .line 2697
    if-eqz p2, :cond_0

    .line 2698
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR message content is null"

    invoke-interface {p2, v0, v1}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2702
    :cond_4
    iget-object v1, v8, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageContent:Lcom/alibaba/wukong/im/MessageContent;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    iget-object v1, v8, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageContent:Lcom/alibaba/wukong/im/MessageContent;

    .line 2703
    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v1

    const/16 v2, 0xcc

    if-eq v1, v2, :cond_5

    .line 2704
    if-eqz p2, :cond_0

    .line 2705
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR message content is not audio"

    invoke-interface {p2, v0, v1}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2728
    :cond_5
    if-eqz v8, :cond_6

    invoke-virtual {v8}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    if-nez v1, :cond_7

    :cond_6
    move-object v1, v0

    .line 2711
    :goto_1
    if-nez v1, :cond_a

    .line 2712
    if-eqz p2, :cond_0

    .line 2713
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERRbuild TranslateUploadModel null"

    invoke-interface {p2, v0, v1}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2733
    :cond_7
    iget-object v1, v8, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageContent:Lcom/alibaba/wukong/im/MessageContent;

    instance-of v1, v1, Lcom/alibaba/wukong/im/MessageContent$AudioContent;

    if-eqz v1, :cond_8

    .line 2734
    iget-object v0, v8, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageContent:Lcom/alibaba/wukong/im/MessageContent;

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$AudioContent;

    .line 2735
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$AudioContent;->duration()J

    move-result-wide v4

    .line 2736
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$AudioContent;->url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2737
    iget-wide v2, v8, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    .line 2738
    invoke-virtual {v8}, Lcom/alibaba/wukong/im/message/MessageImpl;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    .line 2748
    :goto_2
    new-instance v6, Lcom/alibaba/wukong/idl/translate/models/TranslateUploadModel;

    invoke-direct {v6}, Lcom/alibaba/wukong/idl/translate/models/TranslateUploadModel;-><init>()V

    .line 2749
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v9, "_"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/alibaba/wukong/idl/translate/models/TranslateUploadModel;->entityId:Ljava/lang/String;

    .line 2750
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v6, Lcom/alibaba/wukong/idl/translate/models/TranslateUploadModel;->entityType:Ljava/lang/Integer;

    .line 2751
    iput-object v1, v6, Lcom/alibaba/wukong/idl/translate/models/TranslateUploadModel;->mediaId:Ljava/lang/String;

    .line 2752
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v6, Lcom/alibaba/wukong/idl/translate/models/TranslateUploadModel;->duration:Ljava/lang/Long;

    .line 2753
    invoke-virtual {v8}, Lcom/alibaba/wukong/im/message/MessageImpl;->senderId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v6, Lcom/alibaba/wukong/idl/translate/models/TranslateUploadModel;->senderId:Ljava/lang/Long;

    move-object v1, v6

    .line 2754
    goto :goto_1

    .line 2739
    :cond_8
    iget-object v1, v8, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageContent:Lcom/alibaba/wukong/im/MessageContent;

    instance-of v1, v1, Lcom/alibaba/wukong/im/MessageContent$EncryptAudioContent;

    if-eqz v1, :cond_9

    .line 2740
    iget-object v0, v8, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageContent:Lcom/alibaba/wukong/im/MessageContent;

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$EncryptAudioContent;

    .line 2741
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$EncryptAudioContent;->duration()J

    move-result-wide v4

    .line 2742
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$EncryptAudioContent;->url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2743
    iget-wide v2, v8, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    .line 2744
    invoke-virtual {v8}, Lcom/alibaba/wukong/im/message/MessageImpl;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_9
    move-object v1, v0

    .line 2746
    goto/16 :goto_1

    .line 2717
    :cond_a
    new-instance v2, Libz$8;

    invoke-direct {v2, v7, p2}, Libz$8;-><init>(Libz;Lcom/alibaba/wukong/Callback;)V

    .line 2724
    const-class v0, Lcom/alibaba/wukong/idl/translate/client/TranslateIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/idl/translate/client/TranslateIService;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/idl/translate/client/TranslateIService;->translate(Lcom/alibaba/wukong/idl/translate/models/TranslateUploadModel;Liyv;)V

    goto/16 :goto_0
.end method
