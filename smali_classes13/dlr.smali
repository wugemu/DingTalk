.class public final Ldlr;
.super Ldlv;
.source "ForwardBatchEncryptTextTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldlv",
        "<",
        "Lcom/alibaba/wukong/im/Message;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ldlv;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ldlm;)V
    .locals 8
    .param p1, "params"    # Ldlm;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 30
    if-nez p1, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    invoke-virtual {p1}, Ldlm;->b()Z

    move-result v6

    if-nez v6, :cond_2

    .line 34
    invoke-virtual {p0, p1}, Ldlr;->b(Ldlm;)V

    goto :goto_0

    .line 37
    :cond_2
    instance-of v6, p1, Ldln;

    if-nez v6, :cond_3

    .line 38
    const-string/jumbo v6, "Params must be ForwardSingleParams"

    invoke-static {p1, v6}, Ldlr;->a(Ldlm;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v4, p1

    .line 42
    check-cast v4, Ldln;

    .line 43
    .local v4, "singleParams":Ldln;
    iget-object v2, v4, Ldln;->c:Ljava/lang/Object;

    check-cast v2, Lcom/alibaba/wukong/im/Message;

    .line 45
    .local v2, "message":Lcom/alibaba/wukong/im/Message;
    const/4 v1, 0x0

    .line 46
    .local v1, "content":Ljava/lang/String;
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v6

    instance-of v6, v6, Lcom/alibaba/wukong/im/MessageContent$TextContent;

    if-eqz v6, :cond_4

    .line 47
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v5

    check-cast v5, Lcom/alibaba/wukong/im/MessageContent$TextContent;

    .line 48
    .local v5, "textContent":Lcom/alibaba/wukong/im/MessageContent$TextContent;
    invoke-interface {v5}, Lcom/alibaba/wukong/im/MessageContent$TextContent;->text()Ljava/lang/String;

    move-result-object v1

    .line 50
    .end local v5    # "textContent":Lcom/alibaba/wukong/im/MessageContent$TextContent;
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 54
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->atOpenIds()Ljava/util/Map;

    move-result-object v0

    .line 55
    .local v0, "atUidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-static {v1, v0}, Lcpt;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 56
    new-instance v3, Ldiz;

    iget-object v6, p1, Ldlm;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {v3, v6}, Ldiz;-><init>(Lcom/alibaba/wukong/im/Conversation;)V

    .line 57
    .local v3, "messageSender":Ldiz;
    new-instance v6, Ldlr$1;

    invoke-direct {v6, p0, p1}, Ldlr$1;-><init>(Ldlr;Ldlm;)V

    .line 1131
    iput-object v6, v3, Ldiz;->b:Ldiz$a;

    .line 1413
    invoke-virtual {v3, v1, v7, v7}, Ldiz;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Z

    goto :goto_0
.end method
