.class Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip$1;
.super Landroid/view/animation/Animation;
.source "H5TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->animateIndicatorToPosition(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;

.field final synthetic val$startLeft:I

.field final synthetic val$startRight:I

.field final synthetic val$targetLeft:I

.field final synthetic val$targetRight:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;IIII)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;

    .prologue
    .line 774
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip$1;->this$1:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;

    iput p2, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip$1;->val$startLeft:I

    iput p3, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip$1;->val$targetLeft:I

    iput p4, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip$1;->val$startRight:I

    iput p5, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip$1;->val$targetRight:I

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 777
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip$1;->this$1:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;

    iget v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip$1;->val$startLeft:I

    int-to-float v1, v1

    iget v2, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip$1;->val$targetLeft:I

    int-to-float v2, v2

    .line 778
    invoke-static {v1, v2, p1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->lerp(FFF)F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip$1;->val$startRight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip$1;->val$targetRight:I

    int-to-float v3, v3

    .line 779
    invoke-static {v2, v3, p1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->lerp(FFF)F

    move-result v2

    float-to-int v2, v2

    .line 777
    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->access$1000(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;II)V

    .line 780
    return-void
.end method
