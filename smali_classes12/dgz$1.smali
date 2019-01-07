.class public final Ldgz$1;
.super Ljava/lang/Object;
.source "SubConversationConfigFactory.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldgz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic b:Ldgz$b;

.field final synthetic c:Ldgz;


# direct methods
.method public constructor <init>(Ldgz;Lcom/alibaba/wukong/im/Conversation;Ldgz$b;)V
    .locals 0
    .param p1, "this$0"    # Ldgz;

    .prologue
    .line 91
    iput-object p1, p0, Ldgz$1;->c:Ldgz;

    iput-object p2, p0, Ldgz$1;->a:Lcom/alibaba/wukong/im/Conversation;

    iput-object p3, p0, Ldgz$1;->b:Ldgz$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 113
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "SubConvConfigFactory"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "SubConversationConfigFactory getConfig error!"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    .line 114
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 113
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Ldgz$1;->b:Ldgz$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldgz$1;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Ldgz$1;->b:Ldgz$b;

    iget-object v1, p0, Ldgz$1;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Ldgz$b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_0
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 91
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1094
    if-nez p1, :cond_1

    .line 1095
    :cond_0
    :goto_0
    return-void

    .line 1097
    :cond_1
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->getConfigurationProperty()Ljava/lang/String;

    move-result-object v0

    .line 1098
    invoke-static {v0}, Ldsd;->a(Ljava/lang/String;)Ldsd;

    move-result-object v0

    .line 1100
    if-eqz v0, :cond_2

    .line 1101
    iget-object v1, p0, Ldgz$1;->c:Ldgz;

    .line 2028
    iget-object v1, v1, Ldgz;->a:Lfq;

    .line 1101
    iget-object v2, p0, Ldgz$1;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->getEntranceId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lfq;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1106
    :goto_1
    iget-object v1, p0, Ldgz$1;->b:Ldgz$b;

    if-eqz v1, :cond_0

    .line 1107
    iget-object v1, p0, Ldgz$1;->b:Ldgz$b;

    iget-object v2, p0, Ldgz$1;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ldgz$b;->a(Ljava/lang/String;Ldsd;)V

    goto :goto_0

    .line 1104
    :cond_2
    iget-object v1, p0, Ldgz$1;->c:Ldgz;

    .line 3028
    iget-object v1, v1, Ldgz;->a:Lfq;

    .line 1104
    iget-object v2, p0, Ldgz$1;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->getEntranceId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v3, Ldsd;

    invoke-direct {v3}, Ldsd;-><init>()V

    invoke-virtual {v1, v2, v3}, Lfq;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
