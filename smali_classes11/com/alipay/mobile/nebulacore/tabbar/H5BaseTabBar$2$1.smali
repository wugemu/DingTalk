.class Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$2$1;
.super Ljava/lang/Object;
.source "H5BaseTabBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$2;->onImage(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$2;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$2;

    .prologue
    .line 323
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$2$1;->this$1:Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 326
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$2$1;->this$1:Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$2;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$2;->val$iconArea:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$2$1;->this$1:Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$2;

    iget-object v1, v1, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$2;->val$sd:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 327
    return-void
.end method
