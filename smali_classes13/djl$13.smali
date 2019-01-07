.class final Ldjl$13;
.super Ljava/lang/Object;
.source "ConversationUtils.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldjl;->a(Ljava/lang/String;Ldjl$a;)V
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
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldjl$a;


# direct methods
.method constructor <init>(Ldjl$a;)V
    .locals 0

    .prologue
    .line 818
    iput-object p1, p0, Ldjl$13;->a:Ldjl$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 826
    iget-object v0, p0, Ldjl$13;->a:Ldjl$a;

    if-eqz v0, :cond_0

    .line 827
    iget-object v0, p0, Ldjl$13;->a:Ldjl$a;

    invoke-interface {v0}, Ldjl$a;->a()V

    .line 829
    :cond_0
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 818
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 818
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1821
    iget-object v1, p0, Ldjl$13;->a:Ldjl$a;

    .line 2728
    if-eqz p1, :cond_1

    if-eqz v1, :cond_1

    .line 2729
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v0

    .line 2730
    if-nez v0, :cond_0

    .line 2731
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2733
    :cond_0
    const-string/jumbo v2, "owner_id"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "0"

    const-string/jumbo v3, "owner_id"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2734
    if-eqz v1, :cond_1

    .line 2735
    const-string/jumbo v2, "owner_id"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Ldjl$a;->a(J)V

    :cond_1
    :goto_0
    return-void

    .line 2739
    :cond_2
    new-instance v2, Ldjl$12;

    invoke-direct {v2, v1, v0, p1}, Ldjl$12;-><init>(Ldjl$a;Ljava/util/Map;Lcom/alibaba/wukong/im/Conversation;)V

    invoke-interface {p1, v2}, Lcom/alibaba/wukong/im/Conversation;->getMembers(Lcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method
