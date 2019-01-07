.class public Lade;
.super Ljava/lang/Object;
.source "AvatarManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lade$a;,
        Lade$b;
    }
.end annotation


# static fields
.field private static c:Lade;


# instance fields
.field public a:Ladf;

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/content/Context;

.field private e:Lcom/alibaba/alimei/mail/avatar/AvatarFileCache;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/os/Handler;

.field private h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lade$b;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-object v0, Lade;->c:Lade;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lade;->d:Landroid/content/Context;

    .line 78
    new-instance v0, Ladf;

    invoke-direct {v0}, Ladf;-><init>()V

    iput-object v0, p0, Lade;->a:Ladf;

    .line 79
    new-instance v0, Lcom/alibaba/alimei/mail/avatar/AvatarFileCache;

    invoke-direct {v0, p1}, Lcom/alibaba/alimei/mail/avatar/AvatarFileCache;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lade;->e:Lcom/alibaba/alimei/mail/avatar/AvatarFileCache;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lade;->b:Ljava/util/Map;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lade;->f:Ljava/util/Map;

    .line 82
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lade;->g:Landroid/os/Handler;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lade;->h:Ljava/util/HashMap;

    .line 84
    return-void
.end method

.method public static a(Landroid/content/Context;)Lade;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    sget-object v0, Lade;->c:Lade;

    if-nez v0, :cond_1

    .line 93
    const-class v1, Lade;

    monitor-enter v1

    .line 94
    :try_start_0
    sget-object v0, Lade;->c:Lade;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lade;

    invoke-direct {v0, p0}, Lade;-><init>(Landroid/content/Context;)V

    sput-object v0, Lade;->c:Lade;

    .line 97
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :cond_1
    sget-object v0, Lade;->c:Lade;

    return-object v0

    .line 97
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lade;)Lcom/alibaba/alimei/mail/avatar/AvatarFileCache;
    .locals 1
    .param p0, "x0"    # Lade;

    .prologue
    .line 31
    iget-object v0, p0, Lade;->e:Lcom/alibaba/alimei/mail/avatar/AvatarFileCache;

    return-object v0
.end method

