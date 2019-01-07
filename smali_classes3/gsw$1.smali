.class final Lgsw$1;
.super Landroid/os/Handler;
.source "FaceRecordPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgsw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgsw;


# direct methods
.method constructor <init>(Lgsw;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lgsw;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 89
    iput-object p1, p0, Lgsw$1;->a:Lgsw;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 92
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 93
    iget-object v1, p0, Lgsw$1;->a:Lgsw;

    .line 1048
    iget-object v1, v1, Lgsw;->d:Lgsv$b;

    .line 93
    invoke-interface {v1}, Lgsv$b;->d()Z

    move-result v1

    if-nez v1, :cond_1

    .line 94
    const-string/jumbo v1, "FaceRecord"

    const-string/jumbo v2, "FaceRecordPresenter"

    const-string/jumbo v3, "view finish, showDetectorTimeout ignore callback"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    iget-object v1, p0, Lgsw$1;->a:Lgsw;

    .line 2048
    invoke-virtual {v1}, Lgsw;->e()Lgsu;

    move-result-object v0

    .line 98
    .local v0, "record":Lgsu;
    if-eqz v0, :cond_2

    .line 99
    invoke-interface {v0}, Lgsu;->b()V

    .line 101
    :cond_2
    iget-object v1, p0, Lgsw$1;->a:Lgsw;

    .line 3048
    iget-object v1, v1, Lgsw;->d:Lgsv$b;

    .line 101
    invoke-interface {v1}, Lgsv$b;->g()V

    goto :goto_0
.end method
