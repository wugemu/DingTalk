.class final Lazx$2;
.super Ljava/lang/Object;
.source "DingCreateActivityV2BasePresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lazx;->w()V
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
        "Lchh;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lazx;


# direct methods
.method constructor <init>(Lazx;)V
    .locals 0
    .param p1, "this$0"    # Lazx;

    .prologue
    .line 318
    iput-object p1, p0, Lazx$2;->a:Lazx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 318
    check-cast p1, Lchh;

    .line 1321
    iget-object v0, p0, Lazx$2;->a:Lazx;

    iget-object v0, v0, Lazx;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1324
    if-eqz p1, :cond_0

    .line 1325
    iget-boolean v0, p1, Lchh;->c:Z

    if-nez v0, :cond_1

    .line 1326
    iget-object v0, p0, Lazx$2;->a:Lazx;

    iget-object v0, v0, Lazx;->y:Lazy$b;

    iget-object v1, p1, Lchh;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Lazy$b;->a(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    .line 1328
    :cond_1
    iget-object v0, p0, Lazx$2;->a:Lazx;

    iget-object v0, v0, Lazx;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->j()V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 339
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lazx$2$1;

    invoke-direct {v1, p0, p1, p2}, Lazx$2$1;-><init>(Lazx$2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 347
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 335
    return-void
.end method
