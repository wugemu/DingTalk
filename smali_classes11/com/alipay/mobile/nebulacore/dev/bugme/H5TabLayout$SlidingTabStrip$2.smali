.class Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip$2;
.super Ljava/lang/Object;
.source "H5TabLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


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

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;

    .prologue
    .line 784
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip$2;->this$1:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;

    iput p2, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 791
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip$2;->this$1:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;

    iget v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip$2;->val$position:I

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->access$1202(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;I)I

    .line 792
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip$2;->this$1:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->access$1302(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;F)F

    .line 793
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 797
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 787
    return-void
.end method
