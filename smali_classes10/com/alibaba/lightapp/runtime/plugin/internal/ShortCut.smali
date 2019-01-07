.class public Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;
.super Lcom/alibaba/lightapp/runtime/Plugin;
.source "ShortCut.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$AddShortCutCallback;,
        Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$CallBack;
    }
.end annotation


# static fields
.field private static final REQ_SHORTCUT_SIZE:I = 0x48

.field private static final SHORT_CUT_KEY:Ljava/lang/String; = "SHORT_CUT_KEY"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Plugin;-><init>()V

    .line 260
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;ZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;->callback2Js(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$200(Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;Ljava/lang/String;J)Ljava/lang/String;
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;->getSaveKey(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;->getBitmapFromUri(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;Ljava/lang/String;J)Landroid/content/Intent;
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;->getShortCutIntent(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private addShortCut(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "shortCutName"    # Ljava/lang/String;
    .param p3, "corpId"    # Ljava/lang/String;
    .param p4, "appId"    # J
    .param p6, "callbackId"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-wide/from16 v2, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;->getSaveKey(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 94
    .local v14, "filePath":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 95
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 96
    .local v13, "file":Ljava/io/File;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;->getBitmapFromUri(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 98
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_0

    .line 99
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-wide/from16 v2, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;->getShortCutIntent(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v5, v1, v6, v4}, Lhrr;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ZLandroid/graphics/Bitmap;)Z

    .line 104
    :goto_0
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v5, v1}, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;->callback2Js(ZLjava/lang/String;)V

    .line 120
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    .end local v13    # "file":Ljava/io/File;
    :goto_1
    return-void

    .line 101
    .restart local v4    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v13    # "file":Ljava/io/File;
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-wide/from16 v2, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;->getShortCutIntent(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v5

    const/4 v6, 0x0

    .line 102
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lhdn$g;->desktop_launch_icon:I

    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 101
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v5, v1, v6, v7}, Lhrr;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ZLandroid/graphics/Bitmap;)Z

    goto :goto_0

    .line 107
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    .end local v13    # "file":Ljava/io/File;
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-wide/from16 v2, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;->getAppHomePage(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v11

    .line 108
    .local v11, "shortCutIcon":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 109
    new-instance v12, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v12, v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;Ljava/lang/String;)V

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move-object/from16 v10, p2

    invoke-direct/range {v5 .. v12}, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;->fetchFromNet(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$AddShortCutCallback;)V

    goto :goto_1

    .line 116
    :cond_2
    const/4 v5, 0x3

    const-string/jumbo v6, "shortCutIcon can not be null"

    invoke-static {v5, v6}, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v5, v1}, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private callback2Js(ZLjava/lang/String;)V
    .locals 2
    .param p1, "result"    # Z
    .param p2, "callbackId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 123
    if-eqz p1, :cond_0

    .line 124
    invoke-virtual {p0, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;->success(Ljava/lang/String;)V

    .line 128
    :goto_0
    return-void

    .line 126
    :cond_0
    const/4 v0, 0x3

    const-string/jumbo v1, "shortCutIcon add fail , maybe the shortcut already exists"

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private fetchFromNet(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$AddShortCutCallback;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "corpId"    # Ljava/lang/String;
    .param p3, "appId"    # J
    .param p5, "shortCutName"    # Ljava/lang/String;
    .param p6, "shortCutIcon"    # Ljava/lang/String;
    .param p7, "callback"    # Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$AddShortCutCallback;

    .prologue
    .line 132
    new-instance v12, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v12, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 133
    .local v12, "targetFile":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 134
    invoke-virtual {v12}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 136
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p6

    invoke-direct {p0, v0}, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, "name":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {v8, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 138
    .local v8, "netFile":Ljava/io/File;
    new-instance v3, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$2;

    invoke-direct {v3, p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$2;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;Landroid/content/Context;)V

    invoke-virtual {p0, v3}, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 145
    new-instance v3, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$3;

    move-object v4, p0

    move-object v5, p2

    move-wide/from16 v6, p3

    move-object/from16 v9, p7

    move-object v10, p1

    move-object/from16 v11, p5

    invoke-direct/range {v3 .. v11}, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$3;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;Ljava/lang/String;JLjava/io/File;Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$AddShortCutCallback;Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, p6

    invoke-direct {p0, v0, v8, v3}, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;->getBitmapFromNet(Ljava/lang/String;Ljava/io/File;Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$CallBack;)V

    .line 172
    return-void
.end method

.method private getAppHomePage(Ljava/lang/String;J)Ljava/lang/String;
    .locals 4
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "appId"    # J

    .prologue
    .line 181
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, "icon":Ljava/lang/String;
    const/4 v2, 0x0

    .line 184
    .local v2, "iconUrl":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 188
    :goto_0
    return-object v2

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private getBitmapFromNet(Ljava/lang/String;Ljava/io/File;Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$CallBack;)V
    .locals 3
    .param p1, "shortCutIcon"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "callBack"    # Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$CallBack;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 198
    const-string/jumbo v1, "REQUEST"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/request/Request;

    .line 199
    .local v0, "request":Lcom/alibaba/doraemon/request/Request;
    const-string/jumbo v1, "User-Agent"

    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/request/Request;->setRequestParam(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    .line 200
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/request/Request;->setCacheable(Z)Lcom/alibaba/doraemon/request/Request;

    .line 201
    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/request/Request;->setRequestUrl(Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    .line 203
    sget-object v1, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/request/Request;->setPerfTag(Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    .line 204
    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$4;

    invoke-direct {v1, p0, p2, p3}, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$4;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;Ljava/io/File;Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$CallBack;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/request/Request;->setResponseReceiver(Lcom/alibaba/doraemon/request/ResponseReceiver;)Lcom/alibaba/doraemon/request/Request;

    .line 253
    invoke-interface {v0}, Lcom/alibaba/doraemon/request/Request;->start()V

    .line 254
    return-void
.end method

.method private getBitmapFromUri(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "file"    # Ljava/io/File;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v3, 0x42900000    # 72.0f

    .line 315
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 316
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 317
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 318
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 319
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    .line 320
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    .line 319
    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 321
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 322
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 325
    .end local v0    # "options":Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getHashString(Ljava/security/MessageDigest;)Ljava/lang/String;
    .locals 6
    .param p1, "digest"    # Ljava/security/MessageDigest;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 296
    .local v1, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-byte v0, v3, v2

    .line 297
    .local v0, "b":B
    shr-int/lit8 v5, v0, 0x4

    and-int/lit8 v5, v5, 0xf

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    and-int/lit8 v5, v0, 0xf

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 300
    .end local v0    # "b":B
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "content"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 283
    :try_start_0
    const-string/jumbo v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 284
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 285
    invoke-direct {p0, v0}, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;->getHashString(Ljava/security/MessageDigest;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 290
    .end local v0    # "digest":Ljava/security/MessageDigest;
    :goto_0
    return-object v2

    .line 287
    :catch_0
    move-exception v1

    .line 288
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 290
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getSaveKey(Ljava/lang/String;J)Ljava/lang/String;
    .locals 4
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "appId"    # J

    .prologue
    .line 304
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "SHORT_CUT_KEY"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 305
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->getCurrentUid()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const/4 v1, 0x3

    .line 306
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 304
    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getShortCutIntent(Ljava/lang/String;J)Landroid/content/Intent;
    .locals 4
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "appId"    # J

    .prologue
    .line 271
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 272
    .local v0, "openIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 274
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    const-string/jumbo v1, "corp_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    const-string/jumbo v1, "intent_key_transfer_type"

    const-string/jumbo v2, "transfer_type_shortcut"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    const-string/jumbo v1, "intent_key_app_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 278
    return-object v0
.end method


# virtual methods
.method public add(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 11
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x3

    .line 57
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 58
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_2

    instance-of v0, v1, Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 60
    :try_start_0
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v6, "name"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, "shortCutName":Ljava/lang/String;
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v6, "corpId"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 62
    .local v3, "corpId":Ljava/lang/String;
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v6, "agentId"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 64
    .local v8, "agentId":J
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    :cond_0
    const/4 v0, 0x3

    const-string/jumbo v6, "parameter invalid"

    invoke-static {v0, v6}, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-virtual {p0, v0, v6}, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .end local v2    # "shortCutName":Ljava/lang/String;
    .end local v3    # "corpId":Ljava/lang/String;
    .end local v8    # "agentId":J
    :goto_0
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v0

    return-object v0

    .line 67
    .restart local v2    # "shortCutName":Ljava/lang/String;
    .restart local v3    # "corpId":Ljava/lang/String;
    .restart local v8    # "agentId":J
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v0

    invoke-virtual {v0, v3, v8, v9}, Lcom/alibaba/dingtalk/oabase/OAInterface;->c(Ljava/lang/String;J)J

    move-result-wide v4

    .line 68
    .local v4, "appId":J
    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;->addShortCut(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 71
    .end local v2    # "shortCutName":Ljava/lang/String;
    .end local v3    # "corpId":Ljava/lang/String;
    .end local v4    # "appId":J
    .end local v8    # "agentId":J
    :catch_0
    move-exception v7

    .line 72
    .local v7, "e":Lorg/json/JSONException;
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    .line 73
    invoke-virtual {v7}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-virtual {p0, v0, v6}, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0

    .line 77
    .end local v7    # "e":Lorg/json/JSONException;
    :cond_2
    const-string/jumbo v0, "invalid context"

    invoke-static {v10, v0}, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-virtual {p0, v0, v6}, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 6
    .param p1, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p2, "reqWidth"    # I
    .param p3, "reqHeight"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 338
    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 339
    .local v2, "height":I
    iget v4, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 340
    .local v4, "width":I
    const/4 v3, 0x1

    .line 342
    .local v3, "inSampleSize":I
    if-gt v2, p3, :cond_0

    if-le v4, p2, :cond_1

    .line 344
    :cond_0
    div-int/lit8 v0, v2, 0x2

    .line 345
    .local v0, "halfHeight":I
    div-int/lit8 v1, v4, 0x2

    .line 349
    .local v1, "halfWidth":I
    :goto_0
    div-int v5, v0, v3

    if-lt v5, p3, :cond_1

    div-int v5, v1, v3

    if-lt v5, p2, :cond_1

    .line 351
    mul-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 355
    .end local v0    # "halfHeight":I
    .end local v1    # "halfWidth":I
    :cond_1
    return v3
.end method
