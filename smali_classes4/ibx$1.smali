.class final Libx$1;
.super Ljava/lang/Object;
.source "MessageMediaSender.java"

# interfaces
.implements Lifv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Libx;->a(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/im/SendNameAppender;Lcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lifv",
        "<",
        "Lifx;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/message/MessageImpl;

.field final synthetic b:Lcom/alibaba/wukong/Callback;

.field final synthetic c:Lhzs$a;

.field final synthetic d:Lcom/alibaba/wukong/im/message/MessageContentImpl$MediaContentImpl;

.field final synthetic e:Libq;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcom/alibaba/wukong/im/SendNameAppender;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/Callback;Lhzs$a;Lcom/alibaba/wukong/im/message/MessageContentImpl$MediaContentImpl;Libq;Ljava/lang/String;Lcom/alibaba/wukong/im/SendNameAppender;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Libx$1;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    iput-object p2, p0, Libx$1;->b:Lcom/alibaba/wukong/Callback;

    iput-object p3, p0, Libx$1;->c:Lhzs$a;

    iput-object p4, p0, Libx$1;->d:Lcom/alibaba/wukong/im/message/MessageContentImpl$MediaContentImpl;

    iput-object p5, p0, Libx$1;->e:Libq;

    iput-object p6, p0, Libx$1;->f:Ljava/lang/String;

    iput-object p7, p0, Libx$1;->g:Lcom/alibaba/wukong/im/SendNameAppender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(ILjava/lang/String;)V
    .locals 4
    .param p1, "errorCode"    # I
    .param p2, "errorDesc"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 164
    const-string/jumbo v0, "[TAG] MsgSender"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "uploadStream err "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1022
    const-string/jumbo v2, "im"

    invoke-static {v0, v1, v2}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string/jumbo v0, "Upload"

    const-string/jumbo v1, "Stream"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-static {v0, v1, v2, v3}, Lhzs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Libx$1;->b:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Libx$1;->e:Libq;

    .line 1100
    iget v0, v0, Libq;->b:I

    .line 167
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 168
    iget-object v0, p0, Libx$1;->b:Lcom/alibaba/wukong/Callback;

    const-string/jumbo v1, "101010"

    const-string/jumbo v2, "CANCELED_ERR"

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    iget-object v0, p0, Libx$1;->b:Lcom/alibaba/wukong/Callback;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(JJI)V
    .locals 2
    .param p1, "totalSize"    # J
    .param p3, "uploadSize"    # J
    .param p5, "progress"    # I

    .prologue
    .line 105
    iget-object v0, p0, Libx$1;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    iput p5, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mSendProgress:I

    .line 106
    const/16 v0, 0x64

    if-lt p5, v0, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    iget-object v0, p0, Libx$1;->b:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Libx$1;->b:Lcom/alibaba/wukong/Callback;

    iget-object v1, p0, Libx$1;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    invoke-interface {v0, v1, p5}, Lcom/alibaba/wukong/Callback;->onProgress(Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 102
    check-cast p1, Lifx;

    .line 1115
    const-string/jumbo v0, "[TAG] MsgSender"

    const-string/jumbo v1, "uploadStream suc"

    .line 2018
    const-string/jumbo v2, "im"

    invoke-static {v0, v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    const-string/jumbo v0, "Upload"

    const-string/jumbo v1, "Stream"

    invoke-static {v0, v1}, Lhzs;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1118
    const-string/jumbo v1, "uploadType"

    const-string/jumbo v2, "stream"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    iget-object v1, p0, Libx$1;->c:Lhzs$a;

    invoke-virtual {v1, v0}, Lhzs$a;->a(Ljava/util/Map;)V

    .line 1120
    iget-object v0, p0, Libx$1;->d:Lcom/alibaba/wukong/im/message/MessageContentImpl$MediaContentImpl;

    .line 2026
    iget-object v1, p1, Lifx;->a:Ljava/lang/String;

    .line 1120
    invoke-static {v1}, Libt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/im/message/MessageContentImpl$MediaContentImpl;->mUrl:Ljava/lang/String;

    .line 1121
    iget-object v0, p0, Libx$1;->d:Lcom/alibaba/wukong/im/message/MessageContentImpl$MediaContentImpl;

    .line 2034
    iget-object v1, p1, Lifx;->b:Ljava/lang/String;

    .line 1121
    invoke-static {v1}, Libt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/im/message/MessageContentImpl$MediaContentImpl;->mAuthUrl:Ljava/lang/String;

    .line 1122
    iget-object v0, p0, Libx$1;->e:Libq;

    .line 2100
    iget v0, v0, Libq;->b:I

    .line 1122
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1123
    iget-object v0, p0, Libx$1;->b:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 1124
    iget-object v0, p0, Libx$1;->b:Lcom/alibaba/wukong/Callback;

    const-string/jumbo v1, "101010"

    const-string/jumbo v2, "CANCELED_ERR"

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    :cond_0
    :goto_0
    return-void

    .line 1127
    :cond_1
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v0

    iget-object v1, p0, Libx$1;->f:Ljava/lang/String;

    iget-object v2, p0, Libx$1;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v3, p0, Libx$1;->d:Lcom/alibaba/wukong/im/message/MessageContentImpl$MediaContentImpl;

    invoke-virtual {v0, v1, v2, v3}, Libs;->b(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/im/MessageContent;)Z

    .line 1128
    iget-object v0, p0, Libx$1;->b:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_2

    .line 1129
    iget-object v0, p0, Libx$1;->b:Lcom/alibaba/wukong/Callback;

    iget-object v1, p0, Libx$1;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/Callback;->onProgress(Ljava/lang/Object;I)V

    .line 1130
    :cond_2
    iget-object v0, p0, Libx$1;->g:Lcom/alibaba/wukong/im/SendNameAppender;

    if-eqz v0, :cond_3

    .line 1131
    iget-object v0, p0, Libx$1;->g:Lcom/alibaba/wukong/im/SendNameAppender;

    iget-object v1, p0, Libx$1;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/message/MessageImpl;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    new-instance v2, Libx$1$1;

    invoke-direct {v2, p0}, Libx$1$1;-><init>(Libx$1;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/im/SendNameAppender;->getSendName(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0

    .line 1157
    :cond_3
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageRpc()Libz;

    move-result-object v0

    iget-object v1, p0, Libx$1;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v2, p0, Libx$1;->b:Lcom/alibaba/wukong/Callback;

    invoke-virtual {v0, v1, v2}, Libz;->a(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method
