.class Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder$1;
.super Ljava/lang/Object;
.source "H5ViewHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->animateRootView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

.field final synthetic val$rootView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder$1;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder$1;->val$rootView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 242
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 243
    .local v0, "opacity":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 244
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder$1;->val$rootView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 245
    return-void
.end method
