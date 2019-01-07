.class final Lbav$3;
.super Ljava/lang/Object;
.source "RecentUserPresenter.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbav;
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
        "Lbfx;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbav;


# direct methods
.method constructor <init>(Lbav;)V
    .locals 0
    .param p1, "this$0"    # Lbav;

    .prologue
    .line 184
    iput-object p1, p0, Lbav$3;->a:Lbav;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 193
    iget-object v0, p0, Lbav$3;->a:Lbav;

    .line 1045
    iget-object v0, v0, Lbav;->d:Lbau$b;

    .line 193
    invoke-interface {v0}, Lbau$b;->H_()V

    .line 194
    const-string/jumbo v0, "[DingRecentUserActivityV2]loadRecentDings failed"

    invoke-static {v0, p1, p2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lbav$3;->a:Lbav;

    .line 2045
    iget-object v0, v0, Lbav;->d:Lbau$b;

    .line 195
    invoke-interface {v0}, Lbau$b;->a()V

    .line 196
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 184
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 184
    check-cast p1, Ljava/util/List;

    .line 2187
    iget-object v0, p0, Lbav$3;->a:Lbav;

    .line 3045
    iget-object v0, v0, Lbav;->d:Lbau$b;

    .line 2187
    invoke-interface {v0}, Lbau$b;->H_()V

    .line 2188
    iget-object v0, p0, Lbav$3;->a:Lbav;

    .line 4045
    iget-object v0, v0, Lbav;->c:Layl;

    .line 5032
    iget-object v1, v0, Layl;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 5033
    if-eqz p1, :cond_0

    .line 5034
    iget-object v1, v0, Layl;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5036
    :cond_0
    invoke-virtual {v0}, Layl;->notifyDataSetChanged()V

    .line 184
    return-void
.end method
