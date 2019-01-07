.class final Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$3;
.super Ljava/lang/Object;
.source "MiniappSharePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Landroid/graphics/Bitmap;

.field final synthetic c:Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;

.field final synthetic d:Lcom/alipay/mobile/h5container/api/H5Event;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/alibaba/fastjson/JSONObject;

.field final synthetic g:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;Landroid/app/Activity;Landroid/graphics/Bitmap;Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$3;->g:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$3;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$3;->b:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$3;->c:Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;

    iput-object p5, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$3;->d:Lcom/alipay/mobile/h5container/api/H5Event;

    iput-object p6, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$3;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$3;->f:Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x0

    .line 266
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$3;->a:Landroid/app/Activity;

    invoke-static {v7}, Lcms;->a(Landroid/content/Context;)I

    move-result v2

    .line 267
    .local v2, "corpWidth":I
    int-to-float v7, v2

    const/high16 v8, 0x3f100000    # 0.5625f

    mul-float/2addr v7, v8

    float-to-int v1, v7

    .line 268
    .local v1, "corpHeight":I
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$3;->a:Landroid/app/Activity;

    invoke-static {v7}, Lcom/alipay/mobile/nebula/util/H5StatusBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v5

    .line 269
    .local v5, "statusBarHeight":I
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$3;->a:Landroid/app/Activity;

    invoke-static {v7}, Lcom/alibaba/lightapp/runtime/weex/util/ScreenUtil;->getCustomizedToolbarHeight(Landroid/app/Activity;)I

    move-result v6

    .line 270
    .local v6, "toolbarHeight":I
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$3;->b:Landroid/graphics/Bitmap;

    add-int v8, v5, v6

    invoke-static {v7, v9, v8, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 271
    .local v3, "cropBitmap":Landroid/graphics/Bitmap;
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 272
    .local v0, "compressFormat":Landroid/graphics/Bitmap$CompressFormat;
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$3;->a:Landroid/app/Activity;

    invoke-static {v3, v7, v0, v9}, Lcnx;->a(Landroid/graphics/Bitmap;Landroid/content/Context;Landroid/graphics/Bitmap$CompressFormat;Z)Ljava/lang/String;

    move-result-object v4

    .line 274
    .local v4, "filePath":Ljava/lang/String;
    invoke-static {}, Lify;->a()Lify;

    move-result-object v7

    new-instance v8, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$3$1;

    invoke-direct {v8, p0, v4}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$3$1;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$3;Ljava/lang/String;)V

    invoke-virtual {v7, v4, v8}, Lify;->a(Ljava/lang/String;Lifv;)V

    .line 310
    return-void
.end method
