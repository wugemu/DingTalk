.class final Ldbs$3;
.super Ljava/lang/Object;
.source "AtMeListPresenter.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldbs;->a()V
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
    .line 194
    iput-object p1, p0, Ldbs$3;->a:Ldbs;

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
    .line 216
    iget-object v0, p0, Ldbs$3;->a:Ldbs;

    .line 1026
    iget-object v0, v0, Ldbs;->a:Ldbr$b;

    .line 216
    invoke-interface {v0}, Ldbr$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Ldbs$3;->a:Ldbs;

    .line 2026
    iget-object v0, v0, Ldbs;->a:Ldbr$b;

    .line 217
    invoke-interface {v0, p1, p2}, Ldbr$b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_0
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "AtMeListPresenter"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "listAtMeList fail s:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, " s1:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 194
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 194
    check-cast p1, Ljava/util/List;

    .line 2197
    iget-object v0, p0, Ldbs$3;->a:Ldbs;

    .line 3026
    iget-object v0, v0, Ldbs;->a:Ldbr$b;

    .line 2197
    invoke-interface {v0}, Ldbr$b;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2198
    iget-object v0, p0, Ldbs$3;->a:Ldbs;

    .line 4026
    iget-object v0, v0, Ldbs;->e:Ljava/util/List;

    .line 2198
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2200
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2201
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_2

    const/4 v0, 0x1

    move v1, v0

    .line 2202
    :goto_0
    iget-object v0, p0, Ldbs$3;->a:Ldbs;

    invoke-static {v0, p1}, Ldbs;->a(Ldbs;Ljava/util/List;)V

    .line 2203
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 2204
    if-eqz v0, :cond_0

    .line 2205
    invoke-static {}, Ldbu;->a()Ldbu;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v4

    invoke-static {v4, v5}, Ldbu;->a(J)V

    .line 2208
    :cond_0
    :goto_1
    iget-object v0, p0, Ldbs$3;->a:Ldbs;

    invoke-static {v0, p1, v1}, Ldbs;->a(Ldbs;Ljava/util/List;Z)V

    .line 2209
    iget-object v0, p0, Ldbs$3;->a:Ldbs;

    invoke-static {v0, v2}, Ldbs;->a(Ldbs;Z)V

    .line 2210
    iget-object v0, p0, Ldbs$3;->a:Ldbs;

    .line 5026
    iget-object v0, v0, Ldbs;->a:Ldbr$b;

    .line 2210
    iget-object v1, p0, Ldbs$3;->a:Ldbs;

    .line 6026
    iget-wide v2, v1, Ldbs;->c:J

    .line 2210
    invoke-interface {v0, v2, v3}, Ldbr$b;->a(J)V

    .line 194
    :cond_1
    return-void

    :cond_2
    move v1, v2

    .line 2201
    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method
