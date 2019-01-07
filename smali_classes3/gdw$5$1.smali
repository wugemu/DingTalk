.class final Lgdw$5$1;
.super Ljava/lang/Object;
.source "DentryListPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgdw$5;->onClick(Landroid/content/DialogInterface;I)V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lgdw$5;


# direct methods
.method constructor <init>(Lgdw$5;)V
    .locals 0
    .param p1, "this$1"    # Lgdw$5;

    .prologue
    .line 551
    iput-object p1, p0, Lgdw$5$1;->a:Lgdw$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 551
    .line 1554
    iget-object v0, p0, Lgdw$5$1;->a:Lgdw$5;

    iget-object v0, v0, Lgdw$5;->b:Lgdw;

    iget-object v0, v0, Lgdw;->c:Lgdu$b;

    invoke-interface {v0}, Lgdu$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1557
    iget-object v0, p0, Lgdw$5$1;->a:Lgdw$5;

    iget-object v0, v0, Lgdw$5;->b:Lgdw;

    iget-object v0, v0, Lgdw;->c:Lgdu$b;

    invoke-interface {v0}, Lgdu$b;->H_()V

    .line 1558
    iget-object v0, p0, Lgdw$5$1;->a:Lgdw$5;

    iget-object v0, v0, Lgdw$5;->b:Lgdw;

    invoke-virtual {v0}, Lgdw;->j()V

    .line 551
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 563
    iget-object v1, p0, Lgdw$5$1;->a:Lgdw$5;

    iget-object v1, v1, Lgdw$5;->b:Lgdw;

    iget-object v1, v1, Lgdw;->c:Lgdu$b;

    invoke-interface {v1}, Lgdu$b;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 572
    :goto_0
    return-void

    .line 566
    :cond_0
    iget-object v1, p0, Lgdw$5$1;->a:Lgdw$5;

    iget-object v1, v1, Lgdw$5;->b:Lgdw;

    iget-object v1, v1, Lgdw;->c:Lgdu$b;

    invoke-interface {v1}, Lgdu$b;->H_()V

    .line 567
    const/4 v1, 0x7

    invoke-static {v1, p1, p2}, Lggr;->a(ILjava/lang/String;Ljava/lang/String;)Lggs;

    move-result-object v0

    .line 569
    .local v0, "exception":Lggs;
    iget-object v1, v0, Lggs;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lfzs$h;->delete_error:I

    .line 570
    invoke-static {v1}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object p2

    .line 571
    :goto_1
    invoke-static {p2}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 570
    :cond_1
    iget-object p2, v0, Lggs;->b:Ljava/lang/String;

    goto :goto_1
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 576
    return-void
.end method
