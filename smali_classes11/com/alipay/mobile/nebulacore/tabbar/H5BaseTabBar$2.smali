.class Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$2;
.super Ljava/lang/Object;
.source "H5BaseTabBar.java"

# interfaces
.implements Lioi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->loadImageAsync(Ljava/lang/String;Landroid/widget/TextView;Landroid/graphics/drawable/StateListDrawable;Landroid/content/Context;IZLandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$drawableSize:I

.field final synthetic val$iconArea:Landroid/widget/TextView;

.field final synthetic val$isCheckedState:Z

.field final synthetic val$sd:Landroid/graphics/drawable/StateListDrawable;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;Landroid/content/Context;IZLandroid/graphics/drawable/StateListDrawable;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;

    .prologue
    .line 311
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$2;->this$0:Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$2;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$2;->val$drawableSize:I

    iput-boolean p4, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$2;->val$isCheckedState:Z

    iput-object p5, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$2;->val$sd:Landroid/graphics/drawable/StateListDrawable;

    iput-object p6, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$2;->val$iconArea:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImage(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 314
    if-eqz p1, :cond_0

    .line 315
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$2;->val$context:Landroid/content/Context;

    .line 316
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 317
    .local v0, "topDrawable":Landroid/graphics/drawable/BitmapDrawable;
    iget v1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$2;->val$drawableSize:I

    iget v2, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$2;->val$drawableSize:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 318
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$2;->val$isCheckedState:Z

    if-eqz v1, :cond_1

    .line 319
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$2;->val$sd:Landroid/graphics/drawable/StateListDrawable;

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->addCheckedState(Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;)V

    .line 323
    :goto_0
    new-instance v1, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$2$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$2$1;-><init>(Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$2;)V

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 330
    .end local v0    # "topDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    return-void

    .line 321
    .restart local v0    # "topDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$2;->val$sd:Landroid/graphics/drawable/StateListDrawable;

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->addNormalState(Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
