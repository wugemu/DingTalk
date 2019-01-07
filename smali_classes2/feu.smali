.class public Lfeu;
.super Ljava/lang/Object;
.source "LoadModel.java"


# static fields
.field public static final a:Ljava/lang/String;

.field private static final f:Ljava/lang/String;


# instance fields
.field protected final b:Landroid/app/Activity;

.field c:Lcma;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcma",
            "<",
            "Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;",
            ">;"
        }
    .end annotation
.end field

.field d:Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;

.field e:I

.field private g:Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;

.field private h:J

.field private i:J

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_circle_last_cursor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfeu;->a:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_circle_first_cursor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfeu;->f:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "loadParam"    # Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lfeu;->b:Landroid/app/Activity;

    .line 67
    iput-object p2, p0, Lfeu;->d:Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;

    .line 68
    return-void
.end method

.method static synthetic a(Lfeu;)I
    .locals 1
    .param p0, "x0"    # Lfeu;

    .prologue
    .line 48
    iget v0, p0, Lfeu;->e:I

    return v0
.end method

.method static synthetic a(Lfeu;I)I
    .locals 0
    .param p0, "x0"    # Lfeu;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lfeu;->e:I

    return p1
.end method

.method static synthetic a(Lfeu;Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;)Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;
    .locals 0
    .param p0, "x0"    # Lfeu;
    .param p1, "x1"    # Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;

    .prologue
    .line 48
    iput-object p1, p0, Lfeu;->g:Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;

    return-object p1
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 208
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 234
    :goto_0
    return-void

    .line 2036
    :cond_0
    sget-object v0, Lfdm$a;->a:Lfdk;

    .line 212
    .local v0, "api":Lfdk;
    const-string/jumbo v2, "EVENTBUTLER"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lfeu$3;

    invoke-direct {v3, p0}, Lfeu$3;-><init>(Landroid/app/Activity;)V

    const-class v4, Lcma;

    invoke-interface {v2, v3, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    .line 232
    .local v1, "listener":Lcma;
    invoke-interface {v0, v1}, Lfdk;->a(Lcma;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;J)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "postId"    # J

    .prologue
    .line 237
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 278
    :goto_0
    return-void

    .line 3036
    :cond_0
    sget-object v0, Lfdm$a;->a:Lfdk;

    .line 241
    .local v0, "api":Lfdk;
    const-string/jumbo v2, "EVENTBUTLER"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lfeu$4;

    invoke-direct {v3, p1, p2, p0}, Lfeu$4;-><init>(JLandroid/app/Activity;)V

    const-class v4, Lcma;

    invoke-interface {v2, v3, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    .line 277
    .local v1, "listener":Lcma;
    invoke-interface {v0, p1, p2, v1}, Lfdk;->a(JLcma;)V

    goto :goto_0
.end method

.method static synthetic a(Lfeu;J)V
    .locals 1
    .param p0, "x0"    # Lfeu;
    .param p1, "x1"    # J

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lfeu;->c(J)V

    return-void
.end method

.method static a(J)Z
    .locals 2
    .param p0, "cursor"    # J

    .prologue
    .line 108
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lfeu;Z)Z
    .locals 1
    .param p0, "x0"    # Lfeu;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfeu;->j:Z

    return v0
.end method

.method static synthetic b(Lfeu;)Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;
    .locals 1
    .param p0, "x0"    # Lfeu;

    .prologue
    .line 48
    iget-object v0, p0, Lfeu;->d:Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;

    return-object v0
.end method

.method static synthetic b(Lfeu;Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;)V
    .locals 2
    .param p0, "x0"    # Lfeu;
    .param p1, "x1"    # Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;

    .prologue
    .line 48
    .line 6192
    if-eqz p1, :cond_1

    .line 6193
    invoke-virtual {p1}, Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;->getPosts()Ljava/util/List;

    move-result-object v0

    .line 6194
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6195
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 6196
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6197
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .line 6198
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->isDeleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6199
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 48
    :cond_1
    return-void
.end method

.method static synthetic c(Lfeu;)Lcma;
    .locals 1
    .param p0, "x0"    # Lfeu;

    .prologue
    .line 48
    iget-object v0, p0, Lfeu;->c:Lcma;

    return-object v0
.end method

.method private c(J)V
    .locals 3
    .param p1, "createAt"    # J

    .prologue
    .line 162
    const-string/jumbo v0, "Connection-LoadModel"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lffm;->a(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lfeu$2;

    invoke-direct {v1, p0, p1, p2}, Lfeu$2;-><init>(Lfeu;J)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 189
    return-void
.end method

.method static synthetic d(Lfeu;)Z
    .locals 1
    .param p0, "x0"    # Lfeu;

    .prologue
    .line 48
    iget-boolean v0, p0, Lfeu;->j:Z

    return v0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lfeu;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected a(Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;)V
    .locals 3
    .param p1, "snPostResultObject"    # Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 383
    if-nez p1, :cond_0

    .line 393
    :goto_0
    return-void

    .line 386
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;->getPosts()Ljava/util/List;

    move-result-object v0

    .line 387
    .local v0, "posts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;>;"
    invoke-static {v0}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 388
    const-string/jumbo v1, "load empty posts"

    .line 6060
    const/4 v2, 0x0

    invoke-static {v2, v1}, Lffe;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 392
    :cond_1
    iget-object v1, p0, Lfeu;->b:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->savePostsAsync(Landroid/app/Activity;Ljava/util/List;)V

    goto :goto_0
.end method

.method final a(Lcov;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcov",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 84
    .local p1, "listener":Lcov;, "Lcov<Ljava/lang/Long;>;"
    iget-object v2, p0, Lfeu;->b:Landroid/app/Activity;

    invoke-virtual {p0}, Lfeu;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lfeu;->d:Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;

    .line 1089
    if-eqz p1, :cond_0

    invoke-static {v2}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1090
    :cond_0
    :goto_0
    return-void

    .line 1092
    :cond_1
    const-string/jumbo v0, "Connection-LoadModel"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lffm;->a(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lfeu$1;

    const-wide v4, 0x7fffffffffffffffL

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lfeu$1;-><init>(Landroid/app/Activity;Ljava/lang/String;JLcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;Lcov;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected a(Lfdk;Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;Lcma;)V
    .locals 0
    .param p1, "api"    # Lfdk;
    .param p2, "loadParam"    # Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;
    .param p3, "listener"    # Lcma;

    .prologue
    .line 331
    invoke-interface {p1, p2, p3}, Lfdk;->a(Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;Lcma;)V

    .line 332
    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lfeu;->f:Ljava/lang/String;

    return-object v0
.end method

.method final b(J)V
    .locals 7
    .param p1, "createAt"    # J

    .prologue
    .line 135
    iget-object v3, p0, Lfeu;->d:Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;

    iget-wide v0, v3, Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;->cursor:J

    .line 137
    .local v0, "cursor":J
    invoke-static {v0, v1}, Lfeu;->a(J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 138
    iget-object v3, p0, Lfeu;->d:Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;

    invoke-virtual {v3, p1, p2}, Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;->loadMore(J)V

    .line 139
    invoke-virtual {p0}, Lfeu;->d()V

    .line 159
    :goto_0
    return-void

    .line 148
    :cond_0
    cmp-long v3, v0, p1

    if-lez v3, :cond_1

    .line 149
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "cursor > createAt, while cursor = "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, ". createAt = "

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, "log":Ljava/lang/String;
    invoke-static {v2}, Lffe;->a(Ljava/lang/String;)V

    .line 153
    .end local v2    # "log":Ljava/lang/String;
    :cond_1
    cmp-long v3, p1, v0

    if-nez v3, :cond_2

    .line 154
    iget-object v3, p0, Lfeu;->d:Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;

    invoke-virtual {v3, p1, p2}, Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;->loadMore(J)V

    .line 155
    invoke-virtual {p0}, Lfeu;->d()V

    goto :goto_0

    .line 157
    :cond_2
    invoke-direct {p0, p1, p2}, Lfeu;->c(J)V

    goto :goto_0
.end method

.method final c()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 123
    iget-object v0, p0, Lfeu;->d:Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;

    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;->cursor:J

    .line 124
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lfeu;->h:J

    iput-wide v0, p0, Lfeu;->i:J

    .line 125
    const/4 v0, 0x0

    iput v0, p0, Lfeu;->e:I

    .line 126
    iget-object v0, p0, Lfeu;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lfeu;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcpk;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lfeu;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lfeu;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcpk;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public final d()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 285
    iget-object v2, p0, Lfeu;->b:Landroid/app/Activity;

    invoke-static {v2}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 320
    :goto_0
    return-void

    .line 4036
    :cond_0
    sget-object v0, Lfdm$a;->a:Lfdk;

    .line 289
    .local v0, "api":Lfdk;
    const-string/jumbo v2, "EVENTBUTLER"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lfeu$5;

    invoke-direct {v3, p0}, Lfeu$5;-><init>(Lfeu;)V

    const-class v4, Lcma;

    iget-object v5, p0, Lfeu;->b:Landroid/app/Activity;

    invoke-interface {v2, v3, v4, v5}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    .line 319
    .local v1, "listener":Lcma;
    iget-object v2, p0, Lfeu;->d:Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;

    invoke-virtual {p0, v0, v2, v1}, Lfeu;->a(Lfdk;Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;Lcma;)V

    goto :goto_0
.end method

.method final e()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    .line 335
    .line 5340
    iget-object v0, p0, Lfeu;->g:Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;

    if-nez v0, :cond_3

    .line 5341
    iget-wide v0, p0, Lfeu;->h:J

    .line 4371
    :goto_0
    iget-wide v4, p0, Lfeu;->h:J

    cmp-long v4, v0, v4

    if-eqz v4, :cond_0

    .line 4372
    iget-object v4, p0, Lfeu;->d:Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;

    iput-wide v0, v4, Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;->cursor:J

    .line 4373
    iget-object v4, p0, Lfeu;->b:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lfeu;->a()Ljava/lang/String;

    move-result-object v5

    iput-wide v0, p0, Lfeu;->h:J

    invoke-static {v4, v5, v0, v1}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 5355
    :cond_0
    iget-object v0, p0, Lfeu;->g:Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;

    if-nez v0, :cond_6

    .line 4377
    :cond_1
    :goto_1
    iget-wide v0, p0, Lfeu;->i:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_2

    .line 4378
    iget-object v0, p0, Lfeu;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lfeu;->b()Ljava/lang/String;

    move-result-object v1

    iput-wide v2, p0, Lfeu;->i:J

    invoke-static {v0, v1, v2, v3}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 336
    :cond_2
    iget-object v0, p0, Lfeu;->g:Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;

    invoke-virtual {p0, v0}, Lfeu;->a(Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;)V

    .line 337
    return-void

    .line 5343
    :cond_3
    iget-object v0, p0, Lfeu;->g:Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;

    invoke-virtual {v0}, Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;->getPosts()Ljava/util/List;

    move-result-object v0

    .line 5344
    invoke-static {v0}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5345
    iget-wide v0, p0, Lfeu;->h:J

    goto :goto_0

    .line 5347
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .line 5348
    if-nez v0, :cond_5

    move-wide v0, v2

    .line 5349
    goto :goto_0

    .line 5351
    :cond_5
    iget-wide v0, v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->createAt:J

    goto :goto_0

    .line 5358
    :cond_6
    iget-object v0, p0, Lfeu;->g:Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;

    invoke-virtual {v0}, Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;->getPosts()Ljava/util/List;

    move-result-object v0

    .line 5359
    invoke-static {v0}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5362
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .line 5363
    if-eqz v0, :cond_1

    .line 5366
    iget-wide v2, v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->createAt:J

    goto :goto_1
.end method
