.class public Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit;
.super Lgvu;
.source "SinaWeiboShareUnit.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    new-instance v0, Lgwa;

    invoke-direct {v0}, Lgwa;-><init>()V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lgwa;->d(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lgvu;-><init>(Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;)V

    .line 39
    const-string/jumbo v0, "lwfrom=user_weibo"

    iput-object v0, p0, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit;->b:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit;->a:Landroid/content/Context;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 50
    new-instance v0, Lgwa;

    invoke-direct {v0}, Lgwa;-><init>()V

    invoke-static {p1, p2}, Lgwa;->d(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lgvu;-><init>(Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;)V

    .line 39
    const-string/jumbo v0, "lwfrom=user_weibo"

    iput-object v0, p0, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit;->b:Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit;->a:Landroid/content/Context;

    .line 52
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit;Lcom/alibaba/doraemon/request/RequestInputStream;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit;
    .param p1, "x1"    # Lcom/alibaba/doraemon/request/RequestInputStream;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 37
    .line 3230
    invoke-static {p1}, Lcom/alibaba/doraemon/image/utils/PngUtil;->is9patchSafety(Ljava/io/InputStream;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3248
    :cond_0
    :goto_0
    return-object v0

    .line 3235
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3236
    const-string/jumbo v1, "."

    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 3238
    if-ltz v1, :cond_2

    .line 3239
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3244
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

    .line 3245
    invoke-virtual {p1}, Lcom/alibaba/doraemon/request/RequestInputStream;->toBytes()[B

    move-result-object v0

    invoke-static {v0}, Lixh;->a([B)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3247
    if-nez v0, :cond_0

    .line 3252
    :cond_3
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "link"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "content"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 139
    if-nez p1, :cond_0

    .line 140
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/dingtalk/share/share/ShareManager;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 3146
    :cond_0
    invoke-static {}, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v6

    const-string/jumbo v7, "share-impl-wb"

    new-instance v0, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit$2;-><init>(Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v7, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 143
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit;
    .param p1, "x1"    # Landroid/graphics/Bitmap;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p0, "x0"    # Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit;
    .param p1, "x1"    # Landroid/graphics/Bitmap;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 37
    .line 4181
    const-string/jumbo v0, "share"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/trace/Trace;

    move-result-object v8

    .line 4182
    new-array v0, v4, [Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "wb"

    aput-object v2, v1, v3

    const-string/jumbo v2, " do share"

    aput-object v2, v1, v4

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-interface {v8, v0}, Lcom/alibaba/doraemon/trace/Trace;->info([Ljava/lang/String;)V

    .line 4184
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4186
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4188
    :try_start_0
    invoke-static {}, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;->getInstance()Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;->getSinaExecutor(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;

    move-result-object v0

    new-instance v7, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit$3;

    invoke-direct {v7, p0, p2}, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit$3;-><init>(Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit;Ljava/lang/String;)V

    move-object v1, p3

    move-object v2, p1

    move-object v3, p4

    move-object v4, p4

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;->doShareMultiAttachLink(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4215
    :try_start_1
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4225
    :goto_0
    invoke-interface {v8}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    .line 37
    return-void

    .line 4216
    :catch_0
    move-exception v0

    .line 4217
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 4210
    :catch_1
    move-exception v0

    .line 4211
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4212
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "wb"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, " doShare exception:"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-interface {v8, v1}, Lcom/alibaba/doraemon/trace/Trace;->info([Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4215
    :try_start_3
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 4216
    :catch_2
    move-exception v0

    .line 4217
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 4214
    :catchall_0
    move-exception v0

    .line 4215
    :try_start_4
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 4218
    :goto_1
    throw v0

    .line 4216
    :catch_3
    move-exception v1

    .line 4217
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 4223
    :cond_0
    new-array v0, v4, [Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "wb"

    aput-object v2, v1, v3

    const-string/jumbo v2, " bitmap error"

    aput-object v2, v1, v4

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-interface {v8, v0}, Lcom/alibaba/doraemon/trace/Trace;->info([Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 325
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit;->a:Landroid/content/Context;

    .line 326
    return-void
.end method

.method public share(Lcom/alibaba/laiwang/tide/share/business/ShareInfo;)V
    .locals 11
    .param p1, "shareInfo"    # Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 56
    const-string/jumbo v0, "share"

    const-string/jumbo v2, "[SinaWeiboShareUnit] share clicked"

    invoke-static {v0, v10, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    if-nez p1, :cond_1

    .line 58
    const-string/jumbo v0, "share"

    const-string/jumbo v1, "[SinaWeiboShareUnit] shareInfo is null, cancelShare"

    invoke-static {v0, v10, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2092
    .end local p1    # "shareInfo":Lcom/alibaba/laiwang/tide/share/business/ShareInfo;
    :cond_0
    :goto_0
    return-void

    .line 61
    .restart local p1    # "shareInfo":Lcom/alibaba/laiwang/tide/share/business/ShareInfo;
    :cond_1
    instance-of v0, p1, Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;

    if-eqz v0, :cond_4

    .line 62
    check-cast p1, Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;

    .line 1256
    .end local p1    # "shareInfo":Lcom/alibaba/laiwang/tide/share/business/ShareInfo;
    const-string/jumbo v0, "share"

    invoke-static {v0, v10}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/trace/Trace;

    move-result-object v0

    .line 1257
    new-array v2, v8, [Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "wb"

    aput-object v4, v3, v1

    const-string/jumbo v4, " share img"

    aput-object v4, v3, v8

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/trace/Trace;->info([Ljava/lang/String;)V

    .line 1258
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;->a()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1259
    :cond_2
    new-array v2, v8, [Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "wb"

    aput-object v4, v3, v1

    const-string/jumbo v4, " not ready"

    aput-object v4, v3, v8

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/trace/Trace;->info([Ljava/lang/String;)V

    .line 1260
    invoke-interface {v0}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    goto :goto_0

    .line 1263
    :cond_3
    invoke-interface {v0}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    .line 1264
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1265
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit$4;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit$4;-><init>(Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 2069
    .restart local p1    # "shareInfo":Lcom/alibaba/laiwang/tide/share/business/ShareInfo;
    :cond_4
    const-string/jumbo v0, "share"

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "wb"

    aput-object v3, v2, v1

    const-string/jumbo v3, " share default"

    aput-object v3, v2, v8

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v10, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2070
    if-eqz p1, :cond_0

    .line 2071
    invoke-virtual {p1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 2072
    invoke-virtual {p1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->getContent()Ljava/lang/String;

    move-result-object v5

    .line 2298
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2299
    const-string/jumbo v5, ""

    .line 2073
    :cond_5
    :goto_1
    invoke-virtual {p1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->getLinkUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2074
    invoke-virtual {p1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->getPictureUrl()Ljava/lang/String;

    move-result-object v2

    .line 2077
    instance-of v0, p1, Lcom/alibaba/dingtalk/share/share/ShareManager$b;

    if-eqz v0, :cond_b

    .line 2078
    check-cast p1, Lcom/alibaba/dingtalk/share/share/ShareManager$b;

    .line 2919
    .end local p1    # "shareInfo":Lcom/alibaba/laiwang/tide/share/business/ShareInfo;
    iget-object v0, p1, Lcom/alibaba/dingtalk/share/share/ShareManager$b;->a:Landroid/graphics/Bitmap;

    .line 2080
    if-nez v0, :cond_6

    .line 2081
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/share/share/ShareManager$b;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2944
    :cond_6
    iget-object v1, p1, Lcom/alibaba/dingtalk/share/share/ShareManager$b;->c:Ljava/lang/String;

    .line 2084
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 2085
    invoke-static {v1}, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2087
    :goto_2
    invoke-direct {p0, v0, v1, v4, v5}, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2303
    .restart local p1    # "shareInfo":Lcom/alibaba/laiwang/tide/share/business/ShareInfo;
    :cond_7
    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    move v0, v1

    move v2, v1

    .line 2304
    :goto_3
    array-length v3, v7

    if-ge v0, v3, :cond_5

    .line 2305
    aget-char v3, v7, v0

    const/16 v9, 0x100

    if-le v3, v9, :cond_8

    .line 2307
    add-int/lit8 v2, v2, 0x2

    move v3, v6

    .line 2312
    :goto_4
    const/16 v9, 0x102

    if-ne v2, v9, :cond_9

    .line 2313
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v5, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 2310
    :cond_8
    add-int/lit8 v2, v2, 0x1

    move v3, v8

    goto :goto_4

    .line 2315
    :cond_9
    const/16 v9, 0x103

    if-ne v2, v9, :cond_a

    if-ne v3, v6, :cond_a

    .line 2316
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 2304
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2090
    :cond_b
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2091
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/dingtalk/share/share/ShareManager;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2092
    invoke-direct {p0, v0, v7, v4, v5}, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2094
    :cond_c
    const-string/jumbo v0, "share"

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v6, "wb"

    aput-object v6, v3, v1

    const-string/jumbo v6, " share default picUrl"

    aput-object v6, v3, v8

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v10, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2095
    const-string/jumbo v0, "REQUEST"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/alibaba/doraemon/request/Request;

    .line 2096
    const-string/jumbo v0, "User-Agent"

    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v0, v3}, Lcom/alibaba/doraemon/request/Request;->setRequestParam(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    .line 2097
    invoke-interface {v6, v8}, Lcom/alibaba/doraemon/request/Request;->setCacheable(Z)Lcom/alibaba/doraemon/request/Request;

    .line 2098
    invoke-interface {v6, v2}, Lcom/alibaba/doraemon/request/Request;->setRequestUrl(Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    .line 2100
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit;->b:Ljava/lang/String;

    invoke-interface {v6, v0}, Lcom/alibaba/doraemon/request/Request;->setPerfTag(Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    .line 2104
    new-array v3, v8, [Ljava/lang/String;

    .line 2105
    aput-object v7, v3, v1

    .line 2106
    new-instance v0, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit$1;-><init>(Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Lcom/alibaba/doraemon/request/Request;->setResponseReceiver(Lcom/alibaba/doraemon/request/ResponseReceiver;)Lcom/alibaba/doraemon/request/Request;

    .line 2131
    invoke-interface {v6}, Lcom/alibaba/doraemon/request/Request;->start()V

    goto/16 :goto_0

    .end local p1    # "shareInfo":Lcom/alibaba/laiwang/tide/share/business/ShareInfo;
    :cond_d
    move-object v1, v7

    goto/16 :goto_2
.end method
