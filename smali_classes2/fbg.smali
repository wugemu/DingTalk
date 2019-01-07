.class public Lfbg;
.super Ljava/lang/Object;
.source "UserProfileImpl.java"

# interfaces
.implements Lfac;


# static fields
.field private static volatile b:Lfac;


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-object v0, Lfbg;->b:Lfac;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lfbg;->a:Landroid/os/Handler;

    .line 53
    return-void
.end method

.method private a(Lcma;Ljava/util/List;)Lcma;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;)",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 212
    .local p1, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;>;"
    .local p2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    new-instance v0, Lfbg$7;

    invoke-direct {v0, p0, p2, p1}, Lfbg$7;-><init>(Lfbg;Ljava/util/List;Lcma;)V

    return-object v0
.end method

.method static synthetic a(Lfbg;Lcma;Ljava/util/List;)Lcma;
    .locals 1
    .param p0, "x0"    # Lfbg;
    .param p1, "x1"    # Lcma;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lfbg;->a(Lcma;Ljava/util/List;)Lcma;

    move-result-object v0

    return-object v0
.end method

.method public static a()Lfac;
    .locals 2

    .prologue
    .line 444
    sget-object v0, Lfbg;->b:Lfac;

    if-nez v0, :cond_1

    .line 445
    const-class v1, Lfac;

    monitor-enter v1

    .line 446
    :try_start_0
    sget-object v0, Lfbg;->b:Lfac;

    if-nez v0, :cond_0

    .line 447
    new-instance v0, Lfbg;

    invoke-direct {v0}, Lfbg;-><init>()V

    sput-object v0, Lfbg;->b:Lfac;

    .line 449
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    :cond_1
    sget-object v0, Lfbg;->b:Lfac;

    return-object v0

    .line 449
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lfbg;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .param p0, "x0"    # Lfbg;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 44
    .line 19297
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 19298
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v2

    .line 19299
    :goto_0
    return-object v0

    .line 19301
    :cond_1
    invoke-static {}, Lcom/alibaba/android/user/internal/IMContextEngine;->a()Lcom/alibaba/android/user/internal/IMContextEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/user/internal/IMContextEngine;->e()Lfbn;

    move-result-object v4

    .line 20063
    iget-object v0, v4, Lfbn;->a:Lfbn$a;

    .line 20327
    iget-object v0, v0, Lfbn$a;->b:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->size()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x1

    .line 19302
    :goto_1
    if-nez v0, :cond_5

    .line 19303
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 19304
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 19305
    if-eqz v1, :cond_2

    .line 21055
    iget-object v6, v4, Lfbn;->a:Lfbn$a;

    .line 21374
    const/4 v3, 0x0

    .line 21376
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 21378
    iget-object v0, v6, Lfbn$a;->b:Landroid/util/LruCache;

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 21379
    if-eqz v0, :cond_6

    .line 21380
    iget-object v3, v6, Lfbn$a;->a:Landroid/util/LruCache;

    invoke-virtual {v3, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 21383
    if-nez v0, :cond_3

    .line 21384
    iget-object v3, v6, Lfbn$a;->b:Landroid/util/LruCache;

    invoke-virtual {v3, v1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19307
    :cond_3
    :goto_3
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isActive:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isActive:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isStale()Z

    move-result v1

    if-nez v1, :cond_2

    .line 19308
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19309
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 20327
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 19314
    :cond_5
    invoke-virtual {v4, v2, p1}, Lfbn;->a(Ljava/util/List;Ljava/util/List;)V

    move-object v0, v2

    .line 44
    goto :goto_0

    :cond_6
    move-object v0, v3

    goto :goto_3
.end method

.method static synthetic a(Lfbg;Ljava/util/List;Z)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lfbg;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z

    .prologue
    .line 44
    invoke-static {p1, p2}, Lfbg;->a(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/List;Z)Ljava/util/List;
    .locals 8
    .param p1, "refreshUnActive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 271
    .local p0, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 272
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    invoke-static {}, Lcom/alibaba/android/user/internal/IMContextEngine;->a()Lcom/alibaba/android/user/internal/IMContextEngine;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/android/user/internal/IMContextEngine;->e()Lfbn;

    move-result-object v0

    .line 3059
    .local v0, "cache":Lfbn;
    iget-object v5, v0, Lfbn;->a:Lfbn$a;

    .line 3320
    iget-object v5, v5, Lfbn$a;->a:Landroid/util/LruCache;

    invoke-virtual {v5}, Landroid/util/LruCache;->size()I

    move-result v5

    if-lez v5, :cond_1

    const/4 v5, 0x1

    .line 273
    :goto_0
    if-nez v5, :cond_2

    .line 275
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 277
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 279
    .local v4, "uid":Ljava/lang/Long;
    if-eqz v4, :cond_0

    .line 280
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lfbn;->b(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v3

    .line 281
    .local v3, "localObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v3, :cond_0

    iget-object v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isActive:Ljava/lang/Boolean;

    if-eqz v5, :cond_0

    iget-object v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isActive:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isStale()Z

    move-result v5

    if-nez v5, :cond_0

    .line 282
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 3320
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    .end local v3    # "localObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .end local v4    # "uid":Ljava/lang/Long;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 289
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 290
    invoke-static {}, Lcom/alibaba/android/user/internal/IMContextEngine;->a()Lcom/alibaba/android/user/internal/IMContextEngine;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/android/user/internal/IMContextEngine;->e()Lfbn;

    move-result-object v5

    invoke-virtual {v5, v2, p0, p1}, Lfbn;->a(Ljava/util/List;Ljava/util/List;Z)V

    .line 293
    :cond_3
    return-object v2
.end method

.method static synthetic a(Lfbg;Ljava/lang/Object;Lcma;)V
    .locals 2
    .param p0, "x0"    # Lfbg;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Lcma;

    .prologue
    .line 44
    .line 18456
    iget-object v0, p0, Lfbg;->a:Landroid/os/Handler;

    new-instance v1, Lfbg$10;

    invoke-direct {v1, p0, p2, p1}, Lfbg$10;-><init>(Lfbg;Lcma;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 44
    return-void
.end method

.method private static b()Lcom/alibaba/doraemon/threadpool/Thread;
    .locals 2

    .prologue
    .line 56
    const-string/jumbo v1, "UserProfileAPI"

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    .line 57
    .local v0, "thread":Lcom/alibaba/doraemon/threadpool/Thread;
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setGroupConcurrents(I)V

    .line 58
    return-object v0
.end method


# virtual methods
.method public final a(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .locals 5
    .param p1, "uid"    # J

    .prologue
    .line 63
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gtz v1, :cond_1

    const/4 v0, 0x0

    .line 88
    :cond_0
    :goto_0
    return-object v0

    .line 65
    :cond_1
    invoke-static {}, Lcom/alibaba/android/user/internal/IMContextEngine;->a()Lcom/alibaba/android/user/internal/IMContextEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/user/internal/IMContextEngine;->e()Lfbn;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lfbn;->b(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v0

    .line 66
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isStale()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    :cond_2
    invoke-static {}, Lfbg;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Lfbg$1;

    invoke-direct {v2, p0, v0, p1, p2}, Lfbg$1;-><init>(Lfbg;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;J)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 123
    .local p1, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 124
    .local v0, "localUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lfbg;->a(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public final declared-synchronized a(JJ)V
    .locals 7
    .param p1, "uid"    # J
    .param p3, "ver"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 539
    monitor-enter p0

    cmp-long v0, p1, v2

    if-lez v0, :cond_0

    cmp-long v0, p3, v2

    if-lez v0, :cond_0

    .line 540
    :try_start_0
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_user_use_profile_version_check"

    .line 18083
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lchx;->a(Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 540
    if-nez v0, :cond_1

    .line 562
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 543
    :cond_1
    :try_start_1
    const-string/jumbo v0, "updateUserProfileVersion"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v6

    .line 544
    .local v6, "thread":Lcom/alibaba/doraemon/threadpool/Thread;
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->setGroupConcurrents(I)V

    .line 545
    new-instance v0, Lfbg$3;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lfbg$3;-><init>(Lfbg;JJ)V

    invoke-interface {v6, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 539
    .end local v6    # "thread":Lcom/alibaba/doraemon/threadpool/Thread;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(JJLcma;)V
    .locals 5
    .param p1, "uid"    # J
    .param p3, "oid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;>;"
    const-wide/16 v2, 0x0

    .line 321
    cmp-long v1, p1, v2

    if-gtz v1, :cond_0

    .line 324
    :goto_0
    return-void

    .line 322
    :cond_0
    cmp-long v1, p3, v2

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 3656
    .local v0, "_oid":Ljava/lang/Long;
    :goto_1
    sget-object v1, Lfbk$a;->a:Lfbk;

    .line 323
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 4518
    new-instance v3, Lfbk$6;

    invoke-direct {v3, v1, p5}, Lfbk$6;-><init>(Lfbk;Lcma;)V

    .line 4525
    const-class v1, Lcom/alibaba/android/user/idl/services/UserMixIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/UserMixIService;

    .line 4526
    invoke-interface {v1, v2, v0, v3}, Lcom/alibaba/android/user/idl/services/UserMixIService;->getUserProfileExtensionByUid(Ljava/lang/Long;Ljava/lang/Long;Liyv;)V

    goto :goto_0

    .line 322
    .end local v0    # "_oid":Ljava/lang/Long;
    :cond_1
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_1
.end method

.method public final a(JLcma;)V
    .locals 3
    .param p1, "uid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p3, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    if-nez p3, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    invoke-static {}, Lfbg;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lfbg$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lfbg$4;-><init>(Lfbg;JLcma;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Lcjo$a;)V
    .locals 1
    .param p1, "listener"    # Lcjo$a;

    .prologue
    .line 400
    invoke-static {}, Lcom/alibaba/android/user/internal/IMContextEngine;->a()Lcom/alibaba/android/user/internal/IMContextEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/user/internal/IMContextEngine;->e()Lfbn;

    move-result-object v0

    .line 12259
    iget-object v0, v0, Lfbn;->b:Lcjp;

    invoke-virtual {v0, p1}, Lcjp;->a(Lcjo$a;)V

    .line 401
    return-void
.end method

.method public final a(Lcma;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 483
    .local p1, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;>;"
    new-instance v0, Lfbg$11;

    invoke-direct {v0, p0, p1}, Lfbg$11;-><init>(Lfbg;Lcma;)V

    .line 491
    .local v0, "handler":Lcmg;, "Lcmg<Lcdz;Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/UserIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/UserIService;

    .line 492
    .local v1, "userIService":Lcom/alibaba/android/user/idl/services/UserIService;
    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 493
    const-string/jumbo v2, "CODE001"

    const-string/jumbo v3, "INVALID ARGUMENTS"

    invoke-interface {p1, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    :goto_0
    return-void

    .line 496
    :cond_0
    invoke-interface {v1, v0}, Lcom/alibaba/android/user/idl/services/UserIService;->getUserIndustry(Liyv;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Lcma;)V
    .locals 6
    .param p1, "userProfile"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 379
    .local p2, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    if-nez p1, :cond_0

    .line 9080
    :goto_0
    return-void

    .line 8656
    :cond_0
    sget-object v1, Lfbk$a;->a:Lfbk;

    .line 9037
    new-instance v2, Lfbk$1;

    invoke-direct {v2, v1, p2, p2}, Lfbk$1;-><init>(Lfbk;Lcma;Lcma;)V

    .line 9076
    const-class v0, Lcom/alibaba/android/user/idl/services/UserIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/idl/services/UserIService;

    .line 9077
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->toIDLModel()Lcgk;

    move-result-object v3

    .line 9078
    iget-object v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    invoke-static {v4}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcgk;->e:Ljava/lang/String;

    .line 9079
    invoke-static {}, Lcom/alibaba/android/user/internal/IMContextEngine;->a()Lcom/alibaba/android/user/internal/IMContextEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/user/internal/IMContextEngine;->f()Z

    move-result v4

    if-nez v4, :cond_1

    .line 9080
    const-string/jumbo v4, "IMContextEngine"

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v4

    new-instance v5, Lfbk$11;

    invoke-direct {v5, v1, v0, v3, v2}, Lfbk$11;-><init>(Lfbk;Lcom/alibaba/android/user/idl/services/UserIService;Lcgk;Lcmg;)V

    invoke-interface {v4, v5}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 9088
    :cond_1
    invoke-interface {v0, v3, v2}, Lcom/alibaba/android/user/idl/services/UserIService;->updateUserProfile(Lcgk;Liyv;)V

    goto :goto_0
.end method

.method public final a(Lfrs;Lcma;)V
    .locals 4
    .param p1, "feedbackObject"    # Lfrs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfrs;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 410
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    new-instance v0, Lfbg$9;

    invoke-direct {v0, p0, p2}, Lfbg$9;-><init>(Lfbg;Lcma;)V

    .line 413
    .local v0, "handler":Lcme;, "Lcme<Ljava/lang/Void;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/UserIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/UserIService;

    .line 13026
    .local v1, "userIService":Lcom/alibaba/android/user/idl/services/UserIService;
    new-instance v2, Lfou;

    invoke-direct {v2}, Lfou;-><init>()V

    .line 13027
    iget-object v3, p1, Lfrs;->a:Ljava/lang/String;

    iput-object v3, v2, Lfou;->a:Ljava/lang/String;

    .line 13028
    iget-object v3, p1, Lfrs;->c:Ljava/util/List;

    iput-object v3, v2, Lfou;->b:Ljava/util/List;

    .line 13029
    iget-object v3, p1, Lfrs;->b:Ljava/lang/String;

    iput-object v3, v2, Lfou;->c:Ljava/lang/String;

    .line 414
    invoke-interface {v1, v2, v0}, Lcom/alibaba/android/user/idl/services/UserIService;->addUserFeedback(Lfou;Liyv;)V

    .line 415
    return-void
.end method

.method public final a(Ljava/lang/String;JLcma;)V
    .locals 4
    .param p1, "staffid"    # Ljava/lang/String;
    .param p2, "oid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 348
    .local p4, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;>;"
    if-nez p1, :cond_0

    .line 375
    :goto_0
    return-void

    .line 349
    :cond_0
    new-instance v0, Lfbg$8;

    invoke-direct {v0, p0, p4}, Lfbg$8;-><init>(Lfbg;Lcma;)V

    .line 7656
    .local v0, "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;>;"
    sget-object v1, Lfbk$a;->a:Lfbk;

    .line 374
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 8533
    new-instance v3, Lfbk$7;

    invoke-direct {v3, v1, v0}, Lfbk$7;-><init>(Lfbk;Lcma;)V

    .line 8540
    const-class v1, Lcom/alibaba/android/user/idl/services/UserMixIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/UserMixIService;

    .line 8541
    invoke-interface {v1, p1, v2, v3}, Lcom/alibaba/android/user/idl/services/UserMixIService;->getUserProfileExtensionByStaffId(Ljava/lang/String;Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcma;)V
    .locals 2
    .param p1, "mobile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 4656
    .local p2, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;>;"
    sget-object v0, Lfbk$a;->a:Lfbk;

    .line 5436
    new-instance v1, Lfbk$23;

    invoke-direct {v1, v0, p2}, Lfbk$23;-><init>(Lfbk;Lcma;)V

    .line 5444
    const-class v0, Lcom/alibaba/android/user/idl/services/UserMixIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/idl/services/UserMixIService;

    .line 5445
    invoke-interface {v0, p1, v1}, Lcom/alibaba/android/user/idl/services/UserMixIService;->getUserProfileExtensionByMobile(Ljava/lang/String;Liyv;)V

    .line 329
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;ILcma;)V
    .locals 7
    .param p1, "stateCode"    # Ljava/lang/String;
    .param p2, "mobile"    # Ljava/lang/String;
    .param p3, "timeout"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 6656
    .local p4, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    sget-object v1, Lfbk$a;->a:Lfbk;

    .line 7449
    new-instance v5, Lfbk$2;

    invoke-direct {v5, v1, p4, p3}, Lfbk$2;-><init>(Lfbk;Lcma;I)V

    .line 7469
    const-class v0, Lcom/alibaba/android/user/idl/services/UserMixIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/user/idl/services/UserMixIService;

    .line 7470
    invoke-static {}, Lcom/alibaba/android/user/internal/IMContextEngine;->a()Lcom/alibaba/android/user/internal/IMContextEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/user/internal/IMContextEngine;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7471
    const-string/jumbo v0, "IMContextEngine"

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v6

    new-instance v0, Lfbk$3;

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lfbk$3;-><init>(Lfbk;Lcom/alibaba/android/user/idl/services/UserMixIService;Ljava/lang/String;Ljava/lang/String;Lcmg;)V

    invoke-interface {v6, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    .line 7479
    :cond_0
    invoke-interface {v2, p1, p2, v5}, Lcom/alibaba/android/user/idl/services/UserMixIService;->searchUserProfileByMobile(Ljava/lang/String;Ljava/lang/String;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 2
    .param p1, "mobile"    # Ljava/lang/String;
    .param p2, "smsCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 14656
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    sget-object v0, Lfbk$a;->a:Lfbk;

    .line 15630
    new-instance v1, Lfbk$12;

    invoke-direct {v1, v0, p3}, Lfbk$12;-><init>(Lfbk;Lcma;)V

    .line 15636
    const-class v0, Lcom/alibaba/android/user/idl/services/UserIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/idl/services/UserIService;

    .line 15637
    invoke-interface {v0, p1, p2, v1}, Lcom/alibaba/android/user/idl/services/UserIService;->changeMobileV2(Ljava/lang/String;Ljava/lang/String;Liyv;)V

    .line 435
    return-void
.end method

.method public final a(Ljava/util/List;Lcma;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p2, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lfbg;->a(Ljava/util/List;Lcma;Z)V

    .line 115
    return-void
.end method

.method public final a(Ljava/util/List;Lcma;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1656
    .local p1, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p2, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;>;"
    .local p3, "result":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    sget-object v0, Lfbk$a;->a:Lfbk;

    .line 207
    invoke-direct {p0, p2, p3}, Lfbg;->a(Lcma;Ljava/util/List;)Lcma;

    move-result-object v1

    .line 2201
    new-instance v2, Lfbk$19;

    invoke-direct {v2, v0, v1, p1}, Lfbk$19;-><init>(Lfbk;Lcma;Ljava/util/List;)V

    .line 2297
    invoke-static {}, Lcom/alibaba/android/user/internal/IMContextEngine;->a()Lcom/alibaba/android/user/internal/IMContextEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/user/internal/IMContextEngine;->f()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2298
    const-string/jumbo v1, "IMContextEngine"

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v3, Lfbk$20;

    invoke-direct {v3, v0, v2}, Lfbk$20;-><init>(Lfbk;Lon;)V

    invoke-interface {v1, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    .line 2306
    :cond_0
    invoke-virtual {v0, v2}, Lfbk;->a(Lon;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;Lcma;Z)V
    .locals 1
    .param p3, "quickResult"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;>;Z)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p2, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lfbg;->a(Ljava/util/List;Lcma;ZZ)V

    .line 119
    return-void
.end method

.method public final a(Ljava/util/List;Lcma;ZZ)V
    .locals 7
    .param p3, "quickResult"    # Z
    .param p4, "refreshUnActive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;>;ZZ)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 136
    .local p1, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p2, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_2

    .line 137
    :cond_0
    if-eqz p2, :cond_1

    .line 138
    const-string/jumbo v0, "CODE001"

    const-string/jumbo v1, "INVALID ARGUMENTS"

    invoke-interface {p2, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :cond_1
    :goto_0
    return-void

    .line 143
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v3, "currentUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 147
    invoke-static {}, Lfbg;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v6

    new-instance v0, Lfbg$5;

    move-object v1, p0

    move v2, p3

    move v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lfbg$5;-><init>(Lfbg;ZLjava/util/List;ZLcma;)V

    invoke-interface {v6, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;ZLcma;)V
    .locals 5
    .param p2, "supportFixLine"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;Z",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 13656
    .local p1, "identities":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .local p3, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;>;"
    sget-object v0, Lfbk$a;->a:Lfbk;

    .line 14596
    new-instance v2, Lfbk$10;

    invoke-direct {v2, v0, p3}, Lfbk$10;-><init>(Lfbk;Lcma;)V

    .line 14611
    const-class v0, Lcom/alibaba/android/user/idl/services/UserMixIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/idl/services/UserMixIService;

    .line 14612
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 14613
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 14614
    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->toIDL(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Lcgd;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14616
    :cond_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v3, v1, v2}, Lcom/alibaba/android/user/idl/services/UserMixIService;->createUsersByIdentitiesV2(Ljava/util/List;Ljava/lang/Boolean;Liyv;)V

    .line 425
    return-void
.end method

.method public final b(JLcma;)V
    .locals 5
    .param p1, "uid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17656
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    sget-object v0, Lfbk$a;->a:Lfbk;

    .line 17672
    new-instance v1, Lfbk$15;

    invoke-direct {v1, v0, p3}, Lfbk$15;-><init>(Lfbk;Lcma;)V

    .line 17678
    const-class v0, Lcom/alibaba/android/user/idl/services/UserIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/idl/services/UserIService;

    .line 17679
    if-eqz v0, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gtz v2, :cond_2

    .line 17680
    :cond_0
    if-eqz p3, :cond_1

    .line 17681
    const-string/jumbo v0, "CODE001"

    const-string/jumbo v1, "INVALID ARGUMENTS"

    invoke-interface {p3, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 17683
    :cond_1
    :goto_0
    return-void

    .line 17685
    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/alibaba/android/user/idl/services/UserIService;->sendInactiveMsg(Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method

.method public final b(Lcjo$a;)V
    .locals 1
    .param p1, "listener"    # Lcjo$a;

    .prologue
    .line 405
    invoke-static {}, Lcom/alibaba/android/user/internal/IMContextEngine;->a()Lcom/alibaba/android/user/internal/IMContextEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/user/internal/IMContextEngine;->e()Lfbn;

    move-result-object v0

    .line 12263
    iget-object v0, v0, Lfbn;->b:Lcjp;

    invoke-virtual {v0, p1}, Lcjp;->b(Lcjo$a;)V

    .line 406
    return-void
.end method

.method public final b(Ljava/lang/String;Lcma;)V
    .locals 5
    .param p1, "keyword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 5656
    .local p2, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    sget-object v1, Lfbk$a;->a:Lfbk;

    .line 6484
    new-instance v2, Lfbk$4;

    invoke-direct {v2, v1, p2}, Lfbk$4;-><init>(Lfbk;Lcma;)V

    .line 6496
    const-class v0, Lcom/alibaba/android/user/idl/services/UserMixIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/idl/services/UserMixIService;

    .line 6497
    invoke-static {}, Lcom/alibaba/android/user/internal/IMContextEngine;->a()Lcom/alibaba/android/user/internal/IMContextEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/user/internal/IMContextEngine;->f()Z

    move-result v3

    if-nez v3, :cond_0

    .line 6498
    const-string/jumbo v3, "IMContextEngine"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v3

    new-instance v4, Lfbk$5;

    invoke-direct {v4, v1, v0, p1, v2}, Lfbk$5;-><init>(Lfbk;Lcom/alibaba/android/user/idl/services/UserMixIService;Ljava/lang/String;Lcmg;)V

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    .line 6506
    :cond_0
    invoke-interface {v0, p1, v2}, Lcom/alibaba/android/user/idl/services/UserMixIService;->searchUserProfileByKeyword(Ljava/lang/String;Liyv;)V

    goto :goto_0
.end method

.method public final b(Ljava/util/List;Lcma;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 172
    .line 1177
    .local p1, "emails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_2

    .line 1178
    :cond_0
    if-eqz p2, :cond_1

    .line 1179
    const-string/jumbo v0, "CODE001"

    const-string/jumbo v1, "INVALID ARGUMENTS"

    invoke-interface {p2, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    :cond_1
    :goto_0
    return-void

    .line 1184
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1185
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1186
    invoke-static {}, Lfbg;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Lfbg$6;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, p2, v3}, Lfbg$6;-><init>(Lfbg;Ljava/util/List;Lcma;Z)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final b(Ljava/util/List;ZLcma;)V
    .locals 6
    .param p2, "supportFixLine"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;Z",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 501
    .local p1, "identities":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .local p3, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 502
    :cond_0
    if-eqz p3, :cond_1

    .line 503
    const-string/jumbo v4, "CODE001"

    const-string/jumbo v5, "invalid identities"

    invoke-interface {p3, v4, v5}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    :cond_1
    :goto_0
    return-void

    .line 508
    :cond_2
    new-instance v0, Lfbg$2;

    invoke-direct {v0, p0, p3}, Lfbg$2;-><init>(Lfbg;Lcma;)V

    .line 526
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/util/List<Lcgd;>;Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;>;"
    const-class v4, Lcom/alibaba/android/user/idl/services/UserMixIService;

    invoke-static {v4}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/user/idl/services/UserMixIService;

    .line 527
    .local v3, "userMixIService":Lcom/alibaba/android/user/idl/services/UserMixIService;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 528
    .local v1, "params":Ljava/util/List;, "Ljava/util/List<Lcgd;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 529
    .local v2, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v2, :cond_3

    .line 532
    invoke-static {v2}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->toIDL(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Lcgd;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 534
    .end local v2    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_4
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v1, v4, v0}, Lcom/alibaba/android/user/idl/services/UserMixIService;->createUser(Ljava/util/List;Ljava/lang/Boolean;Liyv;)V

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;Lcma;)V
    .locals 2
    .param p1, "smsCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 15656
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    sget-object v0, Lfbk$a;->a:Lfbk;

    .line 16641
    new-instance v1, Lfbk$13;

    invoke-direct {v1, v0, p2}, Lfbk$13;-><init>(Lfbk;Lcma;)V

    .line 16647
    const-class v0, Lcom/alibaba/android/user/idl/services/UserIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/idl/services/UserIService;

    .line 16648
    invoke-interface {v0, p1, v1}, Lcom/alibaba/android/user/idl/services/UserIService;->cancelUserProfile(Ljava/lang/String;Liyv;)V

    .line 440
    return-void
.end method

.method public final d(Ljava/lang/String;Lcma;)V
    .locals 2
    .param p1, "newPwd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 384
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    if-nez p1, :cond_0

    .line 386
    :goto_0
    return-void

    .line 9656
    :cond_0
    sget-object v0, Lfbk$a;->a:Lfbk;

    .line 10546
    new-instance v1, Lfbk$8;

    invoke-direct {v1, v0, p2}, Lfbk$8;-><init>(Lfbk;Lcma;)V

    .line 10554
    const-class v0, Lcom/alibaba/android/user/idl/services/UserIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/idl/services/UserIService;

    .line 10555
    invoke-interface {v0, p1, v1}, Lcom/alibaba/android/user/idl/services/UserIService;->changePwd(Ljava/lang/String;Liyv;)V

    goto :goto_0
.end method

.method public final e(Ljava/lang/String;Lcma;)V
    .locals 2
    .param p1, "OldPwd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 391
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    if-nez p1, :cond_0

    .line 396
    :goto_0
    return-void

    .line 10656
    :cond_0
    sget-object v0, Lfbk$a;->a:Lfbk;

    .line 11559
    new-instance v1, Lfbk$9;

    invoke-direct {v1, v0, p2}, Lfbk$9;-><init>(Lfbk;Lcma;)V

    .line 11570
    const-class v0, Lcom/alibaba/android/user/idl/services/UserIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/idl/services/UserIService;

    .line 11571
    invoke-interface {v0, p1, v1}, Lcom/alibaba/android/user/idl/services/UserIService;->checkPwd(Ljava/lang/String;Liyv;)V

    goto :goto_0
.end method

.method public final f(Ljava/lang/String;Lcma;)V
    .locals 3
    .param p1, "avatarMediaId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 16656
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    sget-object v0, Lfbk$a;->a:Lfbk;

    .line 472
    const/4 v1, 0x0

    .line 16660
    new-instance v2, Lfbk$14;

    invoke-direct {v2, v0, p2}, Lfbk$14;-><init>(Lfbk;Lcma;)V

    .line 16666
    const-class v0, Lcom/alibaba/android/user/idl/services/UserIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/idl/services/UserIService;

    .line 16667
    invoke-interface {v0, v1, v2}, Lcom/alibaba/android/user/idl/services/UserIService;->updateAvatar(Ljava/lang/String;Liyv;)V

    .line 473
    return-void
.end method