.method public static a(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "avatarDpSize"    # I
    .param p1, "targetEmail"    # Ljava/lang/String;

    .prologue
    .line 121
    if-nez p1, :cond_0

    .line 122
    const-string/jumbo p1, ""

    .line 124
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 126
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 127
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "key":Ljava/lang/String;
    return-object v0
.end method

.method static synthetic a(Lade;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lade;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-static {p1, p2}, Lade;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lade$b;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 2
    .param p1, "listener"    # Lade$b;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "targetEmail"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 104
    if-eqz p1, :cond_0

    .line 105
    iget-object v0, p0, Lade;->g:Landroid/os/Handler;

    new-instance v1, Lade$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lade$1;-><init>(Lade;Lade$b;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 112
    :cond_0
    return-void
.end method

.method static synthetic a(Lade;Lade$b;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lade;
    .param p1, "x1"    # Lade$b;
    .param p2, "x2"    # Landroid/graphics/Bitmap;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lade;->a(Lade$b;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lade;Ljava/lang/String;)V
    .locals 3
    .param p0, "x0"    # Lade;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 31
    .line 4355
    iget-object v1, p0, Lade;->h:Ljava/util/HashMap;

    monitor-enter v1

    .line 4356
    :try_start_0
    iget-object v0, p0, Lade;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 4357
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4358
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4360
    :cond_0
    iget-object v0, p0, Lade;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4361
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lade;Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p0, "x0"    # Lade;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 31
    .line 3366
    invoke-static {p2, p1}, Lade;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3367
    iget-object v1, p0, Lade;->d:Landroid/content/Context;

    const-string/jumbo v2, "etag"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3368
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 31
    return-void
.end method

.method static synthetic a(Lade;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 4
    .param p0, "x0"    # Lade;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/graphics/Bitmap;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 31
    .line 3342
    iget-object v2, p0, Lade;->h:Ljava/util/HashMap;

    monitor-enter v2

    .line 3343
    :try_start_0
    iget-object v0, p0, Lade;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 3344
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_1

    .line 3345
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lade$b;

    .line 3346
    invoke-direct {p0, v1, p2, p3}, Lade;->a(Lade$b;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_0

    .line 3351
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3348
    :cond_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3350
    :cond_1
    iget-object v0, p0, Lade;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3351
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method static synthetic a(Lade;Ljava/lang/String;Ljava/lang/String;ILade$b;)V
    .locals 9
    .param p0, "x0"    # Lade;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # Lade$b;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 31
    .line 2167
    invoke-static {p3, p2}, Lade;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2168
    iget-object v0, p0, Lade;->f:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2170
    iget-object v0, p0, Lade;->f:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, v4, v0

    const-wide/32 v4, 0x112a880

    cmp-long v0, v0, v4

    if-ltz v0, :cond_1

    .line 2175
    :cond_0
    new-instance v0, Lade$3;

    move-object v1, p0

    move v3, p3

    move-object v4, p2

    move-object v5, p1

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lade$3;-><init>(Lade;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lade$b;)V

    .line 2219
    iget-object v1, p0, Lade;->e:Lcom/alibaba/alimei/mail/avatar/AvatarFileCache;

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/mail/avatar/AvatarFileCache;->a(Ljava/lang/String;)Z

    move-result v1

    .line 2220
    if-eqz v1, :cond_2

    .line 2373
    invoke-static {p3, p2}, Lade;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2374
    iget-object v2, p0, Lade;->d:Landroid/content/Context;

    const-string/jumbo v3, "etag"

    invoke-virtual {v2, v3, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2375
    invoke-interface {v2, v1, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2221
    :goto_0
    iget-object v1, p0, Lade;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    int-to-float v2, p3

    mul-float/2addr v1, v2

    float-to-int v4, v1

    .line 2222
    invoke-static {p1, v8}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getAttachmentService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcAttachmentService;

    move-result-object v1

    move-object v2, p2

    move-object v3, v7

    move-object v6, v0

    .line 2223
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/alimei/restfulapi/service/RpcAttachmentService;->downloadAvatarByMail(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    .line 31
    :cond_1
    return-void

    :cond_2
    move-object v5, v7

    .line 2220
    goto :goto_0
.end method

.method static synthetic a(Lade;Ljava/lang/String;Ljava/lang/String;ILade$b;Z)V
    .locals 6
    .param p0, "x0"    # Lade;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # Lade$b;
    .param p5, "x5"    # Z

    .prologue
    .line 31
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lade;->a(Ljava/lang/String;Ljava/lang/String;ILade$b;Z)V

    return-void
.end method

.method static synthetic b(Lade;)Ladf;
    .locals 1
    .param p0, "x0"    # Lade;

    .prologue
    .line 31
    iget-object v0, p0, Lade;->a:Ladf;

    return-object v0
.end method

.method static synthetic c(Lade;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lade;

    .prologue
    .line 31
    iget-object v0, p0, Lade;->b:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic d(Lade;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lade;

    .prologue
    .line 31
    iget-object v0, p0, Lade;->f:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic e(Lade;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lade;

    .prologue
    .line 31
    iget-object v0, p0, Lade;->h:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;ILade$b;Z)V
    .locals 9
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "targetEmail"    # Ljava/lang/String;
    .param p3, "avatarDpSize"    # I
    .param p4, "listener"    # Lade$b;
    .param p5, "isAsynchronous"    # Z

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 253
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 254
    const/4 v1, 0x0

    invoke-interface {p4, v1, p2}, Lade$b;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    invoke-static {p3, p2}, Lade;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 260
    .local v7, "key":Ljava/lang/String;
    iget-object v1, p0, Lade;->a:Ladf;

    invoke-virtual {v1, p3, v7}, Ladf;->a(ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 261
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_2

    .line 262
    invoke-direct {p0, p4, v6, p2}, Lade;->a(Lade$b;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_0

    .line 1379
    :cond_2
    iget-object v1, p0, Lade;->f:Ljava/util/Map;

    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1380
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1381
    iget-object v1, p0, Lade;->f:Ljava/util/Map;

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x112a880

    cmp-long v1, v2, v4

    if-gez v1, :cond_3

    .line 1382
    const/4 v1, 0x0

    .line 266
    :goto_1
    if-eqz v1, :cond_0

    .line 271
    new-instance v0, Lade$a;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lade$a;-><init>(Lade;Ljava/lang/String;Ljava/lang/String;ILade$b;)V

    .line 274
    .local v0, "task":Lade$a;
    if-eqz p5, :cond_4

    .line 275
    sget-object v1, Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;->NORMAL:Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;

    invoke-static {v1}, Laif;->a(Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;)Laie;

    move-result-object v8

    .line 276
    .local v8, "thread":Laie;
    invoke-interface {v8, v0}, Laie;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1386
    .end local v0    # "task":Lade$a;
    .end local v8    # "thread":Laie;
    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    .line 278
    .restart local v0    # "task":Lade$a;
    :cond_4
    invoke-virtual {v0}, Lade$a;->run()V

    goto :goto_0
.end method
