.class public final Lgea;
.super Lgdw;
.source "PersonalFileDentryListPresenter.java"


# direct methods
.method public constructor <init>(Lgdu$b;Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Lgdu$b;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2, p3}, Lgdw;-><init>(Lgdu$b;Landroid/content/Context;Landroid/os/Bundle;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 19
    invoke-virtual {p0}, Lgea;->b()V

    .line 21
    iget-object v0, p0, Lgea;->c:Lgdu$b;

    invoke-interface {v0, v2}, Lgdu$b;->a(Z)V

    .line 22
    iget-object v0, p0, Lgea;->c:Lgdu$b;

    invoke-interface {v0, v2}, Lgdu$b;->b(Z)V

    .line 23
    iget-object v0, p0, Lgea;->c:Lgdu$b;

    iget v1, p0, Lgea;->q:I

    invoke-interface {v0, v1}, Lgdu$b;->a(I)V

    .line 24
    iget-object v0, p0, Lgea;->c:Lgdu$b;

    invoke-interface {v0}, Lgdu$b;->f()V

    .line 26
    iget-object v0, p0, Lgea;->c:Lgdu$b;

    invoke-interface {v0, v2}, Lgdu$b;->l(Z)V

    .line 27
    iget-object v0, p0, Lgea;->c:Lgdu$b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lgdu$b;->m(Z)V

    .line 28
    return-void
.end method

.method public final b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    iget-object v0, p0, Lgea;->c:Lgdu$b;

    iget-object v1, p0, Lgea;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgdu$b;->a(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lgea;->c:Lgdu$b;

    invoke-interface {v0, v2}, Lgdu$b;->e(Z)V

    .line 34
    iget-object v0, p0, Lgea;->c:Lgdu$b;

    const-string/jumbo v1, ""

    invoke-interface {v0, v2, v1}, Lgdu$b;->a(ZLjava/lang/String;)V

    .line 35
    iget-object v0, p0, Lgea;->c:Lgdu$b;

    invoke-interface {v0, v3}, Lgdu$b;->h(Z)V

    .line 36
    iget-object v0, p0, Lgea;->c:Lgdu$b;

    invoke-interface {v0, v3}, Lgdu$b;->i(Z)V

    .line 37
    iget-object v0, p0, Lgea;->c:Lgdu$b;

    iget v1, p0, Lgea;->s:I

    invoke-interface {v0, v1}, Lgdu$b;->b(I)V

    .line 38
    iget-object v0, p0, Lgea;->c:Lgdu$b;

    invoke-interface {v0, v3}, Lgdu$b;->j(Z)V

    .line 39
    iget-object v0, p0, Lgea;->c:Lgdu$b;

    iget v1, p0, Lgea;->p:I

    invoke-interface {v0, v1}, Lgdu$b;->c(I)V

    .line 40
    iget-object v0, p0, Lgea;->c:Lgdu$b;

    invoke-interface {v0, v2}, Lgdu$b;->k(Z)V

    .line 41
    return-void
.end method
