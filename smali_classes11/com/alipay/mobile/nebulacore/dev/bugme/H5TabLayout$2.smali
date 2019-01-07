.class Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$2;
.super Landroid/view/animation/Animation;
.source "H5TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->animateToTab(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;

.field final synthetic val$startScrollX:I

.field final synthetic val$targetScrollX:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;

    .prologue
    .line 388
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$2;->this$0:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;

    iput p2, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$2;->val$startScrollX:I

    iput p3, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$2;->val$targetScrollX:I

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
    .line 391
    iget v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$2;->val$startScrollX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$2;->val$targetScrollX:I

    int-to-float v2, v2

    invoke-static {v1, v2, p1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->lerp(FFF)F

    move-result v0

    .line 392
    .local v0, "value":F
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$2;->this$0:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;

    float-to-int v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->scrollTo(II)V

    .line 393
    return-void
.end method
