.class final Lcom/taobao/weex/utils/WXViewToImageUtil$1;
.super Ljava/lang/Object;
.source "WXViewToImageUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/utils/WXViewToImageUtil;->generateImage(Landroid/view/View;IILcom/taobao/weex/utils/WXViewToImageUtil$OnImageSavedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$imageView:Landroid/view/View;

.field final synthetic val$mOnImageSavedCallback:Lcom/taobao/weex/utils/WXViewToImageUtil$OnImageSavedCallback;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Landroid/view/View;ILcom/taobao/weex/utils/WXViewToImageUtil$OnImageSavedCallback;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/taobao/weex/utils/WXViewToImageUtil$1;->val$imageView:Landroid/view/View;

    iput p2, p0, Lcom/taobao/weex/utils/WXViewToImageUtil$1;->val$width:I

    iput-object p3, p0, Lcom/taobao/weex/utils/WXViewToImageUtil$1;->val$mOnImageSavedCallback:Lcom/taobao/weex/utils/WXViewToImageUtil$OnImageSavedCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 60
    iget-object v2, p0, Lcom/taobao/weex/utils/WXViewToImageUtil$1;->val$imageView:Landroid/view/View;

    iget v3, p0, Lcom/taobao/weex/utils/WXViewToImageUtil$1;->val$width:I

    invoke-static {v2, v3}, Lcom/taobao/weex/utils/WXViewToImageUtil;->getBitmapFromImageView(Landroid/view/View;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 62
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 63
    iget-object v2, p0, Lcom/taobao/weex/utils/WXViewToImageUtil$1;->val$mOnImageSavedCallback:Lcom/taobao/weex/utils/WXViewToImageUtil$OnImageSavedCallback;

    if-eqz v2, :cond_0

    .line 64
    iget-object v2, p0, Lcom/taobao/weex/utils/WXViewToImageUtil$1;->val$mOnImageSavedCallback:Lcom/taobao/weex/utils/WXViewToImageUtil$OnImageSavedCallback;

    const-string/jumbo v3, "Image is empty"

    invoke-interface {v2, v3}, Lcom/taobao/weex/utils/WXViewToImageUtil$OnImageSavedCallback;->onSaveFailed(Ljava/lang/String;)V

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    iget-object v2, p0, Lcom/taobao/weex/utils/WXViewToImageUtil$1;->val$imageView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/weex/utils/WXViewToImageUtil$1;->val$mOnImageSavedCallback:Lcom/taobao/weex/utils/WXViewToImageUtil$OnImageSavedCallback;

    invoke-static {v2, v0, v3}, Lcom/taobao/weex/utils/WXViewToImageUtil;->saveBitmapToGallery(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/taobao/weex/utils/WXViewToImageUtil$OnImageSavedCallback;)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "destPath":Ljava/lang/String;
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/taobao/weex/utils/WXViewToImageUtil$1$1;

    invoke-direct {v3, p0, v1}, Lcom/taobao/weex/utils/WXViewToImageUtil$1$1;-><init>(Lcom/taobao/weex/utils/WXViewToImageUtil$1;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
