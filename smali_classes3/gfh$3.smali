.class final Lgfh$3;
.super Ljava/lang/Object;
.source "GroupFilePresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgfh;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lgjp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lgfh;


# direct methods
.method constructor <init>(Lgfh;Z)V
    .locals 0
    .param p1, "this$0"    # Lgfh;

    .prologue
    .line 242
    iput-object p1, p0, Lgfh$3;->b:Lgfh;

    iput-boolean p2, p0, Lgfh$3;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 242
    check-cast p1, Lgjp;

    .line 1246
    iget-object v0, p0, Lgfh$3;->b:Lgfh;

    invoke-static {v0}, Lgfh;->f(Lgfh;)Lgfe$b;

    move-result-object v0

    invoke-interface {v0}, Lgfe$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1250
    iget-object v0, p0, Lgfh$3;->b:Lgfh;

    invoke-static {v0}, Lgfh;->g(Lgfh;)Lgfe$b;

    move-result-object v0

    invoke-interface {v0}, Lgfe$b;->H_()V

    .line 1252
    iget-boolean v0, p0, Lgfh$3;->a:Z

    if-eqz v0, :cond_1

    .line 1253
    iget-object v0, p0, Lgfh$3;->b:Lgfh;

    invoke-static {v0}, Lgfh;->h(Lgfh;)Lgfe$b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lgfe$b;->a(Ljava/util/List;)V

    .line 1254
    iget-object v0, p0, Lgfh$3;->b:Lgfh;

    invoke-static {v0}, Lgfh;->i(Lgfh;)Lgfe$b;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lgfe$b;->a(I)V

    :cond_0
    :goto_0
    return-void

    .line 1257
    :cond_1
    iget-object v0, p0, Lgfh$3;->b:Lgfh;

    invoke-static {v0}, Lgfh;->j(Lgfh;)Lgfe$b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lgfe$b;->a(I)V

    .line 1259
    iget-object v0, p0, Lgfh$3;->b:Lgfh;

    invoke-virtual {v0, p1}, Lgfh;->a(Lgjp;)V

    .line 1260
    iget-object v0, p0, Lgfh$3;->b:Lgfh;

    invoke-static {v0}, Lgfh;->k(Lgfh;)Lgfe$b;

    move-result-object v0

    iget-object v1, p0, Lgfh$3;->b:Lgfh;

    iget-object v1, v1, Lgfh;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Lgfe$b;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 273
    iget-object v0, p0, Lgfh$3;->b:Lgfh;

    invoke-static {v0}, Lgfh;->l(Lgfh;)Lgfe$b;

    move-result-object v0

    invoke-interface {v0}, Lgfe$b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    :goto_0
    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Lgfh$3;->b:Lgfh;

    invoke-static {v0}, Lgfh;->m(Lgfh;)Lgfe$b;

    move-result-object v0

    invoke-interface {v0}, Lgfe$b;->H_()V

    .line 279
    iget-object v0, p0, Lgfh$3;->b:Lgfh;

    invoke-static {v0}, Lgfh;->n(Lgfh;)Lgfe$b;

    move-result-object v1

    iget-boolean v0, p0, Lgfh$3;->a:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-interface {v1, v0}, Lgfe$b;->b(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 268
    return-void
.end method
