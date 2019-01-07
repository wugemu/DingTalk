.class public Lesm;
.super Ljava/lang/Object;
.source "RecommendCache.java"


# static fields
.field private static volatile a:Lesm;


# instance fields
.field private b:Lesn;

.field private c:Leso;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lesp;

    invoke-direct {v0}, Lesp;-><init>()V

    iput-object v0, p0, Lesm;->b:Lesn;

    .line 47
    new-instance v0, Lesq;

    invoke-direct {v0}, Lesq;-><init>()V

    iput-object v0, p0, Lesm;->c:Leso;

    .line 48
    return-void
.end method

.method public static a()Lesm;
    .locals 2

    .prologue
    .line 37
    sget-object v0, Lesm;->a:Lesm;

    if-nez v0, :cond_0

    .line 38
    const-class v1, Lesm;

    monitor-enter v1

    .line 39
    :try_start_0
    new-instance v0, Lesm;

    invoke-direct {v0}, Lesm;-><init>()V

    sput-object v0, Lesm;->a:Lesm;

    .line 40
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :cond_0
    sget-object v0, Lesm;->a:Lesm;

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lesm;)Leso;
    .locals 1
    .param p0, "x0"    # Lesm;

    .prologue
    .line 29
    iget-object v0, p0, Lesm;->c:Leso;

    return-object v0
.end method

