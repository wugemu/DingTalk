.class final Lgsw$3$1$1;
.super Ljava/lang/Object;
.source "FaceRecordPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgsw$3$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgsw$3$1;


# direct methods
.method constructor <init>(Lgsw$3$1;)V
    .locals 0
    .param p1, "this$2"    # Lgsw$3$1;

    .prologue
    .line 328
    iput-object p1, p0, Lgsw$3$1$1;->a:Lgsw$3$1;

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
    .line 331
    iget-object v0, p0, Lgsw$3$1$1;->a:Lgsw$3$1;

    iget-object v0, v0, Lgsw$3$1;->b:Lgsw$3;

    iget-object v0, v0, Lgsw$3;->b:Lgsw;

    .line 1048
    iget-object v0, v0, Lgsw;->d:Lgsv$b;

    .line 331
    invoke-interface {v0}, Lgsv$b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 332
    const-string/jumbo v0, "FaceRecord"

    const-string/jumbo v1, "FaceRecordPresenter"

    const-string/jumbo v2, "view finish, showDetectorFace 2 ignore callback"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    :goto_0
    return-void

    .line 336
    :cond_0
    iget-object v0, p0, Lgsw$3$1$1;->a:Lgsw$3$1;

    iget-object v0, v0, Lgsw$3$1;->b:Lgsw$3;

    iget-object v0, v0, Lgsw$3;->b:Lgsw;

    .line 2048
    iget-object v0, v0, Lgsw;->d:Lgsv$b;

    .line 336
    iget-object v1, p0, Lgsw$3$1$1;->a:Lgsw$3$1;

    iget-object v1, v1, Lgsw$3$1;->a:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lgsv$b;->a(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
