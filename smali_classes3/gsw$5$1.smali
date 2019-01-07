.class final Lgsw$5$1;
.super Ljava/lang/Object;
.source "FaceRecordPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgsw$5;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgsw$5;


# direct methods
.method constructor <init>(Lgsw$5;)V
    .locals 0
    .param p1, "this$1"    # Lgsw$5;

    .prologue
    .line 483
    iput-object p1, p0, Lgsw$5$1;->a:Lgsw$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 487
    iget-object v0, p0, Lgsw$5$1;->a:Lgsw$5;

    iget-object v0, v0, Lgsw$5;->a:Lgsw;

    .line 1048
    iget-object v0, v0, Lgsw;->d:Lgsv$b;

    .line 487
    invoke-interface {v0}, Lgsv$b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 488
    const-string/jumbo v0, "FaceRecord"

    const-string/jumbo v1, "FaceRecordPresenter"

    const-string/jumbo v2, "view finish, register success ignore callback"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    :goto_0
    return-void

    .line 491
    :cond_0
    iget-object v0, p0, Lgsw$5$1;->a:Lgsw$5;

    iget-object v0, v0, Lgsw$5;->a:Lgsw;

    .line 2048
    iget-object v0, v0, Lgsw;->d:Lgsv$b;

    .line 491
    invoke-interface {v0}, Lgsv$b;->m()V

    goto :goto_0
.end method
