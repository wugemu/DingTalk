.class public final Lemq;
.super Ljava/lang/Object;
.source "AutoZoomOperator.java"


# instance fields
.field public volatile a:Z

.field public b:Lcom/taobao/ma/ui/CaptureNewFragmentV2;

.field private final c:I

.field private d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/taobao/ma/ui/CaptureNewFragmentV2;)V
    .locals 2
    .param p1, "activity"    # Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/16 v0, 0xa

    iput v0, p0, Lemq;->c:I

    .line 16
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lemq;->d:Landroid/os/Handler;

    .line 19
    iput-object p1, p0, Lemq;->b:Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    .line 20
    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 4
    .param p1, "curIndex"    # I
    .param p2, "maxZoom"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 45
    iget-object v0, p0, Lemq;->d:Landroid/os/Handler;

    new-instance v1, Lemq$1;

    invoke-direct {v1, p0, p1, p2}, Lemq$1;-><init>(Lemq;II)V

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 56
    return-void
.end method
