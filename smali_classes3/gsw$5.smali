.class final Lgsw$5;
.super Ljava/lang/Object;
.source "FaceRecordPresenter.java"

# interfaces
.implements Lgsu$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgsw;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgsw;


# direct methods
.method constructor <init>(Lgsw;)V
    .locals 0
    .param p1, "this$0"    # Lgsw;

    .prologue
    .line 480
    iput-object p1, p0, Lgsw$5;->a:Lgsw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 483
    iget-object v0, p0, Lgsw$5;->a:Lgsw;

    .line 1048
    iget-object v0, v0, Lgsw;->g:Landroid/os/Handler;

    .line 483
    new-instance v1, Lgsw$5$1;

    invoke-direct {v1, p0}, Lgsw$5$1;-><init>(Lgsw$5;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 494
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 498
    iget-object v0, p0, Lgsw$5;->a:Lgsw;

    .line 2048
    iget-object v0, v0, Lgsw;->d:Lgsv$b;

    .line 498
    invoke-interface {v0}, Lgsv$b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 499
    const-string/jumbo v0, "FaceRecord"

    const-string/jumbo v1, "FaceRecordPresenter"

    const-string/jumbo v2, "view finish, register fail ignore callback"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    :goto_0
    return-void

    .line 502
    :cond_0
    iget-object v0, p0, Lgsw$5;->a:Lgsw;

    .line 3048
    iget-object v0, v0, Lgsw;->d:Lgsv$b;

    .line 502
    invoke-interface {v0, p1, p2}, Lgsv$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
