.class public final Libx$d;
.super Libx$b;
.source "MessageMediaSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Libx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field private d:Z


# direct methods
.method public constructor <init>(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/Callback;ZZ)V
    .locals 1
    .param p1, "message"    # Lcom/alibaba/wukong/im/message/MessageImpl;
    .param p3, "notifyChanged"    # Z
    .param p4, "saveOnFailure"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    const/4 v0, 0x1

    .line 455
    invoke-direct {p0, p1, p2, v0}, Libx$b;-><init>(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/Callback;Z)V

    .line 456
    iput-boolean v0, p0, Libx$d;->d:Z

    .line 457
    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorDesc"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 461
    iget-boolean v1, p0, Libx$d;->d:Z

    if-eqz v1, :cond_0

    .line 462
    iget-object v1, p0, Libx$d;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/message/MessageImpl;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    .line 463
    .local v0, "cid":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v1

    iget-object v2, p0, Libx$d;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v3, p0, Libx$d;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v3, v3, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageContent:Lcom/alibaba/wukong/im/MessageContent;

    iget-boolean v4, p0, Libx$d;->c:Z

    invoke-virtual {v1, v0, v2, v3, v4}, Libs;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/im/MessageContent;Z)Z

    .line 466
    .end local v0    # "cid":Ljava/lang/String;
    :cond_0
    invoke-super {p0, p1, p2}, Libx$b;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    return-void
.end method
