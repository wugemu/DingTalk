.class final Ldbs$4;
.super Ljava/lang/Object;
.source "AtMeListPresenter.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldbs;->c()V
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
        "Lcom/alibaba/wukong/im/Message;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldbs;


# direct methods
.method constructor <init>(Ldbs;)V
    .locals 0
    .param p1, "this$0"    # Ldbs;

    .prologue
    .line 288
    iput-object p1, p0, Ldbs$4;->a:Ldbs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 305
    iget-object v0, p0, Ldbs$4;->a:Ldbs;

    .line 1026
    iget-object v0, v0, Ldbs;->a:Ldbr$b;

    .line 305
    invoke-interface {v0}, Ldbr$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Ldbs$4;->a:Ldbs;

    .line 2026
    iget-object v0, v0, Ldbs;->a:Ldbr$b;

    .line 306
    invoke-interface {v0, p1, p2}, Ldbr$b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :cond_0
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "AtMeListPresenter"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "listAtMeList more fail s:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, " s1:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, " ver:"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Ldbs$4;->a:Ldbs;

    .line 3026
    iget-wide v4, v4, Ldbs;->d:J

    .line 308
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 288
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 288
    check-cast p1, Ljava/util/List;

    .line 3291
    iget-object v1, p0, Ldbs$4;->a:Ldbs;

    .line 4026
    iget-object v1, v1, Ldbs;->a:Ldbr$b;

    .line 3291
    invoke-interface {v1}, Ldbr$b;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3295
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3296
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x14

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    .line 3297
    :cond_0
    iget-object v1, p0, Ldbs$4;->a:Ldbs;

    invoke-static {v1, p1}, Ldbs;->a(Ldbs;Ljava/util/List;)V

    .line 3298
    iget-object v1, p0, Ldbs$4;->a:Ldbs;

    .line 5026
    iget-object v1, v1, Ldbs;->a:Ldbr$b;

    .line 3298
    invoke-interface {v1, p1}, Ldbr$b;->b(Ljava/util/List;)V

    .line 3300
    :cond_1
    iget-object v1, p0, Ldbs$4;->a:Ldbs;

    invoke-static {v1, p1, v0}, Ldbs;->a(Ldbs;Ljava/util/List;Z)V

    .line 288
    :cond_2
    return-void
.end method
