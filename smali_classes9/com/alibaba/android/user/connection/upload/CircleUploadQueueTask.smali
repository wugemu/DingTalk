.class public final Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask;
.super Ljava/lang/Object;
.source "CircleUploadQueueTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask$CircleUploadResponse;,
        Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask$b;,
        Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask$a;
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask$b;

.field private c:I

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/concurrent/atomic/AtomicInteger;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lifx;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask;->d:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask;->f:Ljava/util/List;

    .line 55
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask;-><init>()V

    return-void
.end method

.method public static a()Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask;
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask$a;->a()Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask;Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask;
    .param p1, "x1"    # Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    .prologue
    .line 40
    .line 4309
    invoke-static {}, Lfdo;->a()Lfdo;

    move-result-object v2

    .line 4310
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lfdo;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 4312
    const/4 v3, 0x0

    iget-object v1, p1, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->url:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->url:Ljava/lang/String;

    :goto_0
    aput-object v1, v0, v3

    .line 4314
    new-instance v1, Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask$3;

    invoke-direct {v1, p0, v0, v2}, Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask$3;-><init>(Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask;[Ljava/lang/String;Lfdo;)V

    invoke-static {v1}, Lfds;->a(Ljava/lang/Runnable;)V

    .line 40
    return-void

    .line 4312
    :cond_0
    iget-object v1, p1, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->originUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask;->d:Ljava/util/List;

    return-object v0
.end method

.method private c()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v10, 0x1

    .line 112
    iget-object v1, p0, Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    .line 1251
    .local v0, "photo":Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    if-eqz v0, :cond_0

    .line 1254
    new-instance v3, Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask$1;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask$1;-><init>(Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask;Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;)V

    .line 1281
    iget-object v1, v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->originUrl:Ljava/lang/String;

    .line 1282
    :goto_1
    invoke-static {v1}, Lcom/alibaba/doraemon/utils/FileUtils;->isLocalFile(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1283
    invoke-static {v1}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1284
    invoke-static {v1}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1285
    new-instance v4, Lifx;

    invoke-direct {v4}, Lifx;-><init>()V

    .line 2030
    iput-object v1, v4, Lifx;->a:Ljava/lang/String;

    .line 1287
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v5, Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask$2;

    invoke-direct {v5, p0, v3, v4}, Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask$2;-><init>(Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask;Lifv;Lifx;)V

    invoke-virtual {v1, v5}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1281
    :cond_1
    iget-object v1, v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->url:Ljava/lang/String;

    goto :goto_1

    .line 1295
    :cond_2
    new-instance v4, Lcom/alibaba/wukong/upload/UploadParams;

    invoke-direct {v4}, Lcom/alibaba/wukong/upload/UploadParams;-><init>()V

    .line 2058
    iput-object v1, v4, Lcom/alibaba/wukong/upload/UploadParams;->a:Ljava/lang/String;

    .line 2090
    iput-boolean v10, v4, Lcom/alibaba/wukong/upload/UploadParams;->e:Z

    .line 1298
    sget-object v5, Lcom/alibaba/wukong/upload/UploadParams$AuthType;->STRICT_AUTH:Lcom/alibaba/wukong/upload/UploadParams$AuthType;

    invoke-virtual {v4, v5}, Lcom/alibaba/wukong/upload/UploadParams;->a(Lcom/alibaba/wukong/upload/UploadParams$AuthType;)V

    .line 1299
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/32 v8, 0x100000

    cmp-long v1, v6, v8

    if-ltz v1, :cond_3

    .line 3074
    iput-boolean v10, v4, Lcom/alibaba/wukong/upload/UploadParams;->c:Z

    .line 1304
    :goto_2
    invoke-static {}, Lify;->a()Lify;

    move-result-object v1

    .line 4128
    const/4 v5, 0x0

    invoke-virtual {v1, v4, v3, v5}, Lify;->a(Lcom/alibaba/wukong/upload/UploadParams;Lifv;Lifu;)V

    goto :goto_0

    .line 1302
    :cond_3
    const/4 v1, 0x0

    .line 4074
    iput-boolean v1, v4, Lcom/alibaba/wukong/upload/UploadParams;->c:Z

    goto :goto_2

    .line 115
    .end local v0    # "photo":Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    :cond_4
    return-void
.end method

.method private d()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 195
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "connection_on_upload_files_success"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask;->f:Ljava/util/List;

    invoke-static {v2}, Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask$CircleUploadResponse;->getFrom(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    .line 198
    .local v1, "uploadResponses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask$CircleUploadResponse;>;"
    invoke-static {v1}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 199
    const-string/jumbo v2, "connection_on_upload_files_success"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 201
    :cond_0
    invoke-static {}, Lffg;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    invoke-virtual {v2, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 202
    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask;

    .prologue
    const/4 v2, 0x0

    .line 40
    .line 5205
    iget-object v0, p0, Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask;->a:Ljava/util/List;

    if-nez v0, :cond_1

    .line 5207
    invoke-direct {p0}, Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask;->d()V

    .line 5209
    iput-object v2, p0, Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask;->a:Ljava/util/List;

    .line 5244
    :cond_0
    :goto_0
    return-void

    .line 5216
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 5219
    iget-object v0, p0, Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 5221
    invoke-direct {p0}, Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask;->d()V

    .line 5223
    iput-object v2, p0, Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask;->a:Ljava/util/List;

    .line 5224
    iget-object v0, p0, Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask;->b:Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask$b;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5234
    :cond_2
    iget v0, p0, Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask;->c:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_3

    .line 5236
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "connection_on_upload_files_failed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5237
    const-string/jumbo v1, "connection_on_upload_files_failed"

    iget-object v2, p0, Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5238
    invoke-static {}, Lffg;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 5240
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask;->b()V

    .line 5241
    iget-object v0, p0, Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask;->b:Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask$b;

    if-eqz v0, :cond_0

    .line 5242
    iget-object v0, p0, Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask;->b:Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask$b;

    invoke-interface {v0}, Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask$b;->a()V

    goto :goto_0

    .line 5247
    :cond_3
    invoke-direct {p0}, Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask;->c()V

    goto :goto_0
.end method

.method static synthetic e(Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask;->g:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 87
    iget-object v0, p0, Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 88
    iget-object v0, p0, Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 89
    return-void
.end method

.method public final run()V
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask;->c:I

    .line 107
    invoke-direct {p0}, Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask;->c()V

    .line 108
    return-void
.end method