.method static synthetic a(Lesm;Lesi;)V
    .locals 7
    .param p0, "x0"    # Lesm;
    .param p1, "x1"    # Lesi;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 29
    .line 8249
    if-nez p1, :cond_1

    .line 8250
    const-string/jumbo v0, "recommendBatch is null"

    new-array v1, v5, [Ljava/lang/Object;

    .line 9073
    const-string/jumbo v2, "search_rec"

    invoke-static {v2, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8251
    :cond_0
    :goto_0
    return-void

    .line 9106
    :cond_1
    iget-boolean v0, p1, Lesi;->c:Z

    .line 8254
    if-eqz v0, :cond_2

    .line 8255
    const-string/jumbo v0, "removeAllGroupInner"

    new-array v1, v5, [Ljava/lang/Object;

    .line 10073
    const-string/jumbo v2, "search_rec"

    invoke-static {v2, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10218
    iget-object v0, p0, Lesm;->b:Lesn;

    invoke-interface {v0}, Lesn;->a()Z

    .line 11110
    :cond_2
    iget-boolean v0, p1, Lesi;->d:Z

    .line 8259
    if-eqz v0, :cond_3

    .line 8260
    const-string/jumbo v0, "removeAllUserInner"

    new-array v1, v5, [Ljava/lang/Object;

    .line 12073
    const-string/jumbo v2, "search_rec"

    invoke-static {v2, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12124
    iget-object v0, p0, Lesm;->c:Leso;

    invoke-interface {v0}, Leso;->a()Z

    .line 13098
    :cond_3
    iget-object v0, p1, Lesi;->e:Lesh;

    .line 8265
    if-eqz v0, :cond_8

    .line 8266
    iget-object v1, v0, Lesh;->b:Ljava/util/List;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lesh;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 8267
    const-string/jumbo v1, "removeUserListInner,size=%d"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, v0, Lesh;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 14073
    const-string/jumbo v3, "search_rec"

    invoke-static {v3, v1, v2}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8268
    iget-object v1, v0, Lesh;->b:Ljava/util/List;

    .line 14107
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 14108
    :cond_4
    const-string/jumbo v1, "removeUserListInner is empty"

    new-array v2, v5, [Ljava/lang/Object;

    .line 15073
    const-string/jumbo v3, "search_rec"

    invoke-static {v3, v1, v2}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15110
    :cond_5
    :goto_1
    iget-boolean v1, p1, Lesi;->d:Z

    .line 8272
    if-eqz v1, :cond_7

    .line 8273
    invoke-static {}, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->currentUserRecommendObject()Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    move-result-object v1

    .line 8274
    if-eqz v1, :cond_7

    .line 8275
    iget-object v2, v0, Lesh;->a:Ljava/util/List;

    if-nez v2, :cond_6

    .line 8276
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lesh;->a:Ljava/util/List;

    .line 8278
    :cond_6
    const-string/jumbo v2, "addUserListInner, append current user"

    new-array v3, v5, [Ljava/lang/Object;

    .line 16073
    const-string/jumbo v4, "search_rec"

    invoke-static {v4, v2, v3}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8279
    iget-object v2, v0, Lesh;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8282
    :cond_7
    iget-object v1, v0, Lesh;->a:Ljava/util/List;

    if-eqz v1, :cond_8

    iget-object v1, v0, Lesh;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 8283
    const-string/jumbo v1, "addUserListInner,size=%d"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, v0, Lesh;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 17073
    const-string/jumbo v3, "search_rec"

    invoke-static {v3, v1, v2}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8284
    iget-object v0, v0, Lesh;->a:Ljava/util/List;

    .line 17082
    iget-boolean v1, p1, Lesi;->g:Z

    .line 17110
    iget-boolean v2, p1, Lesi;->d:Z

    .line 8284
    invoke-direct {p0, v0, v1, v2}, Lesm;->a(Ljava/util/List;ZZ)V

    .line 18102
    :cond_8
    iget-object v0, p1, Lesi;->f:Lesg;

    .line 8289
    if-eqz v0, :cond_0

    .line 8290
    iget-object v1, v0, Lesg;->b:Ljava/util/List;

    if-eqz v1, :cond_a

    iget-object v1, v0, Lesg;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 8291
    const-string/jumbo v1, "removeGroupListInner,size=%d"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, v0, Lesg;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 19073
    const-string/jumbo v3, "search_rec"

    invoke-static {v3, v1, v2}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8292
    iget-object v1, v0, Lesg;->b:Ljava/util/List;

    .line 19201
    if-eqz v1, :cond_9

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 19202
    :cond_9
    const-string/jumbo v1, "removeGroupListInner is empty"

    new-array v2, v5, [Ljava/lang/Object;

    .line 20073
    const-string/jumbo v3, "search_rec"

    invoke-static {v3, v1, v2}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8295
    :cond_a
    :goto_2
    iget-object v1, v0, Lesg;->a:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lesg;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8296
    const-string/jumbo v1, "addGroupListInner,size=%d"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, v0, Lesg;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 21073
    const-string/jumbo v3, "search_rec"

    invoke-static {v3, v1, v2}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8297
    iget-object v0, v0, Lesg;->a:Ljava/util/List;

    .line 21090
    iget-boolean v1, p1, Lesi;->h:Z

    .line 21106
    iget-boolean v2, p1, Lesi;->c:Z

    .line 8297
    invoke-direct {p0, v0, v1, v2}, Lesm;->b(Ljava/util/List;ZZ)V

    goto/16 :goto_0

    .line 14111
    :cond_b
    iget-object v2, p0, Lesm;->c:Leso;

    invoke-interface {v2, v1}, Leso;->a(Ljava/util/List;)I

    goto/16 :goto_1

    .line 19205
    :cond_c
    iget-object v2, p0, Lesm;->b:Lesn;

    invoke-interface {v2, v1}, Lesn;->a(Ljava/util/List;)I

    goto :goto_2
.end method

.method static synthetic a(Lesm;Ljava/util/List;ZZ)V
    .locals 1
    .param p0, "x0"    # Lesm;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, v0, v0}, Lesm;->a(Ljava/util/List;ZZ)V

    return-void
.end method

.method private a(Ljava/util/List;ZZ)V
    .locals 5
    .param p2, "withLimitCondition"    # Z
    .param p3, "isAfterClear"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;",
            ">;ZZ)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "objectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;>;"
    const/4 v4, 0x0

    .line 74
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    :cond_0
    const-string/jumbo v1, "addUserListInner is empty"

    new-array v2, v4, [Ljava/lang/Object;

    .line 1073
    const-string/jumbo v3, "search_rec"

    invoke-static {v3, v1, v2}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    :goto_0
    return-void

    .line 79
    :cond_1
    if-eqz p3, :cond_3

    .line 81
    iget-object v1, p0, Lesm;->c:Leso;

    invoke-interface {v1}, Leso;->b()I

    move-result v1

    int-to-float v1, v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lesm;->a(FF)Z

    move-result v1

    if-nez v1, :cond_2

    .line 82
    const-string/jumbo v1, "user size is invalid"

    new-array v2, v4, [Ljava/lang/Object;

    .line 2073
    const-string/jumbo v3, "search_rec"

    invoke-static {v3, v1, v2}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 85
    :cond_2
    const/4 p2, 0x0

    .line 89
    :cond_3
    iget-object v1, p0, Lesm;->c:Leso;

    invoke-interface {v1, p1, p2}, Leso;->a(Ljava/util/List;Z)I

    .line 90
    iget-object v1, p0, Lesm;->c:Leso;

    invoke-interface {v1}, Leso;->b()I

    move-result v0

    .line 91
    .local v0, "count":I
    const-string/jumbo v1, "addUserListInner,withLimitCondition=%b, size=%d, total=%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 3073
    const-string/jumbo v3, "search_rec"

    invoke-static {v3, v1, v2}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static a(FF)Z
    .locals 6
    .param p0, "lastCount"    # F
    .param p1, "currentCount"    # F

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 346
    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    .line 347
    const-string/jumbo v1, "size is 0"

    new-array v2, v0, [Ljava/lang/Object;

    .line 7073
    const-string/jumbo v3, "search_rec"

    invoke-static {v3, v1, v2}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 361
    :goto_0
    return v0

    .line 351
    :cond_0
    const/high16 v2, 0x41f00000    # 30.0f

    cmpg-float v2, p0, v2

    if-lez v2, :cond_1

    cmpl-float v2, p1, p0

    if-ltz v2, :cond_2

    :cond_1
    move v0, v1

    .line 352
    goto :goto_0

    .line 356
    :cond_2
    div-float v2, p1, p0

    float-to-double v2, v2

    const-wide v4, 0x3fb999999999999aL    # 0.1

    cmpg-double v2, v2, v4

    if-gez v2, :cond_3

    .line 357
    const-string/jumbo v2, "size percent is less than 0.1, localsize=%d, serversize=%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v1

    .line 8073
    const-string/jumbo v1, "search_rec"

    invoke-static {v1, v2, v3}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 361
    goto :goto_0
.end method

.method public static b()Lcom/alibaba/doraemon/threadpool/Thread;
    .locals 2

    .prologue
    .line 309
    const-string/jumbo v1, "THREAD"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 310
    .local v0, "queueThread":Lcom/alibaba/doraemon/threadpool/Thread;
    const-string/jumbo v1, "Search-RecommendCache"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->addThread2Group(Ljava/lang/String;)V

    .line 311
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setGroupConcurrents(I)V

    .line 312
    sget-object v1, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 313
    return-object v0
.end method

.method static synthetic b(Lesm;Ljava/util/List;ZZ)V
    .locals 1
    .param p0, "x0"    # Lesm;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, v0, v0}, Lesm;->b(Ljava/util/List;ZZ)V

    return-void
.end method

.method private b(Ljava/util/List;ZZ)V
    .locals 6
    .param p2, "withLimitCondition"    # Z
    .param p3, "isAfterClear"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;",
            ">;ZZ)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "objectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;>;"
    const/4 v5, 0x0

    .line 165
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 166
    :cond_0
    const-string/jumbo v2, "addGroupListInner is empty"

    new-array v3, v5, [Ljava/lang/Object;

    .line 4073
    const-string/jumbo v4, "search_rec"

    invoke-static {v4, v2, v3}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    :goto_0
    return-void

    .line 170
    :cond_1
    if-eqz p3, :cond_3

    .line 172
    iget-object v2, p0, Lesm;->b:Lesn;

    invoke-interface {v2}, Lesn;->b()J

    move-result-wide v2

    long-to-float v2, v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Lesm;->a(FF)Z

    move-result v2

    if-nez v2, :cond_2

    .line 173
    const-string/jumbo v2, "group size is invalid"

    new-array v3, v5, [Ljava/lang/Object;

    .line 5073
    const-string/jumbo v4, "search_rec"

    invoke-static {v4, v2, v3}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 177
    :cond_2
    const/4 p2, 0x0

    .line 181
    :cond_3
    iget-object v2, p0, Lesm;->b:Lesn;

    invoke-interface {v2, p1, p2}, Lesn;->a(Ljava/util/List;Z)I

    .line 184
    iget-object v2, p0, Lesm;->b:Lesn;

    invoke-interface {v2}, Lesn;->b()J

    move-result-wide v0

    .line 185
    .local v0, "count":J
    const-string/jumbo v2, "addGroupListInner,withLimitCondition=%b, size=%d,total=%d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    .line 6073
    const-string/jumbo v4, "search_rec"

    invoke-static {v4, v2, v3}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;)V
    .locals 1
    .param p1, "object"    # Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    .prologue
    .line 52
    if-nez p1, :cond_0

    .line 58
    :goto_0
    return-void

    .line 55
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v0, "objectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-virtual {p0, v0}, Lesm;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 304
    invoke-static {}, Lesm;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 306
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "objectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    :goto_0
    return-void

    .line 64
    :cond_0
    new-instance v0, Lesm$1;

    invoke-direct {v0, p0, p1}, Lesm$1;-><init>(Lesm;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lesm;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p1, "objectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    :goto_0
    return-void

    .line 155
    :cond_0
    new-instance v0, Lesm$3;

    invoke-direct {v0, p0, p1}, Lesm$3;-><init>(Lesm;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lesm;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
