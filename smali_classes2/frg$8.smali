.class final Lfrg$8;
.super Ljava/lang/Object;
.source "AlipayLoginView.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfrg;
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
        "Lfws;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfrg;


# direct methods
.method constructor <init>(Lfrg;)V
    .locals 0
    .param p1, "this$0"    # Lfrg;

    .prologue
    .line 408
    iput-object p1, p0, Lfrg$8;->a:Lfrg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 408
    check-cast p1, Lfws;

    .line 1411
    if-eqz p1, :cond_0

    .line 1415
    const-string/jumbo v0, "AlipayLoginView"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lfrg$8$1;

    invoke-direct {v1, p0, p1}, Lfrg$8$1;-><init>(Lfrg$8;Lfws;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 408
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 430
    const-string/jumbo v0, "AlipayLoginView"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, p1, v1}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 431
    iget-object v0, p0, Lfrg$8;->a:Lfrg;

    invoke-virtual {v0}, Lfrg;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 435
    :goto_0
    return-void

    .line 434
    :cond_0
    invoke-static {p2}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 426
    return-void
.end method
