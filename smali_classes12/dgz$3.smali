.class final Ldgz$3;
.super Ljava/lang/Object;
.source "SubConversationConfigFactory.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldgz;
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
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:[Ldsd;

.field final synthetic c:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic d:Ldsd;

.field final synthetic e:Ldgz$b;

.field final synthetic f:Ldgz;


# direct methods
.method constructor <init>(Ldgz;[Ljava/lang/String;[Ldsd;Lcom/alibaba/wukong/im/Conversation;Ldsd;Ldgz$b;)V
    .locals 0
    .param p1, "this$0"    # Ldgz;

    .prologue
    .line 173
    iput-object p1, p0, Ldgz$3;->f:Ldgz;

    iput-object p2, p0, Ldgz$3;->a:[Ljava/lang/String;

    iput-object p3, p0, Ldgz$3;->b:[Ldsd;

    iput-object p4, p0, Ldgz$3;->c:Lcom/alibaba/wukong/im/Conversation;

    iput-object p5, p0, Ldgz$3;->d:Ldsd;

    iput-object p6, p0, Ldgz$3;->e:Ldgz$b;

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
    .line 195
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "SubConvConfigFactory"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "getConfig error!"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    .line 196
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 195
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Ldgz$3;->e:Ldgz$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldgz$3;->c:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Ldgz$3;->e:Ldgz$b;

    iget-object v1, p0, Ldgz$3;->c:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Ldgz$b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :cond_0
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 173
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 173
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1176
    if-nez p1, :cond_1

    .line 1177
    :cond_0
    :goto_0
    return-void

    .line 1179
    :cond_1
    iget-object v0, p0, Ldgz$3;->a:[Ljava/lang/String;

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->getConfigurationProperty()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 1180
    iget-object v0, p0, Ldgz$3;->b:[Ldsd;

    iget-object v1, p0, Ldgz$3;->a:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-static {v1}, Ldsd;->a(Ljava/lang/String;)Ldsd;

    move-result-object v1

    aput-object v1, v0, v4

    .line 1182
    iget-object v0, p0, Ldgz$3;->b:[Ldsd;

    aget-object v0, v0, v4

    if-eqz v0, :cond_2

    .line 1183
    iget-object v0, p0, Ldgz$3;->f:Ldgz;

    .line 2028
    iget-object v0, v0, Ldgz;->a:Lfq;

    .line 1183
    iget-object v1, p0, Ldgz$3;->c:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->getEntranceId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Ldgz$3;->b:[Ldsd;

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2}, Lfq;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1188
    :goto_1
    iget-object v0, p0, Ldgz$3;->e:Ldgz$b;

    if-eqz v0, :cond_0

    .line 1189
    iget-object v0, p0, Ldgz$3;->e:Ldgz$b;

    iget-object v1, p0, Ldgz$3;->c:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ldgz$3;->b:[Ldsd;

    aget-object v2, v2, v4

    invoke-interface {v0, v1, v2}, Ldgz$b;->a(Ljava/lang/String;Ldsd;)V

    goto :goto_0

    .line 1186
    :cond_2
    iget-object v0, p0, Ldgz$3;->f:Ldgz;

    .line 3028
    iget-object v0, v0, Ldgz;->a:Lfq;

    .line 1186
    iget-object v1, p0, Ldgz$3;->c:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->getEntranceId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Ldgz$3;->d:Ldsd;

    invoke-virtual {v0, v1, v2}, Lfq;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
