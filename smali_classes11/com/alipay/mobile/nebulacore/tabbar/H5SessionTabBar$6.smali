.class Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6;
.super Ljava/lang/Object;
.source "H5SessionTabBar.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->loadImageAsync(Ljava/lang/String;Landroid/widget/TextView;Landroid/graphics/drawable/StateListDrawable;Landroid/content/Context;IZLandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$drawableSize:I

.field final synthetic val$iconArea:Landroid/widget/TextView;

.field final synthetic val$imageUrl:Ljava/lang/String;

.field final synthetic val$isCheckedState:Z

.field final synthetic val$sd:Landroid/graphics/drawable/StateListDrawable;

.field final synthetic val$startParams:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;Landroid/content/Context;IZLandroid/graphics/drawable/StateListDrawable;Landroid/widget/TextView;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;

    .prologue
    .line 720
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6;->this$0:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6;->val$drawableSize:I

    iput-boolean p4, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6;->val$isCheckedState:Z

    iput-object p5, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6;->val$sd:Landroid/graphics/drawable/StateListDrawable;

    iput-object p6, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6;->val$iconArea:Landroid/widget/TextView;

    iput-object p7, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6;->val$imageUrl:Ljava/lang/String;

    iput-object p8, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6;->val$startParams:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetResponse(Landroid/webkit/WebResourceResponse;)V
    .locals 11
    .param p1, "webResourceResponse"    # Landroid/webkit/WebResourceResponse;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 724
    const-string/jumbo v0, "H5BaseTabBar"

    const-string/jumbo v1, "loadImageAsync offlinepkg already exist package"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 727
    invoke-virtual {p1}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object v9

    .line 728
    .local v9, "inputStream":Ljava/io/InputStream;
    invoke-static {v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 729
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v8, :cond_0

    .line 730
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {v10, v0, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 731
    .local v10, "topDrawable":Landroid/graphics/drawable/BitmapDrawable;
    iget v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6;->val$drawableSize:I

    iget v1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6;->val$drawableSize:I

    invoke-virtual {v10, v2, v2, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 732
    new-instance v0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6$1;

    invoke-direct {v0, p0, v10}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6$1;-><init>(Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6;Landroid/graphics/drawable/BitmapDrawable;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 747
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    .end local v9    # "inputStream":Ljava/io/InputStream;
    .end local v10    # "topDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    :goto_0
    return-void

    .line 745
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6;->this$0:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6;->val$imageUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6;->val$iconArea:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6;->val$sd:Landroid/graphics/drawable/StateListDrawable;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6;->val$context:Landroid/content/Context;

    iget v5, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6;->val$drawableSize:I

    iget-boolean v6, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6;->val$isCheckedState:Z

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6;->val$startParams:Landroid/os/Bundle;

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->access$601(Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;Ljava/lang/String;Landroid/widget/TextView;Landroid/graphics/drawable/StateListDrawable;Landroid/content/Context;IZLandroid/os/Bundle;)V

    goto :goto_0
.end method
