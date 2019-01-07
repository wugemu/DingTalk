.class final Ldjl$12;
.super Ljava/lang/Object;
.source "ConversationUtils.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldjl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/im/Member;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldjl$a;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/alibaba/wukong/im/Conversation;


# direct methods
.method constructor <init>(Ldjl$a;Ljava/util/Map;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0

    .prologue
    .line 739
    iput-object p1, p0, Ldjl$12;->a:Ldjl$a;

    iput-object p2, p0, Ldjl$12;->b:Ljava/util/Map;

    iput-object p3, p0, Ldjl$12;->c:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 768
    iget-object v0, p0, Ldjl$12;->a:Ldjl$a;

    if-eqz v0, :cond_0

    .line 769
    iget-object v0, p0, Ldjl$12;->a:Ldjl$a;

    invoke-interface {v0}, Ldjl$a;->a()V

    .line 771
    :cond_0
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 739
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    .line 739
    check-cast p1, Ljava/util/List;

    .line 1743
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1744
    :cond_0
    iget-object v0, p0, Ldjl$12;->a:Ldjl$a;

    if-eqz v0, :cond_1

    .line 1745
    iget-object v0, p0, Ldjl$12;->a:Ldjl$a;

    invoke-interface {v0}, Ldjl$a;->a()V

    .line 1759
    :cond_1
    :goto_0
    return-void

    .line 1749
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Member;

    .line 1750
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Member;->roleType()Lcom/alibaba/wukong/im/Member$RoleType;

    move-result-object v4

    sget-object v5, Lcom/alibaba/wukong/im/Member$RoleType;->MASTER:Lcom/alibaba/wukong/im/Member$RoleType;

    if-ne v4, v5, :cond_3

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Member;->user()Lcom/alibaba/wukong/im/User;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1751
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Member;->user()Lcom/alibaba/wukong/im/User;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/User;->openId()J

    move-result-wide v0

    .line 1755
    :goto_1
    cmp-long v2, v0, v2

    if-eqz v2, :cond_4

    .line 1756
    iget-object v2, p0, Ldjl$12;->b:Ljava/util/Map;

    const-string/jumbo v3, "owner_id"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1757
    iget-object v2, p0, Ldjl$12;->c:Lcom/alibaba/wukong/im/Conversation;

    iget-object v3, p0, Ldjl$12;->b:Ljava/util/Map;

    invoke-interface {v2, v3}, Lcom/alibaba/wukong/im/Conversation;->updateLocalExtras(Ljava/util/Map;)V

    .line 1758
    iget-object v2, p0, Ldjl$12;->a:Ldjl$a;

    if-eqz v2, :cond_1

    .line 1759
    iget-object v2, p0, Ldjl$12;->a:Ldjl$a;

    invoke-interface {v2, v0, v1}, Ldjl$a;->a(J)V

    goto :goto_0

    .line 1762
    :cond_4
    iget-object v0, p0, Ldjl$12;->a:Ldjl$a;

    invoke-interface {v0}, Ldjl$a;->a()V

    goto :goto_0

    :cond_5
    move-wide v0, v2

    goto :goto_1
.end method
