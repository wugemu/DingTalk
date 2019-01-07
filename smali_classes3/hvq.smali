.class public final Lhvq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# instance fields
.field final synthetic a:Lhyt;


# direct methods
.method public constructor <init>(Lhyt;)V
    .locals 0

    iput-object p1, p0, Lhvq;->a:Lhyt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 0
    iget-object v0, p0, Lhvq;->a:Lhyt;

    .line 1000
    iget-object v0, v0, Lhyt;->a:Landroid/hardware/Camera;

    .line 0
    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    iget-object v0, p0, Lhvq;->a:Lhyt;

    .line 2000
    iget-object v0, v0, Lhyt;->a:Landroid/hardware/Camera;

    .line 0
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    iget-object v0, p0, Lhvq;->a:Lhyt;

    .line 3000
    const/4 v1, 0x1

    iput-boolean v1, v0, Lhyt;->b:Z

    .line 0
    return-void
.end method
