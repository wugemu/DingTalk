.class final Ldim$4$1;
.super Ljava/lang/Object;
.source "ConversationMembersFetcher.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldim$4;
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
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/im/GroupNickObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Ldim$4;


# direct methods
.method constructor <init>(Ldim$4;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$1"    # Ldim$4;

    .prologue
    .line 270
    iput-object p1, p0, Ldim$4$1;->b:Ldim$4;

    iput-object p2, p0, Ldim$4$1;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 296
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "MembersFetcher getGroupNick exception,code:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ",reason:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    .line 297
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 296
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Ldim$4$1;->b:Ldim$4;

    iget-object v0, v0, Ldim$4;->d:Ldim;

    .line 1045
    invoke-virtual {v0, p1, p2}, Ldim;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 270
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 270
    check-cast p1, Ljava/util/List;

    .line 1273
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1274
    iget-object v0, p0, Ldim$4$1;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldqw;

    .line 1275
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/GroupNickObject;

    .line 1276
    iget-object v4, v0, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/GroupNickObject;->getOpenId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 1277
    invoke-virtual {v0, v1}, Ldqw;->a(Lcom/alibaba/wukong/im/GroupNickObject;)V

    goto :goto_0

    .line 1284
    :cond_2
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Ldim$4$1;->a:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1285
    iget-object v1, p0, Ldim$4$1;->b:Ldim$4;

    iget-object v1, v1, Ldim$4;->d:Ldim;

    .line 2045
    iget-object v1, v1, Ldim;->g:Ljava/util/ArrayList;

    .line 1285
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1286
    iget-object v0, p0, Ldim$4$1;->b:Ldim$4;

    iget-object v0, v0, Ldim$4;->d:Ldim;

    .line 3045
    iget v0, v0, Ldim;->f:I

    .line 1286
    iget-object v1, p0, Ldim$4$1;->b:Ldim$4;

    iget v1, v1, Ldim$4;->b:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_3

    .line 1287
    iget-object v0, p0, Ldim$4$1;->b:Ldim$4;

    iget-object v0, v0, Ldim$4;->d:Ldim;

    invoke-static {v0}, Ldim;->a(Ldim;)V

    :goto_1
    return-void

    .line 1289
    :cond_3
    iget-object v0, p0, Ldim$4$1;->b:Ldim$4;

    iget-object v0, v0, Ldim$4;->d:Ldim;

    iget-object v1, p0, Ldim$4$1;->b:Ldim$4;

    iget-object v1, v1, Ldim$4;->d:Ldim;

    .line 4045
    iget v1, v1, Ldim;->f:I

    .line 1289
    add-int/lit8 v1, v1, 0x1

    .line 5045
    iput v1, v0, Ldim;->f:I

    .line 1290
    iget-object v0, p0, Ldim$4$1;->b:Ldim$4;

    iget-object v0, v0, Ldim$4;->d:Ldim;

    iget-object v1, p0, Ldim$4$1;->b:Ldim$4;

    iget-object v1, v1, Ldim$4;->c:Ljava/util/List;

    .line 6045
    invoke-virtual {v0, v1}, Ldim;->b(Ljava/util/List;)V

    goto :goto_1
.end method
