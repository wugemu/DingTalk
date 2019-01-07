.class public Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;
.super Lipd;
.source "H5SnapshotPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$EmbedViewSnapshotBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final ADD_SCREENSHOT:Ljava/lang/String; = "addScreenshotListener"

.field private static final DATATYPE:Ljava/lang/String; = "dataType"

.field private static final DATAURL:Ljava/lang/String; = "dataURL"

.field private static final FILEURL:Ljava/lang/String; = "fileURL"

.field private static final IMAGEFORMAT:Ljava/lang/String; = "imageFormat"

.field private static final MAXHEIGHT:Ljava/lang/String; = "maxHeight"

.field private static final MAXWIDTH:Ljava/lang/String; = "maxWidth"

.field private static final QUALLTY:Ljava/lang/String; = "quality"

.field private static final RANGE:Ljava/lang/String; = "range"

.field private static final RANGE_DOCUMENT:Ljava/lang/String; = "document"

.field private static final RANGE_EMBEDVIEW:Ljava/lang/String; = "embedview"

.field private static final RANGE_SCREEN:Ljava/lang/String; = "screen"

.field private static final RANGE_VIEWPORT:Ljava/lang/String; = "viewport"

.field private static final SAVETOGALLERY:Ljava/lang/String; = "saveToGallery"

.field private static final SNAPSHOT:Ljava/lang/String; = "snapshot"

.field private static final SNOPSHOT_JPG:Ljava/lang/String; = "jpg"

.field public static final TAG:Ljava/lang/String; = "H5SnapshotPlugin"


# instance fields
.field private embedViewSnapshotBroadcastReceivers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final foregroundPages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Liop;",
            ">;"
        }
    .end annotation
.end field

.field private imagePath:Ljava/lang/String;

.field private localBroadcastManager:Ldq;

.field private final registerScreenshotPages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Liop;",
            ">;"
        }
    .end annotation
.end field

.field private screenShotObserver:Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;

.field private session:Lipc;


