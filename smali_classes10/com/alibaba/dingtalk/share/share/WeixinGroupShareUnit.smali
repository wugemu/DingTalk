.class public Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;
.super Lgvu;
.source "WeixinGroupShareUnit.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    new-instance v0, Lgwa;

    invoke-direct {v0}, Lgwa;-><init>()V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lgwa;->c(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lgvu;-><init>(Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;)V

    .line 43
    const-string/jumbo v0, "lwfrom=user_wechat"

    iput-object v0, p0, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;->b:Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;->a:Landroid/content/Context;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 55
    new-instance v0, Lgwa;

    invoke-direct {v0}, Lgwa;-><init>()V

    invoke-static {p1, p2}, Lgwa;->c(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lgvu;-><init>(Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;)V

    .line 43
    const-string/jumbo v0, "lwfrom=user_wechat"

    iput-object v0, p0, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;->b:Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;->a:Landroid/content/Context;

    .line 57
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;Lcom/alibaba/doraemon/request/RequestInputStream;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;
    .param p1, "x1"    # Lcom/alibaba/doraemon/request/RequestInputStream;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 39
    .line 3424
    invoke-static {p1}, Lcom/alibaba/doraemon/image/utils/PngUtil;->is9patchSafety(Ljava/io/InputStream;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3442
    :cond_0
    :goto_0
    return-object v0

    .line 3429
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3430
    const-string/jumbo v1, "."

    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 3432
    if-ltz v1, :cond_2

    .line 3433
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3438
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "webp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lixh;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3439
    invoke-virtual {p1}, Lcom/alibaba/doraemon/request/RequestInputStream;->toBytes()[B

    move-result-object v0

    invoke-static {v0}, Lixh;->a([B)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3441
    if-nez v0, :cond_0

    .line 3446
    :cond_3
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 9
    .param p0, "x0"    # Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 39
    .line 4338
    :try_start_0
    const-string/jumbo v0, "wxg"

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4339
    invoke-static {p2}, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;->a(Landroid/graphics/Bitmap;)V

    .line 4340
    :goto_0
    return-void

    .line 4342
    :cond_0
    invoke-static {}, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;->getInstance()Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;->getWeiXinExecutor()Lcom/alibaba/laiwang/tide/share/business/excutor/wx/WeiXinExecutor;

    move-result-object v0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;->a:Landroid/content/Context;

    new-instance v4, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit$6;

    invoke-direct {v4, p0}, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit$6;-><init>(Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;)V

    invoke-static {v3, v4}, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;->a(Landroid/content/Context;Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;)Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    move-result-object v3

    invoke-virtual {v0, p1, p2, v2, v3}, Lcom/alibaba/laiwang/tide/share/business/excutor/wx/WeiXinExecutor;->doShareLocalImage(Ljava/lang/String;Landroid/graphics/Bitmap;ZLcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 4376
    :goto_1
    if-nez v0, :cond_1

    .line 4377
    sget v0, Lgvn$h;->share_fail:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 4378
    const-string/jumbo v0, "share"

    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v3, "wxg"

    aput-object v3, v2, v1

    const-string/jumbo v1, " share failed when call doShareLocalImage"

    aput-object v1, v2, v6

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v5, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4381
    :cond_1
    invoke-static {p2}, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;->a(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 4363
    :catch_0
    move-exception v0

    .line 4364
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4365
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lgvn$h;->unknown_error:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4366
    const-string/jumbo v2, "share"

    new-array v3, v8, [Ljava/lang/String;

    const-string/jumbo v4, "wxg"

    aput-object v4, v3, v1

    const-string/jumbo v4, "local path failed shareLocalImage exception: "

    aput-object v4, v3, v6

    .line 4368
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    .line 4366
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v5, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 4375
    goto :goto_1

    .line 4369
    :catch_1
    move-exception v0

    .line 4370
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 4371
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lgvn$h;->unknown_error:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4372
    const-string/jumbo v2, "share"

    new-array v3, v8, [Ljava/lang/String;

    const-string/jumbo v4, "wxg"

    aput-object v4, v3, v1

    const-string/jumbo v4, "local path failed shareLocalImage OutOfMemoryError: "

    aput-object v4, v3, v6

    .line 4374
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    .line 4372
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v5, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Landroid/graphics/Bitmap;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # [B

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 39
    .line 4177
    const-string/jumbo v0, "wxg"

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4180
    invoke-static {}, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;->getInstance()Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;->getWeiXinExecutor()Lcom/alibaba/laiwang/tide/share/business/excutor/wx/WeiXinExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;->a:Landroid/content/Context;

    new-instance v2, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit$3;

    invoke-direct {v2, p0, p3}, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit$3;-><init>(Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;->a(Landroid/content/Context;Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;)Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    move-result-object v7

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p3

    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/laiwang/tide/share/business/excutor/wx/WeiXinExecutor;->doShareHypeLink(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[BLjava/lang/String;ZLcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;)Z

    move-result v0

    .line 4200
    if-nez v0, :cond_0

    .line 4201
    sget v0, Lgvn$h;->share_fail:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 4202
    const-string/jumbo v0, "share"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v4, "wxg"

    aput-object v4, v1, v2

    const-string/jumbo v2, " share failed when call shareImpl"

    aput-object v2, v1, v6

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 8
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "link"    # Ljava/lang/String;
    .param p4, "bitmap"    # Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 170
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/dingtalk/share/share/ShareManager;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 3136
    :cond_1
    invoke-static {}, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v6

    const-string/jumbo v7, "share-impl-wxg"

    new-instance v0, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit$2;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit$2;-><init>(Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v7, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 174
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 3
    .param p1, "localPath"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 274
    invoke-static {}, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    const-string/jumbo v1, "wxf-compressLocalBitmap"

    new-instance v2, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit$5;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit$5;-><init>(Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 332
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 451
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;->a:Landroid/content/Context;

    .line 452
    return-void
.end method

.method public share(Lcom/alibaba/laiwang/tide/share/business/ShareInfo;)V
    .locals 11
    .param p1, "shareInfo"    # Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 61
    const-string/jumbo v0, "share"

    const-string/jumbo v2, "[WeixinGroupShareUnit] share clicked"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    if-nez p1, :cond_1

    .line 63
    const-string/jumbo v0, "share"

    const-string/jumbo v2, "[WeixinGroupShareUnit] shareInfo is null, cancelShare"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2128
    .end local p1    # "shareInfo":Lcom/alibaba/laiwang/tide/share/business/ShareInfo;
    :cond_0
    :goto_0
    return-void

    .line 66
    .restart local p1    # "shareInfo":Lcom/alibaba/laiwang/tide/share/business/ShareInfo;
    :cond_1
    instance-of v0, p1, Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;

    if-eqz v0, :cond_7

    .line 67
    check-cast p1, Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;

    .line 1209
    .end local p1    # "shareInfo":Lcom/alibaba/laiwang/tide/share/business/ShareInfo;
    const-string/jumbo v0, "share"

    invoke-static {v0, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/trace/Trace;

    move-result-object v0

    .line 1210
    new-array v2, v9, [Ljava/lang/String;

    new-array v3, v8, [Ljava/lang/String;

    const-string/jumbo v4, "wxg"

    aput-object v4, v3, v10

    const-string/jumbo v4, " share img"

    aput-object v4, v3, v9

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/trace/Trace;->info([Ljava/lang/String;)V

    .line 1211
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;->a()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1212
    :cond_2
    new-array v1, v9, [Ljava/lang/String;

    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v3, "wxg"

    aput-object v3, v2, v10

    const-string/jumbo v3, " local path"

    aput-object v3, v2, v9

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/trace/Trace;->info([Ljava/lang/String;)V

    .line 1213
    invoke-interface {v0}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    goto :goto_0

    .line 1216
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;->b()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1217
    iget-object v3, p1, Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1218
    invoke-static {v2}, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;->a(Landroid/graphics/Bitmap;)V

    .line 1219
    new-array v1, v9, [Ljava/lang/String;

    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v3, "wxg"

    aput-object v3, v2, v10

    const-string/jumbo v3, " local path"

    aput-object v3, v2, v9

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/trace/Trace;->info([Ljava/lang/String;)V

    .line 1220
    invoke-interface {v0}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    .line 1221
    iget-object v0, p1, Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 1222
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1223
    invoke-static {v2}, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;->a(Landroid/graphics/Bitmap;)V

    .line 1224
    new-array v2, v9, [Ljava/lang/String;

    new-array v3, v8, [Ljava/lang/String;

    const-string/jumbo v4, "wxg"

    aput-object v4, v3, v10

    const-string/jumbo v4, " url"

    aput-object v4, v3, v9

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/trace/Trace;->info([Ljava/lang/String;)V

    .line 1225
    invoke-interface {v0}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    .line 1391
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1394
    invoke-static {}, Lgvz;->a()Lgvz;

    move-result-object v0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    new-instance v3, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit$7;

    invoke-direct {v3, p0}, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit$7;-><init>(Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;)V

    invoke-virtual {v0, v2, v1, v3}, Lgvz;->a(Landroid/content/Context;Ljava/lang/String;Lcma;)V

    goto/16 :goto_0

    .line 1227
    :cond_5
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;->b()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 1228
    new-array v3, v9, [Ljava/lang/String;

    new-array v4, v8, [Ljava/lang/String;

    const-string/jumbo v5, "wxg"

    aput-object v5, v4, v10

    const-string/jumbo v5, " bitmap"

    aput-object v5, v4, v9

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-interface {v0, v3}, Lcom/alibaba/doraemon/trace/Trace;->info([Ljava/lang/String;)V

    .line 1229
    invoke-interface {v0}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    .line 1230
    const-string/jumbo v0, "wxg"

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1233
    invoke-static {}, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;->getInstance()Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;->getWeiXinExecutor()Lcom/alibaba/laiwang/tide/share/business/excutor/wx/WeiXinExecutor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;->b()Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;->a:Landroid/content/Context;

    new-instance v5, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit$4;

    invoke-direct {v5, p0, v2}, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit$4;-><init>(Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;Landroid/graphics/Bitmap;)V

    invoke-static {v4, v5}, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;->a(Landroid/content/Context;Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;)Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    move-result-object v2

    invoke-virtual {v0, v3, v9, v2}, Lcom/alibaba/laiwang/tide/share/business/excutor/wx/WeiXinExecutor;->doShareByteImage(Landroid/graphics/Bitmap;ZLcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;)Z

    move-result v0

    .line 1257
    if-nez v0, :cond_0

    .line 1258
    sget v0, Lgvn$h;->share_fail:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1259
    const-string/jumbo v0, "share"

    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v3, "wxg"

    aput-object v3, v2, v10

    const-string/jumbo v3, " share failed when call doShareByteImage"

    aput-object v3, v2, v9

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1263
    :cond_6
    new-array v1, v9, [Ljava/lang/String;

    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v3, "wxg"

    aput-object v3, v2, v10

    const-string/jumbo v3, " invalid not share"

    aput-object v3, v2, v9

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/trace/Trace;->info([Ljava/lang/String;)V

    .line 1264
    invoke-interface {v0}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    goto/16 :goto_0

    .line 2074
    .restart local p1    # "shareInfo":Lcom/alibaba/laiwang/tide/share/business/ShareInfo;
    :cond_7
    invoke-virtual {p1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 2075
    invoke-virtual {p1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->getContent()Ljava/lang/String;

    move-result-object v4

    .line 2076
    invoke-virtual {p1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->getLinkUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2080
    instance-of v0, p1, Lcom/alibaba/dingtalk/share/share/ShareManager$b;

    if-eqz v0, :cond_9

    move-object v0, p1

    .line 2081
    check-cast v0, Lcom/alibaba/dingtalk/share/share/ShareManager$b;

    .line 2919
    iget-object v0, v0, Lcom/alibaba/dingtalk/share/share/ShareManager$b;->a:Landroid/graphics/Bitmap;

    .line 2085
    :goto_1
    invoke-virtual {p1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->getPictureUrl()Ljava/lang/String;

    move-result-object v2

    .line 2086
    if-nez v0, :cond_8

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 2088
    const-string/jumbo v0, "REQUEST"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/alibaba/doraemon/request/Request;

    .line 2089
    const-string/jumbo v0, "User-Agent"

    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->b()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Lcom/alibaba/doraemon/request/Request;->setRequestParam(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    .line 2090
    invoke-interface {v6, v9}, Lcom/alibaba/doraemon/request/Request;->setCacheable(Z)Lcom/alibaba/doraemon/request/Request;

    .line 2091
    invoke-interface {v6, v2}, Lcom/alibaba/doraemon/request/Request;->setRequestUrl(Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    .line 2093
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;->b:Ljava/lang/String;

    invoke-interface {v6, v0}, Lcom/alibaba/doraemon/request/Request;->setPerfTag(Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    .line 2094
    const-string/jumbo v0, "share"

    new-array v7, v8, [Ljava/lang/String;

    const-string/jumbo v8, "wxg"

    aput-object v8, v7, v10

    const-string/jumbo v8, " before download"

    aput-object v8, v7, v9

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v1, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2095
    new-instance v0, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit$1;-><init>(Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Lcom/alibaba/doraemon/request/Request;->setResponseReceiver(Lcom/alibaba/doraemon/request/ResponseReceiver;)Lcom/alibaba/doraemon/request/Request;

    .line 2127
    invoke-interface {v6}, Lcom/alibaba/doraemon/request/Request;->start()V

    goto/16 :goto_0

    .line 2129
    :cond_8
    invoke-direct {p0, v3, v4, v5, v0}, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    :cond_9
    move-object v0, v1

    goto :goto_1
.end method
