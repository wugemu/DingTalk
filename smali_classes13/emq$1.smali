.class final Lemq$1;
.super Ljava/lang/Object;
.source "AutoZoomOperator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lemq;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lemq;


# direct methods
.method constructor <init>(Lemq;II)V
    .locals 0
    .param p1, "this$0"    # Lemq;

    .prologue
    .line 45
    iput-object p1, p0, Lemq$1;->c:Lemq;

    iput p2, p0, Lemq$1;->a:I

    iput p3, p0, Lemq$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 48
    iget v0, p0, Lemq$1;->a:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 49
    iget-object v0, p0, Lemq$1;->c:Lemq;

    iget v1, p0, Lemq$1;->b:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lemq$1;->a:I

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, v2

    iget v2, p0, Lemq$1;->a:I

    iget v3, p0, Lemq$1;->b:I

    .line 1037
    iget-object v4, v0, Lemq;->b:Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    invoke-static {v4}, Lcms;->a(Landroid/support/v4/app/Fragment;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1040
    iget-object v4, v0, Lemq;->b:Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    invoke-virtual {v4, v1}, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->a(I)V

    .line 1041
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v0, v1, v3}, Lemq;->a(II)V

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    iget-object v0, p0, Lemq$1;->c:Lemq;

    .line 2011
    const/4 v1, 0x0

    iput-boolean v1, v0, Lemq;->a:Z

    goto :goto_0
.end method