# direct methods
.method public constructor <init>(Lipc;)V
    .locals 1
    .param p1, "session"    # Lipc;

    .prologue
    .line 101
    invoke-direct {p0}, Lipd;-><init>()V

    .line 87
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->registerScreenshotPages:Ljava/util/Set;

    .line 89
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->foregroundPages:Ljava/util/Set;

    .line 102
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->session:Lipc;

    .line 105
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->localBroadcastManager:Ldq;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->embedViewSnapshotBroadcastReceivers:Ljava/util/List;

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;)Lipc;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->session:Lipc;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->foregroundPages:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;)Ldq;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->localBroadcastManager:Ldq;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->embedViewSnapshotBroadcastReceivers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;Liny;Landroid/app/Activity;Lcom/alibaba/fastjson/JSONObject;IIZLjava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;
    .param p1, "x1"    # Liny;
    .param p2, "x2"    # Landroid/app/Activity;
    .param p3, "x3"    # Lcom/alibaba/fastjson/JSONObject;
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # Z
    .param p7, "x7"    # Ljava/lang/String;
    .param p8, "x8"    # Ljava/lang/String;
    .param p9, "x9"    # I
    .param p10, "x10"    # Landroid/graphics/Bitmap;

    .prologue
    .line 51
    invoke-direct/range {p0 .. p10}, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->handleSnapshot(Liny;Landroid/app/Activity;Lcom/alibaba/fastjson/JSONObject;IIZLjava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method private captureDocument(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/app/Activity;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "webView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 445
    :try_start_0
    invoke-interface {p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v3

    .line 446
    .local v3, "picture":Landroid/graphics/Picture;
    if-nez v3, :cond_0

    .line 447
    const/4 v0, 0x0

    .line 460
    .end local v3    # "picture":Landroid/graphics/Picture;
    :goto_0
    return-object v0

    .line 449
    .restart local v3    # "picture":Landroid/graphics/Picture;
    :cond_0
    invoke-virtual {v3}, Landroid/graphics/Picture;->getWidth()I

    move-result v4

    .line 450
    invoke-virtual {v3}, Landroid/graphics/Picture;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 449
    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 451
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 452
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v3, v1}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 454
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "picture":Landroid/graphics/Picture;
    :catch_0
    move-exception v2

    .line 455
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "H5SnapshotPlugin"

    invoke-static {v4, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 456
    const-string/jumbo v4, "H5SnapshotPlugin"

    invoke-static {v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    const-string/jumbo v5, "captureDocumentException"

    invoke-virtual {v4, v5, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 460
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->captureWebView(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/app/Activity;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private captureWebView(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/app/Activity;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "webView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 426
    :try_start_0
    invoke-interface {p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->getView()Landroid/view/View;

    move-result-object v2

    .line 427
    .local v2, "view":Landroid/view/View;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 428
    invoke-virtual {v2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 429
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "view":Landroid/view/View;
    :goto_0
    return-object v0

    .line 431
    :catch_0
    move-exception v1

    .line 432
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "H5SnapshotPlugin"

    invoke-static {v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 433
    const-string/jumbo v3, "H5SnapshotPlugin"

    invoke-static {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    const-string/jumbo v4, "captureWebViewException"

    invoke-virtual {v3, v4, v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 436
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->captureScreen(Landroid/app/Activity;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private handleSnapshot(Liny;Landroid/app/Activity;Lcom/alibaba/fastjson/JSONObject;IIZLjava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;)V
    .locals 16
    .param p1, "bridgeContext"    # Liny;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "result"    # Lcom/alibaba/fastjson/JSONObject;
    .param p4, "maxWidth"    # I
    .param p5, "maxHeight"    # I
    .param p6, "saveToGallery"    # Z
    .param p7, "dataType"    # Ljava/lang/String;
    .param p8, "imageFormat"    # Ljava/lang/String;
    .param p9, "quality"    # I
    .param p10, "bitmap"    # Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 245
    if-nez p10, :cond_1

    .line 246
    const-string/jumbo v11, "success"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v11, v12}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    const-string/jumbo v11, "error"

    const-string/jumbo v12, "2"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11, v12}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const-string/jumbo v11, "errorMessage"

    .line 249
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/alipay/mobile/nebula/R$string;->h5_getpicfailed:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 248
    move-object/from16 v0, p3

    invoke-virtual {v0, v11, v12}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    if-gez p4, :cond_2

    .line 255
    invoke-virtual/range {p10 .. p10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    .line 258
    :cond_2
    if-gez p5, :cond_3

    .line 259
    invoke-virtual/range {p10 .. p10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p5

    .line 262
    :cond_3
    invoke-virtual/range {p10 .. p10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    move/from16 v0, p5

    if-ne v0, v11, :cond_4

    invoke-virtual/range {p10 .. p10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    move/from16 v0, p4

    if-eq v0, v11, :cond_5

    .line 263
    :cond_4
    move-object/from16 v0, p10

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p10

    .line 266
    :cond_5
    if-eqz p10, :cond_6

    const-string/jumbo v11, "jpg"

    move-object/from16 v0, p8

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    const/16 v11, 0x64

    move/from16 v0, p9

    if-eq v0, v11, :cond_6

    .line 267
    move-object/from16 v0, p10

    move/from16 v1, p9

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->imageQuality(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p10

    .line 270
    :cond_6
    if-eqz p6, :cond_7

    .line 271
    move-object/from16 v0, p0

    move-object/from16 v1, p10

    move-object/from16 v2, p8

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)I

    move-result v6

    .line 272
    .local v6, "error":I
    if-nez v6, :cond_8

    .line 273
    if-eqz p2, :cond_7

    invoke-virtual/range {p2 .. p2}, Landroid/app/Activity;->isFinishing()Z

    move-result v11

    if-nez v11, :cond_7

    .line 274
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/alipay/mobile/nebula/R$string;->h5_save_image_to:I

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->imagePath:Ljava/lang/String;

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 276
    .local v10, "message":Ljava/lang/String;
    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v10, v11}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 300
    .end local v6    # "error":I
    .end local v10    # "message":Ljava/lang/String;
    :cond_7
    const-string/jumbo v11, "fileURL"

    move-object/from16 v0, p7

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 301
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 302
    .local v4, "context":Landroid/content/Context;
    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->getImageTempDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 303
    .local v5, "destDirName":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p8

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 304
    .local v7, "fileName":Ljava/lang/String;
    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->mkdirs(Ljava/lang/String;)Z

    .line 305
    const-string/jumbo v11, "jpg"

    .line 306
    move-object/from16 v0, p8

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 308
    .local v9, "format":Landroid/graphics/Bitmap$CompressFormat;
    :goto_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p10

    invoke-static {v0, v9, v11}, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->writeImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;)V

    .line 309
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_e

    .line 310
    const-string/jumbo v11, "success"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v11, v12}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    const-string/jumbo v11, "error"

    const/16 v12, 0xb

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v11, v12}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    const-string/jumbo v11, "errorMessage"

    .line 313
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/alipay/mobile/nebula/R$string;->h5_savepicfailed:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 312
    move-object/from16 v0, p3

    invoke-virtual {v0, v11, v12}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    :goto_2
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 319
    if-eqz p10, :cond_0

    invoke-virtual/range {p10 .. p10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v11

    if-nez v11, :cond_0

    .line 320
    invoke-virtual/range {p10 .. p10}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    .line 279
    .end local v4    # "context":Landroid/content/Context;
    .end local v5    # "destDirName":Ljava/lang/String;
    .end local v7    # "fileName":Ljava/lang/String;
    .end local v9    # "format":Landroid/graphics/Bitmap$CompressFormat;
    .restart local v6    # "error":I
    :cond_8
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/alipay/mobile/nebula/R$string;->h5_save_image_failed:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 281
    .restart local v10    # "message":Ljava/lang/String;
    if-eqz p2, :cond_a

    invoke-virtual/range {p2 .. p2}, Landroid/app/Activity;->isFinishing()Z

    move-result v11

    if-nez v11, :cond_a

    .line 282
    const/4 v11, 0x1

    if-ne v6, v11, :cond_b

    .line 283
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/alipay/mobile/nebula/R$string;->h5_snap_sd_error:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 289
    :cond_9
    :goto_3
    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v10, v11}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 291
    :cond_a
    const-string/jumbo v11, "success"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v11, v12}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    const-string/jumbo v11, "error"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v11, v12}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    const-string/jumbo v11, "errorMsg"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11, v10}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    goto/16 :goto_0

    .line 285
    :cond_b
    const/16 v11, 0xa

    if-eq v6, v11, :cond_c

    const/4 v11, 0x3

    if-ne v6, v11, :cond_9

    .line 286
    :cond_c
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/alipay/mobile/nebula/R$string;->h5_snap_error:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    .line 306
    .end local v6    # "error":I
    .end local v10    # "message":Ljava/lang/String;
    .restart local v4    # "context":Landroid/content/Context;
    .restart local v5    # "destDirName":Ljava/lang/String;
    .restart local v7    # "fileName":Ljava/lang/String;
    :cond_d
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto/16 :goto_1

    .line 315
    .restart local v9    # "format":Landroid/graphics/Bitmap$CompressFormat;
    :cond_e
    const-string/jumbo v11, "success"

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v11, v12}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    const-string/jumbo v11, "fileURL"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v11, v12}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 322
    .end local v4    # "context":Landroid/content/Context;
    .end local v5    # "destDirName":Ljava/lang/String;
    .end local v7    # "fileName":Ljava/lang/String;
    .end local v9    # "format":Landroid/graphics/Bitmap$CompressFormat;
    :cond_f
    const-string/jumbo v11, "dataURL"

    move-object/from16 v0, p7

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 323
    move-object/from16 v8, p10

    .line 324
    .local v8, "finalBitmap":Landroid/graphics/Bitmap;
    const-string/jumbo v11, "URGENT"

    invoke-static {v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v11

    new-instance v12, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p8

    move-object/from16 v2, p1

    invoke-direct {v12, v0, v8, v1, v2}, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$2;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;Landroid/graphics/Bitmap;Ljava/lang/String;Liny;)V

    invoke-virtual {v11, v12}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 338
    .end local v8    # "finalBitmap":Landroid/graphics/Bitmap;
    :cond_10
    const-string/jumbo v11, "success"

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12}, Liny;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 339
    if-eqz p10, :cond_0

    invoke-virtual/range {p10 .. p10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v11

    if-nez v11, :cond_0

    .line 340
    invoke-virtual/range {p10 .. p10}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0
.end method

.method private saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)I
    .locals 12
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "format"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 465
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "mounted"

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 501
    :goto_0
    return v6

    .line 470
    :cond_0
    const/4 v3, 0x0

    .line 471
    .local v3, "imgPathPart":Ljava/lang/String;
    :try_start_0
    const-class v6, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    .line 472
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    .line 473
    .local v4, "provider":Lcom/alipay/mobile/nebula/provider/H5EnvProvider;
    if-eqz v4, :cond_1

    .line 474
    invoke-interface {v4}, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;->getSnapshotJsapiSavePath()Ljava/lang/String;

    move-result-object v3

    .line 476
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 477
    const-string/jumbo v3, "/DCIM/Alipay/"

    .line 479
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 480
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->imagePath:Ljava/lang/String;

    .line 482
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->imagePath:Ljava/lang/String;

    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->create(Ljava/lang/String;)Z

    .line 483
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->imagePath:Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 487
    .local v2, "fos":Ljava/io/FileOutputStream;
    const-string/jumbo v6, "jpg"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 489
    .local v0, "cf":Landroid/graphics/Bitmap$CompressFormat;
    :goto_1
    const/16 v6, 0x64

    invoke-virtual {p1, v0, v6, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v5

    .line 490
    .local v5, "success":Z
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 491
    if-nez v5, :cond_4

    .line 492
    const/16 v6, 0xa

    goto :goto_0

    .line 487
    .end local v0    # "cf":Landroid/graphics/Bitmap$CompressFormat;
    .end local v5    # "success":Z
    :cond_3
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_1

    .line 494
    .restart local v0    # "cf":Landroid/graphics/Bitmap$CompressFormat;
    .restart local v5    # "success":Z
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->imagePath:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "image/*"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-static {v6, v8, v9, v10}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v7

    .line 501
    goto/16 :goto_0

    .line 497
    .end local v0    # "cf":Landroid/graphics/Bitmap$CompressFormat;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "provider":Lcom/alipay/mobile/nebula/provider/H5EnvProvider;
    .end local v5    # "success":Z
    :catch_0
    move-exception v1

    .line 498
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "H5SnapshotPlugin"

    const-string/jumbo v7, "saveImage exception."

    invoke-static {v6, v7, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 499
    const/4 v6, 0x3

    goto/16 :goto_0
.end method

.method private snapshot(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
    .locals 26
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    .prologue
    .line 207
    const/16 v23, 0x0

    .line 4081
    .local v23, "h5Page":Liop;
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    .line 208
    instance-of v1, v1, Liop;

    if-eqz v1, :cond_0

    .line 5081
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    move-object/from16 v23, v0

    .line 209
    .end local v23    # "h5Page":Liop;
    check-cast v23, Liop;

    .line 211
    .restart local v23    # "h5Page":Liop;
    :cond_0
    if-nez v23, :cond_1

    .line 242
    :goto_0
    return-void

    .line 214
    :cond_1
    const/4 v2, 0x0

    .line 215
    .local v2, "activity":Landroid/app/Activity;
    invoke-interface/range {v23 .. v23}, Liop;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 216
    invoke-interface/range {v23 .. v23}, Liop;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v2

    .end local v2    # "activity":Landroid/app/Activity;
    check-cast v2, Landroid/app/Activity;

    .line 5121
    .restart local v2    # "activity":Landroid/app/Activity;
    :cond_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v24, v0

    .line 220
    .local v24, "param":Lcom/alibaba/fastjson/JSONObject;
    new-instance v5, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v5}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 222
    .local v5, "result":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "maxWidth"

    const/4 v3, -0x1

    move-object/from16 v0, v24

    invoke-static {v0, v1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v6

    .line 223
    .local v6, "maxWidth":I
    const-string/jumbo v1, "maxHeight"

    const/4 v3, -0x1

    move-object/from16 v0, v24

    invoke-static {v0, v1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v7

    .line 224
    .local v7, "maxHeight":I
    const-string/jumbo v1, "range"

    const-string/jumbo v3, "screen"

    move-object/from16 v0, v24

    invoke-static {v0, v1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 225
    .local v25, "range":Ljava/lang/String;
    const-string/jumbo v1, "saveToGallery"

    const/4 v3, 0x1

    move-object/from16 v0, v24

    invoke-static {v0, v1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v8

    .line 226
    .local v8, "saveToGallery":Z
    const-string/jumbo v1, "dataType"

    const-string/jumbo v3, "none"

    move-object/from16 v0, v24

    invoke-static {v0, v1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 227
    .local v9, "dataType":Ljava/lang/String;
    const-string/jumbo v1, "imageFormat"

    const-string/jumbo v3, "jpg"

    move-object/from16 v0, v24

    invoke-static {v0, v1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 228
    .local v10, "imageFormat":Ljava/lang/String;
    const-string/jumbo v1, "quality"

    const/16 v3, 0x4b

    move-object/from16 v0, v24

    invoke-static {v0, v1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v11

    .line 229
    .local v11, "quality":I
    const/16 v22, 0x0

    .line 230
    .local v22, "bitmap":Landroid/graphics/Bitmap;
    const-string/jumbo v1, "screen"

    move-object/from16 v0, v25

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 231
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->captureScreen(Landroid/app/Activity;)Landroid/graphics/Bitmap;

    move-result-object v22

    :cond_3
    :goto_1
    move-object/from16 v12, p0

    move-object/from16 v13, p2

    move-object v14, v2

    move-object v15, v5

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v18, v8

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    move/from16 v21, v11

    .line 241
    invoke-direct/range {v12 .. v22}, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->handleSnapshot(Liny;Landroid/app/Activity;Lcom/alibaba/fastjson/JSONObject;IIZLjava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 232
    :cond_4
    const-string/jumbo v1, "viewport"

    move-object/from16 v0, v25

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 233
    invoke-interface/range {v23 .. v23}, Liop;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->captureWebView(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/app/Activity;)Landroid/graphics/Bitmap;

    move-result-object v22

    goto :goto_1

    .line 234
    :cond_5
    const-string/jumbo v1, "document"

    move-object/from16 v0, v25

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 235
    invoke-interface/range {v23 .. v23}, Liop;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->captureDocument(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/app/Activity;)Landroid/graphics/Bitmap;

    move-result-object v22

    goto :goto_1

    .line 236
    :cond_6
    const-string/jumbo v1, "embedview"

    move-object/from16 v0, v25

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 237
    const/4 v12, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual/range {v1 .. v12}, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->captureEmbedView(Landroid/app/Activity;Lcom/alipay/mobile/h5container/api/H5Event;Liny;Lcom/alibaba/fastjson/JSONObject;IIZLjava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public captureEmbedView(Landroid/app/Activity;Lcom/alipay/mobile/h5container/api/H5Event;Liny;Lcom/alibaba/fastjson/JSONObject;IIZLjava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;)V
    .locals 21
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "h5Event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p3, "bridgeContext"    # Liny;
    .param p4, "result"    # Lcom/alibaba/fastjson/JSONObject;
    .param p5, "maxWidth"    # I
    .param p6, "maxHeight"    # I
    .param p7, "saveToGallery"    # Z
    .param p8, "dataType"    # Ljava/lang/String;
    .param p9, "imageFormat"    # Ljava/lang/String;
    .param p10, "quality"    # I
    .param p11, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 377
    .line 6081
    :try_start_0
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    .line 377
    check-cast v3, Liop;

    .line 378
    .local v3, "h5Page":Liop;
    if-nez v3, :cond_0

    .line 417
    .end local v3    # "h5Page":Liop;
    :goto_0
    return-void

    .line 381
    .restart local v3    # "h5Page":Liop;
    :cond_0
    invoke-interface {v3}, Liop;->ifContainsEmbedSurfaceView()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 382
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v18

    .line 383
    .local v18, "display":Landroid/view/Display;
    invoke-virtual/range {v18 .. v18}, Landroid/view/Display;->getWidth()I

    move-result v4

    .line 384
    .local v4, "widths":I
    invoke-interface {v3}, Liop;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/nebula/webview/APWebView;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 385
    .local v5, "heights":I
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p11

    .line 386
    new-instance v20, Landroid/content/IntentFilter;

    invoke-direct/range {v20 .. v20}, Landroid/content/IntentFilter;-><init>()V

    .line 387
    .local v20, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "embedview.snapshot.complete"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 388
    move-object/from16 v6, p11

    .line 389
    .local v6, "finalBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;

    move-object/from16 v2, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p1

    move-object/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    move/from16 v15, p10

    invoke-direct/range {v1 .. v15}, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;Liop;IILandroid/graphics/Bitmap;Liny;Landroid/app/Activity;Lcom/alibaba/fastjson/JSONObject;IIZLjava/lang/String;Ljava/lang/String;I)V

    .line 406
    .local v1, "embedViewSnapshotBroadcastReceiver":Landroid/content/BroadcastReceiver;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->localBroadcastManager:Ldq;

    move-object/from16 v0, v20

    invoke-virtual {v2, v1, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 407
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->embedViewSnapshotBroadcastReceivers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    invoke-interface {v3}, Liop;->getEmbededViewProvider()Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;->triggerPreSnapshot()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 413
    .end local v1    # "embedViewSnapshotBroadcastReceiver":Landroid/content/BroadcastReceiver;
    .end local v3    # "h5Page":Liop;
    .end local v4    # "widths":I
    .end local v5    # "heights":I
    .end local v6    # "finalBitmap":Landroid/graphics/Bitmap;
    .end local v18    # "display":Landroid/view/Display;
    .end local v20    # "intentFilter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v19

    .line 414
    .local v19, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "H5SnapshotPlugin"

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 415
    const-string/jumbo v2, "H5SnapshotPlugin"

    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    const-string/jumbo v7, "captureScreenException"

    move-object/from16 v0, v19

    invoke-virtual {v2, v7, v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    goto/16 :goto_0

    .line 410
    .end local v19    # "e":Ljava/lang/Exception;
    .restart local v3    # "h5Page":Liop;
    :cond_1
    :try_start_1
    invoke-virtual/range {p0 .. p1}, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->captureScreen(Landroid/app/Activity;)Landroid/graphics/Bitmap;

    move-result-object p11

    move-object/from16 v7, p0

    move-object/from16 v8, p3

    move-object/from16 v9, p1

    move-object/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move-object/from16 v14, p8

    move-object/from16 v15, p9

    move/from16 v16, p10

    move-object/from16 v17, p11

    .line 411
    invoke-direct/range {v7 .. v17}, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->handleSnapshot(Liny;Landroid/app/Activity;Lcom/alibaba/fastjson/JSONObject;IIZLjava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public captureScreen(Landroid/app/Activity;)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 350
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    .line 351
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->buildDrawingCache()V

    .line 352
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 353
    .local v4, "rect":Landroid/graphics/Rect;
    invoke-virtual {v6, v4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 354
    iget v5, v4, Landroid/graphics/Rect;->top:I

    .line 355
    .local v5, "statusBarHeights":I
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 356
    .local v1, "display":Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v7

    .line 357
    .local v7, "widths":I
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v3

    .line 358
    .local v3, "heights":I
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 360
    invoke-virtual {v6}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-le v3, v8, :cond_0

    .line 361
    invoke-virtual {v6}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 372
    .end local v1    # "display":Landroid/view/Display;
    .end local v3    # "heights":I
    .end local v4    # "rect":Landroid/graphics/Rect;
    .end local v5    # "statusBarHeights":I
    .end local v6    # "view":Landroid/view/View;
    .end local v7    # "widths":I
    :goto_0
    return-object v0

    .line 363
    .restart local v1    # "display":Landroid/view/Display;
    .restart local v3    # "heights":I
    .restart local v4    # "rect":Landroid/graphics/Rect;
    .restart local v5    # "statusBarHeights":I
    .restart local v6    # "view":Landroid/view/View;
    .restart local v7    # "widths":I
    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v8

    const/4 v9, 0x0

    sub-int v10, v3, v5

    invoke-static {v8, v9, v5, v7, v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 366
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v6}, Landroid/view/View;->destroyDrawingCache()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 368
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "display":Landroid/view/Display;
    .end local v3    # "heights":I
    .end local v4    # "rect":Landroid/graphics/Rect;
    .end local v5    # "statusBarHeights":I
    .end local v6    # "view":Landroid/view/View;
    .end local v7    # "widths":I
    :catch_0
    move-exception v2

    .line 369
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "H5SnapshotPlugin"

    invoke-static {v8, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 370
    const-string/jumbo v8, "H5SnapshotPlugin"

    invoke-static {v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v8

    const-string/jumbo v9, "captureScreenException"

    invoke-virtual {v8, v9, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v8

    invoke-static {v8}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 372
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 5
    .param p1, "h5Event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "h5BridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 163
    .line 3065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 164
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "snapshot"

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 165
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->snapshot(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V

    .line 203
    :goto_0
    const/4 v3, 0x1

    :goto_1
    return v3

    .line 166
    :cond_0
    const-string/jumbo v3, "addScreenshotListener"

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3081
    iget-object v1, p1, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    .line 168
    .local v1, "node":Liob;
    if-eqz v1, :cond_3

    instance-of v3, v1, Liop;

    if-eqz v3, :cond_3

    move-object v2, v1

    .line 169
    check-cast v2, Liop;

    .line 171
    .local v2, "target":Liop;
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->registerScreenshotPages:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 172
    const/4 v3, -0x1

    const-string/jumbo v4, "already listening!"

    invoke-interface {p2, v3, v4}, Liny;->sendError(ILjava/lang/String;)V

    goto :goto_0

    .line 174
    :cond_1
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->registerScreenshotPages:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->foregroundPages:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 176
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->screenShotObserver:Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;

    if-nez v3, :cond_2

    .line 177
    new-instance v3, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;

    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->screenShotObserver:Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;

    .line 179
    :cond_2
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->screenShotObserver:Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;

    new-instance v4, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$1;

    invoke-direct {v4, p0, v2}, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$1;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;Liop;)V

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;->registerListener(Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver$H5ScreenShotListener;)V

    .line 194
    invoke-interface {p2}, Liny;->sendSuccess()V

    goto :goto_0

    .line 197
    .end local v2    # "target":Liop;
    :cond_3
    invoke-interface {p2}, Liny;->sendSuccess()V

    goto :goto_0

    .line 201
    .end local v1    # "node":Liob;
    :cond_4
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 4
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 140
    .line 1065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 1081
    .local v0, "action":Ljava/lang/String;
    iget-object v2, p1, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    .line 141
    instance-of v2, v2, Liop;

    if-eqz v2, :cond_1

    .line 2081
    iget-object v1, p1, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    .line 142
    check-cast v1, Liop;

    .line 143
    .local v1, "page":Liop;
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->registerScreenshotPages:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 144
    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 158
    .end local v1    # "page":Liop;
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Lipd;->interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z

    move-result v2

    return v2

    .line 144
    .restart local v1    # "page":Liop;
    :sswitch_0
    const-string/jumbo v3, "h5PageResume"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v3, "h5PagePause"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v3, "h5PageClosed"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    .line 146
    :pswitch_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->foregroundPages:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 149
    :pswitch_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->foregroundPages:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 152
    :pswitch_2
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->registerScreenshotPages:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 153
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->foregroundPages:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 144
    nop

    :sswitch_data_0
    .sparse-switch
        -0x64b12a78 -> :sswitch_2
        -0x4b7943b7 -> :sswitch_0
        -0x449dc1a6 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "h5EventFilter"    # Liof;

    .prologue
    .line 111
    const-string/jumbo v0, "snapshot"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 112
    const-string/jumbo v0, "addScreenshotListener"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 113
    const-string/jumbo v0, "h5PageResume"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 114
    const-string/jumbo v0, "h5PagePause"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 115
    const-string/jumbo v0, "h5PageClosed"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public onRelease()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 120
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->screenShotObserver:Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->screenShotObserver:Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;->release()V

    .line 122
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->screenShotObserver:Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->registerScreenshotPages:Ljava/util/Set;

    if-eqz v1, :cond_1

    .line 125
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->registerScreenshotPages:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 127
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->foregroundPages:Ljava/util/Set;

    if-eqz v1, :cond_2

    .line 128
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->foregroundPages:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 130
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->embedViewSnapshotBroadcastReceivers:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 131
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->embedViewSnapshotBroadcastReceivers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    .line 132
    .local v0, "broadcastReceiver":Landroid/content/BroadcastReceiver;
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->localBroadcastManager:Ldq;

    invoke-virtual {v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    .line 134
    .end local v0    # "broadcastReceiver":Landroid/content/BroadcastReceiver;
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->embedViewSnapshotBroadcastReceivers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 136
    :cond_4
    return-void
.end method
