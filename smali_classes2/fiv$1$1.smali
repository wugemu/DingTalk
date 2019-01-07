.class final Lfiv$1$1;
.super Ljava/lang/Object;
.source "CommonContactPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfiv$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfiv$1;


# direct methods
.method constructor <init>(Lfiv$1;)V
    .locals 0
    .param p1, "this$1"    # Lfiv$1;

    .prologue
    .line 63
    iput-object p1, p0, Lfiv$1$1;->a:Lfiv$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 66
    iget-object v0, p0, Lfiv$1$1;->a:Lfiv$1;

    iget-object v0, v0, Lfiv$1;->a:Lfiv;

    invoke-static {v0}, Lfiv;->b(Lfiv;)Lfir;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lfiv$1$1;->a:Lfiv$1;

    iget-object v0, v0, Lfiv$1;->a:Lfiv;

    invoke-static {v0}, Lfiv;->b(Lfiv;)Lfir;

    move-result-object v2

    iget-object v0, p0, Lfiv$1$1;->a:Lfiv$1;

    iget-object v0, v0, Lfiv$1;->a:Lfiv;

    invoke-static {v0}, Lfiv;->a(Lfiv;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfiv$1$1;->a:Lfiv$1;

    iget-object v0, v0, Lfiv$1;->a:Lfiv;

    invoke-static {v0}, Lfiv;->a(Lfiv;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    invoke-interface {v2, v1, v0}, Lfir;->a(ZI)V

    .line 69
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 67
    goto :goto_0
.end method
