.class public final Lidq;
.super Ljava/lang/Object;
.source "UserCache.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xc
.end annotation


# instance fields
.field public a:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/Long;",
            "Lcom/alibaba/wukong/im/user/UserImpl;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/concurrent/locks/ReadWriteLock;

.field private c:Lids;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 38
    new-instance v0, Lids;

    invoke-direct {v0}, Lids;-><init>()V

    iput-object v0, p0, Lidq;->c:Lids;

    .line 41
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lidq;->a:Landroid/util/LruCache;

    .line 42
    return-void
.end method

.method private b(J)Lcom/alibaba/wukong/im/user/UserImpl;
    .locals 5
    .param p1, "openId"    # J

    .prologue
    .line 802
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gtz v1, :cond_1

    .line 803
    const/4 v0, 0x0

    .line 815
    :cond_0
    :goto_0
    return-object v0

    .line 806
    :cond_1
    iget-object v1, p0, Lidq;->a:Landroid/util/LruCache;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/user/UserImpl;

    .line 807
    .local v0, "user":Lcom/alibaba/wukong/im/user/UserImpl;
    if-nez v0, :cond_0

    .line 808
    invoke-static {p1, p2}, Lids;->a(J)Lcom/alibaba/wukong/im/user/UserImpl;

    move-result-object v0

    .line 809
    if-eqz v0, :cond_0

    .line 812
    iget-object v1, p0, Lidq;->a:Landroid/util/LruCache;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public final a(JLjava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "openId"    # J
    .param p3, "countryCode"    # Ljava/lang/String;
    .param p4, "mobile"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 398
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-lez v4, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 422
    :cond_0
    :goto_0
    return v3

    .line 403
    :cond_1
    :try_start_0
    iget-object v4, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 406
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 407
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "mobile"

    invoke-virtual {v2, v4, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    const-string/jumbo v4, "countryCode"

    invoke-virtual {v2, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    invoke-static {p1, p2, v2}, Lids;->a(JLandroid/content/ContentValues;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 410
    .local v0, "ret":I
    if-nez v0, :cond_2

    .line 422
    iget-object v4, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 414
    :cond_2
    :try_start_1
    invoke-direct {p0, p1, p2}, Lidq;->b(J)Lcom/alibaba/wukong/im/user/UserImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 415
    .local v1, "user":Lcom/alibaba/wukong/im/user/UserImpl;
    if-nez v1, :cond_3

    .line 422
    iget-object v4, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 418
    :cond_3
    :try_start_2
    iput-object p4, v1, Lcom/alibaba/wukong/im/user/UserImpl;->mMobile:Ljava/lang/String;

    .line 419
    iput-object p3, v1, Lcom/alibaba/wukong/im/user/UserImpl;->mCountryCode:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 422
    iget-object v3, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v3, 0x1

    goto :goto_0

    .end local v0    # "ret":I
    .end local v1    # "user":Lcom/alibaba/wukong/im/user/UserImpl;
    .end local v2    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3
.end method

.method public final a(J)Lcom/alibaba/wukong/im/user/UserImpl;
    .locals 3
    .param p1, "openId"    # J

    .prologue
    .line 235
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 236
    const/4 v0, 0x0

    .line 242
    :goto_0
    return-object v0

    .line 239
    :cond_0
    :try_start_0
    iget-object v0, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 240
    invoke-direct {p0, p1, p2}, Lidq;->b(J)Lcom/alibaba/wukong/im/user/UserImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 242
    iget-object v1, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final a(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/user/UserImpl;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/wukong/im/User;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/user/UserImpl;>;"
    const/4 v5, 0x0

    .line 97
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    move-object v0, v5

    .line 136
    :goto_0
    return-object v0

    .line 101
    :cond_1
    :try_start_0
    iget-object v6, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v0, "addList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/User;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v3, "updateList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/User;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v1, "dbList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/user/UserImpl;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/im/user/UserImpl;

    .line 107
    .local v4, "user":Lcom/alibaba/wukong/im/user/UserImpl;
    if-eqz v4, :cond_2

    .line 109
    iget-wide v8, v4, Lcom/alibaba/wukong/im/user/UserImpl;->mOpenId:J

    invoke-direct {p0, v8, v9}, Lidq;->b(J)Lcom/alibaba/wukong/im/user/UserImpl;

    move-result-object v2

    .line 110
    .local v2, "u":Lcom/alibaba/wukong/im/user/UserImpl;
    if-nez v2, :cond_3

    .line 111
    iget-object v7, p0, Lidq;->a:Landroid/util/LruCache;

    iget-wide v8, v4, Lcom/alibaba/wukong/im/user/UserImpl;->mOpenId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8, v4}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 136
    .end local v0    # "addList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/User;>;"
    .end local v1    # "dbList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/user/UserImpl;>;"
    .end local v2    # "u":Lcom/alibaba/wukong/im/user/UserImpl;
    .end local v3    # "updateList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/User;>;"
    .end local v4    # "user":Lcom/alibaba/wukong/im/user/UserImpl;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v5

    .line 114
    .restart local v0    # "addList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/User;>;"
    .restart local v1    # "dbList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/user/UserImpl;>;"
    .restart local v2    # "u":Lcom/alibaba/wukong/im/user/UserImpl;
    .restart local v3    # "updateList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/User;>;"
    .restart local v4    # "user":Lcom/alibaba/wukong/im/user/UserImpl;
    :cond_3
    :try_start_1
    iget-wide v8, v2, Lcom/alibaba/wukong/im/user/UserImpl;->mTag:J

    iget-wide v10, v4, Lcom/alibaba/wukong/im/user/UserImpl;->mTag:J

    cmp-long v7, v8, v10

    if-eqz v7, :cond_2

    .line 115
    invoke-virtual {v2, v4}, Lcom/alibaba/wukong/im/user/UserImpl;->copyFromUser(Lcom/alibaba/wukong/im/user/UserImpl;)V

    .line 116
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 122
    .end local v2    # "u":Lcom/alibaba/wukong/im/user/UserImpl;
    .end local v4    # "user":Lcom/alibaba/wukong/im/user/UserImpl;
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    .line 123
    invoke-static {v1}, Lids;->a(Ljava/util/List;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-gtz v6, :cond_5

    .line 136
    iget-object v6, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v0, v5

    goto :goto_0

    .line 126
    :cond_5
    :try_start_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 127
    invoke-static {v0}, Lidt;->a(Ljava/util/ArrayList;)V

    .line 129
    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    .line 130
    invoke-static {v3}, Lidt;->b(Ljava/util/ArrayList;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 136
    :cond_7
    iget-object v5, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0
.end method

.method public final a(JLcom/alibaba/wukong/im/User$Gender;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p1, "openId"    # J
    .param p3, "gender"    # Lcom/alibaba/wukong/im/User$Gender;
    .param p4, "birthday"    # Ljava/lang/Long;
    .param p5, "nickname"    # Ljava/lang/String;
    .param p6, "remark"    # Ljava/lang/String;
    .param p7, "city"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 506
    const-wide/16 v6, 0x0

    cmp-long v6, p1, v6

    if-gtz v6, :cond_0

    .line 545
    :goto_0
    return v5

    .line 510
    :cond_0
    :try_start_0
    iget-object v6, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 512
    invoke-direct {p0, p1, p2}, Lidq;->b(J)Lcom/alibaba/wukong/im/user/UserImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 513
    .local v3, "user":Lcom/alibaba/wukong/im/user/UserImpl;
    if-nez v3, :cond_1

    .line 545
    iget-object v6, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 518
    :cond_1
    :try_start_1
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 519
    .local v4, "values":Landroid/content/ContentValues;
    if-eqz p3, :cond_2

    iget v6, v3, Lcom/alibaba/wukong/im/user/UserImpl;->mGender:I

    invoke-virtual {p3}, Lcom/alibaba/wukong/im/User$Gender;->typeValue()I

    move-result v7

    if-eq v6, v7, :cond_2

    .line 520
    const-string/jumbo v6, "gender"

    invoke-virtual {p3}, Lcom/alibaba/wukong/im/User$Gender;->typeValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 521
    invoke-virtual {p3}, Lcom/alibaba/wukong/im/User$Gender;->typeValue()I

    move-result v6

    iput v6, v3, Lcom/alibaba/wukong/im/user/UserImpl;->mGender:I

    .line 523
    :cond_2
    if-eqz p4, :cond_3

    iget-wide v6, v3, Lcom/alibaba/wukong/im/user/UserImpl;->mBirthday:J

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_3

    .line 524
    const-string/jumbo v6, "birthday"

    invoke-virtual {v4, v6, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 525
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v3, Lcom/alibaba/wukong/im/user/UserImpl;->mBirthday:J

    .line 527
    :cond_3
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, v3, Lcom/alibaba/wukong/im/user/UserImpl;->mNickname:Ljava/lang/String;

    move-object/from16 v0, p5

    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 528
    const-string/jumbo v6, "nickname"

    move-object/from16 v0, p5

    invoke-virtual {v4, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    move-object/from16 v0, p5

    iput-object v0, v3, Lcom/alibaba/wukong/im/user/UserImpl;->mNickname:Ljava/lang/String;

    .line 531
    :cond_4
    if-eqz p6, :cond_5

    iget-object v6, v3, Lcom/alibaba/wukong/im/user/UserImpl;->mRemark:Ljava/lang/String;

    move-object/from16 v0, p6

    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 532
    const-string/jumbo v6, "remark"

    move-object/from16 v0, p6

    invoke-virtual {v4, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    move-object/from16 v0, p6

    iput-object v0, v3, Lcom/alibaba/wukong/im/user/UserImpl;->mRemark:Ljava/lang/String;

    .line 535
    :cond_5
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, v3, Lcom/alibaba/wukong/im/user/UserImpl;->mCity:Ljava/lang/String;

    move-object/from16 v0, p7

    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 536
    const-string/jumbo v6, "city"

    move-object/from16 v0, p7

    invoke-virtual {v4, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    move-object/from16 v0, p7

    iput-object v0, v3, Lcom/alibaba/wukong/im/user/UserImpl;->mCity:Ljava/lang/String;

    .line 539
    :cond_6
    invoke-static {p1, p2, v4}, Lids;->a(JLandroid/content/ContentValues;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 540
    .local v2, "ret":I
    if-nez v2, :cond_7

    .line 545
    iget-object v6, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    .line 542
    :cond_7
    :try_start_2
    invoke-static {v3}, Lidt;->b(Lcom/alibaba/wukong/im/User;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 545
    iget-object v5, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v2    # "ret":I
    .end local v3    # "user":Lcom/alibaba/wukong/im/user/UserImpl;
    .end local v4    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v5
.end method

.method public final a(JLjava/lang/String;)Z
    .locals 9
    .param p1, "openId"    # J
    .param p3, "avatar"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 293
    const-wide/16 v6, 0x0

    cmp-long v5, p1, v6

    if-lez v5, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 316
    :cond_0
    :goto_0
    return v3

    .line 297
    :cond_1
    :try_start_0
    iget-object v5, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 298
    invoke-direct {p0, p1, p2}, Lidq;->b(J)Lcom/alibaba/wukong/im/user/UserImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 299
    .local v1, "user":Lcom/alibaba/wukong/im/user/UserImpl;
    if-nez v1, :cond_2

    .line 316
    iget-object v4, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 302
    :cond_2
    :try_start_1
    iget-object v5, v1, Lcom/alibaba/wukong/im/user/UserImpl;->mAvatar:Ljava/lang/String;

    invoke-static {p3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-eqz v5, :cond_3

    .line 316
    iget-object v3, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v3, v4

    goto :goto_0

    .line 306
    :cond_3
    :try_start_2
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 307
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v5, "avatar"

    invoke-virtual {v2, v5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    invoke-static {p1, p2, v2}, Lids;->a(JLandroid/content/ContentValues;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    .line 309
    .local v0, "ret":I
    if-nez v0, :cond_4

    .line 316
    iget-object v4, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 312
    :cond_4
    :try_start_3
    iput-object p3, v1, Lcom/alibaba/wukong/im/user/UserImpl;->mAvatar:Ljava/lang/String;

    .line 313
    invoke-static {v1}, Lidt;->b(Lcom/alibaba/wukong/im/User;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 316
    iget-object v3, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v3, v4

    goto :goto_0

    .end local v0    # "ret":I
    .end local v1    # "user":Lcom/alibaba/wukong/im/user/UserImpl;
    .end local v2    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3
.end method

.method public final a(JLjava/util/Map;)Z
    .locals 7
    .param p1, "openId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 433
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-lez v4, :cond_0

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 458
    :cond_0
    :goto_0
    return v3

    .line 437
    :cond_1
    :try_start_0
    iget-object v4, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 439
    invoke-direct {p0, p1, p2}, Lidq;->b(J)Lcom/alibaba/wukong/im/user/UserImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 440
    .local v1, "user":Lcom/alibaba/wukong/im/user/UserImpl;
    if-nez v1, :cond_2

    .line 458
    iget-object v4, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 444
    :cond_2
    :try_start_1
    iget-object v4, v1, Lcom/alibaba/wukong/im/user/UserImpl;->mExtension:Ljava/util/Map;

    if-nez v4, :cond_3

    .line 445
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v1, Lcom/alibaba/wukong/im/user/UserImpl;->mExtension:Ljava/util/Map;

    .line 446
    :cond_3
    iget-object v4, v1, Lcom/alibaba/wukong/im/user/UserImpl;->mExtension:Ljava/util/Map;

    invoke-interface {v4, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 449
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 450
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "ext"

    iget-object v5, v1, Lcom/alibaba/wukong/im/user/UserImpl;->mExtension:Ljava/util/Map;

    invoke-static {v5}, Lieb;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    invoke-static {p1, p2, v2}, Lids;->a(JLandroid/content/ContentValues;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 452
    .local v0, "ret":I
    if-nez v0, :cond_4

    .line 458
    iget-object v4, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 455
    :cond_4
    :try_start_2
    invoke-static {v1}, Lidt;->b(Lcom/alibaba/wukong/im/User;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 458
    iget-object v3, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v3, 0x1

    goto :goto_0

    .end local v0    # "ret":I
    .end local v1    # "user":Lcom/alibaba/wukong/im/user/UserImpl;
    .end local v2    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3
.end method

.method public final a(Lcom/alibaba/wukong/im/user/UserImpl;)Z
    .locals 8
    .param p1, "user"    # Lcom/alibaba/wukong/im/user/UserImpl;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    .line 63
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/wukong/im/user/UserImpl;->openId()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-nez v2, :cond_1

    .line 86
    :cond_0
    :goto_0
    return v1

    .line 67
    :cond_1
    :try_start_0
    iget-object v2, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 69
    iget-wide v2, p1, Lcom/alibaba/wukong/im/user/UserImpl;->mOpenId:J

    invoke-direct {p0, v2, v3}, Lidq;->b(J)Lcom/alibaba/wukong/im/user/UserImpl;

    move-result-object v0

    .line 70
    .local v0, "u":Lcom/alibaba/wukong/im/user/UserImpl;
    if-nez v0, :cond_4

    .line 71
    invoke-static {p1}, Lids;->a(Lcom/alibaba/wukong/im/user/UserImpl;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    cmp-long v2, v2, v6

    if-nez v2, :cond_2

    .line 86
    iget-object v2, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 74
    :cond_2
    :try_start_1
    iget-object v1, p0, Lidq;->a:Landroid/util/LruCache;

    iget-wide v2, p1, Lcom/alibaba/wukong/im/user/UserImpl;->mOpenId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-static {p1}, Lidt;->a(Lcom/alibaba/wukong/im/User;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    :cond_3
    :goto_1
    iget-object v1, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v1, 0x1

    goto :goto_0

    .line 76
    :cond_4
    :try_start_2
    iget-wide v2, v0, Lcom/alibaba/wukong/im/user/UserImpl;->mTag:J

    iget-wide v4, p1, Lcom/alibaba/wukong/im/user/UserImpl;->mTag:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 77
    invoke-virtual {v0, p1}, Lcom/alibaba/wukong/im/user/UserImpl;->copyFromUser(Lcom/alibaba/wukong/im/user/UserImpl;)V

    .line 78
    invoke-static {v0}, Lids;->a(Lcom/alibaba/wukong/im/user/UserImpl;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v2

    cmp-long v2, v2, v6

    if-nez v2, :cond_5

    .line 86
    iget-object v2, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 81
    :cond_5
    :try_start_3
    invoke-static {v0}, Lidt;->b(Lcom/alibaba/wukong/im/User;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 86
    .end local v0    # "u":Lcom/alibaba/wukong/im/user/UserImpl;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public final b(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/User;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/wukong/im/User;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/User;>;"
    const/4 v9, 0x0

    .line 146
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    move-object v3, v9

    .line 199
    :goto_0
    return-object v3

    .line 150
    :cond_1
    :try_start_0
    iget-object v8, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 152
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v2, "addList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/User;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v6, "updateList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/User;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v4, "dbList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/user/UserImpl;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/wukong/im/User;

    .line 157
    .local v7, "user":Lcom/alibaba/wukong/im/User;
    if-eqz v7, :cond_2

    .line 161
    invoke-interface {v7}, Lcom/alibaba/wukong/im/User;->openId()J

    move-result-wide v12

    invoke-direct {p0, v12, v13}, Lidq;->b(J)Lcom/alibaba/wukong/im/user/UserImpl;

    move-result-object v5

    .line 162
    .local v5, "u":Lcom/alibaba/wukong/im/user/UserImpl;
    if-nez v5, :cond_3

    .line 163
    iget-object v11, p0, Lidq;->a:Landroid/util/LruCache;

    invoke-interface {v7}, Lcom/alibaba/wukong/im/User;->openId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object v0, v7

    check-cast v0, Lcom/alibaba/wukong/im/user/UserImpl;

    move-object v8, v0

    invoke-virtual {v11, v12, v8}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    check-cast v7, Lcom/alibaba/wukong/im/user/UserImpl;

    .end local v7    # "user":Lcom/alibaba/wukong/im/User;
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 199
    .end local v2    # "addList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/User;>;"
    .end local v4    # "dbList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/user/UserImpl;>;"
    .end local v5    # "u":Lcom/alibaba/wukong/im/user/UserImpl;
    .end local v6    # "updateList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/User;>;"
    :catchall_0
    move-exception v8

    iget-object v9, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v8

    .line 170
    .restart local v2    # "addList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/User;>;"
    .restart local v4    # "dbList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/user/UserImpl;>;"
    .restart local v5    # "u":Lcom/alibaba/wukong/im/user/UserImpl;
    .restart local v6    # "updateList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/User;>;"
    .restart local v7    # "user":Lcom/alibaba/wukong/im/User;
    :cond_3
    :try_start_1
    invoke-interface {v7}, Lcom/alibaba/wukong/im/User;->alias()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/alibaba/wukong/im/user/UserImpl;->mAlias:Ljava/lang/String;

    .line 171
    invoke-interface {v7}, Lcom/alibaba/wukong/im/User;->aliasPinyin()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/alibaba/wukong/im/user/UserImpl;->mAliasPinyin:Ljava/lang/String;

    .line 172
    invoke-interface {v7}, Lcom/alibaba/wukong/im/User;->remarkSound()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/alibaba/wukong/im/user/UserImpl;->mRemarkSound:Ljava/lang/String;

    .line 173
    invoke-interface {v7}, Lcom/alibaba/wukong/im/User;->remarkExtension()Ljava/util/Map;

    move-result-object v8

    iput-object v8, v5, Lcom/alibaba/wukong/im/user/UserImpl;->mRemarkExtension:Ljava/util/Map;

    .line 174
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 179
    .end local v5    # "u":Lcom/alibaba/wukong/im/user/UserImpl;
    .end local v7    # "user":Lcom/alibaba/wukong/im/User;
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .local v3, "aliasList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/User;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_8

    .line 182
    invoke-static {v4}, Lids;->a(Ljava/util/List;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    if-gtz v8, :cond_5

    .line 199
    iget-object v8, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v3, v9

    goto/16 :goto_0

    .line 186
    :cond_5
    :try_start_2
    sget-boolean v8, Lcom/alibaba/wukong/im/IMConstants;->USER_AVAILABLE:Z

    if-eqz v8, :cond_6

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    .line 187
    invoke-static {v2}, Lidt;->a(Ljava/util/ArrayList;)V

    .line 189
    :cond_6
    sget-boolean v8, Lcom/alibaba/wukong/im/IMConstants;->USER_AVAILABLE:Z

    if-eqz v8, :cond_7

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_7

    .line 190
    invoke-static {v6}, Lidt;->b(Ljava/util/ArrayList;)V

    .line 193
    :cond_7
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 194
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 195
    invoke-static {v3}, Lidt;->c(Ljava/util/ArrayList;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 199
    :cond_8
    iget-object v8, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0
.end method

.method public final b(JLjava/lang/String;)Z
    .locals 9
    .param p1, "openId"    # J
    .param p3, "nickname"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 327
    const-wide/16 v6, 0x0

    cmp-long v5, p1, v6

    if-lez v5, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 349
    :cond_0
    :goto_0
    return v3

    .line 331
    :cond_1
    :try_start_0
    iget-object v5, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 332
    invoke-direct {p0, p1, p2}, Lidq;->b(J)Lcom/alibaba/wukong/im/user/UserImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 333
    .local v1, "user":Lcom/alibaba/wukong/im/user/UserImpl;
    if-nez v1, :cond_2

    .line 349
    iget-object v4, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 336
    :cond_2
    :try_start_1
    iget-object v5, v1, Lcom/alibaba/wukong/im/user/UserImpl;->mNickname:Ljava/lang/String;

    invoke-static {p3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-eqz v5, :cond_3

    .line 349
    iget-object v3, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v3, v4

    goto :goto_0

    .line 340
    :cond_3
    :try_start_2
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 341
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v5, "nickname"

    invoke-virtual {v2, v5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-static {p1, p2, v2}, Lids;->a(JLandroid/content/ContentValues;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    .line 343
    .local v0, "ret":I
    if-nez v0, :cond_4

    .line 349
    iget-object v4, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 345
    :cond_4
    :try_start_3
    iput-object p3, v1, Lcom/alibaba/wukong/im/user/UserImpl;->mNickname:Ljava/lang/String;

    .line 346
    invoke-static {v1}, Lidt;->b(Lcom/alibaba/wukong/im/User;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 349
    iget-object v3, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v3, v4

    goto :goto_0

    .end local v0    # "ret":I
    .end local v1    # "user":Lcom/alibaba/wukong/im/user/UserImpl;
    .end local v2    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3
.end method

.method public final b(JLjava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "openId"    # J
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 470
    const-wide/16 v6, 0x0

    cmp-long v6, p1, v6

    if-lez v6, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 500
    :cond_0
    :goto_0
    return v4

    .line 474
    :cond_1
    :try_start_0
    iget-object v6, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 475
    invoke-direct {p0, p1, p2}, Lidq;->b(J)Lcom/alibaba/wukong/im/user/UserImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 476
    .local v1, "user":Lcom/alibaba/wukong/im/user/UserImpl;
    if-nez v1, :cond_2

    .line 500
    iget-object v5, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 479
    :cond_2
    :try_start_1
    iget-object v6, v1, Lcom/alibaba/wukong/im/user/UserImpl;->mExtension:Ljava/util/Map;

    if-eqz v6, :cond_3

    .line 480
    iget-object v6, v1, Lcom/alibaba/wukong/im/user/UserImpl;->mExtension:Ljava/util/Map;

    invoke-interface {v6, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 481
    .local v2, "val":Ljava/lang/String;
    invoke-static {v2, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-eqz v6, :cond_3

    .line 500
    iget-object v4, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v4, v5

    goto :goto_0

    .line 486
    .end local v2    # "val":Ljava/lang/String;
    :cond_3
    :try_start_2
    iget-object v6, v1, Lcom/alibaba/wukong/im/user/UserImpl;->mExtension:Ljava/util/Map;

    if-nez v6, :cond_4

    .line 487
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v1, Lcom/alibaba/wukong/im/user/UserImpl;->mExtension:Ljava/util/Map;

    .line 488
    :cond_4
    iget-object v6, v1, Lcom/alibaba/wukong/im/user/UserImpl;->mExtension:Ljava/util/Map;

    invoke-interface {v6, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 492
    .local v3, "values":Landroid/content/ContentValues;
    const-string/jumbo v6, "ext"

    iget-object v7, v1, Lcom/alibaba/wukong/im/user/UserImpl;->mExtension:Ljava/util/Map;

    invoke-static {v7}, Lieb;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    invoke-static {p1, p2, v3}, Lids;->a(JLandroid/content/ContentValues;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    .line 494
    .local v0, "ret":I
    if-nez v0, :cond_5

    .line 500
    iget-object v5, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 497
    :cond_5
    :try_start_3
    invoke-static {v1}, Lidt;->b(Lcom/alibaba/wukong/im/User;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 500
    iget-object v4, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v4, v5

    goto :goto_0

    .end local v0    # "ret":I
    .end local v1    # "user":Lcom/alibaba/wukong/im/user/UserImpl;
    .end local v3    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4
.end method

.method public final b(JLjava/util/Map;)Z
    .locals 9
    .param p1, "openId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, "remarkExtension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 685
    cmp-long v5, p1, v6

    if-gtz v5, :cond_0

    .line 731
    :goto_0
    return v4

    .line 690
    :cond_0
    :try_start_0
    iget-object v5, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 692
    invoke-direct {p0, p1, p2}, Lidq;->b(J)Lcom/alibaba/wukong/im/user/UserImpl;

    move-result-object v2

    .line 693
    .local v2, "user":Lcom/alibaba/wukong/im/user/UserImpl;
    if-nez v2, :cond_3

    .line 694
    new-instance v2, Lcom/alibaba/wukong/im/user/UserImpl;

    .end local v2    # "user":Lcom/alibaba/wukong/im/user/UserImpl;
    invoke-direct {v2}, Lcom/alibaba/wukong/im/user/UserImpl;-><init>()V

    .line 695
    .restart local v2    # "user":Lcom/alibaba/wukong/im/user/UserImpl;
    iput-wide p1, v2, Lcom/alibaba/wukong/im/user/UserImpl;->mOpenId:J

    .line 696
    iput-object p3, v2, Lcom/alibaba/wukong/im/user/UserImpl;->mRemarkExtension:Ljava/util/Map;

    .line 699
    invoke-static {v2}, Lids;->a(Lcom/alibaba/wukong/im/user/UserImpl;)J

    move-result-wide v0

    .line 700
    .local v0, "ret":J
    cmp-long v5, v0, v6

    if-nez v5, :cond_1

    .line 701
    const-string/jumbo v5, "UserCache"

    const-string/jumbo v6, "Cache:db merge\u5931\u8d25"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 731
    iget-object v5, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 704
    :cond_1
    :try_start_1
    iget-object v4, p0, Lidq;->a:Landroid/util/LruCache;

    iget-wide v6, v2, Lcom/alibaba/wukong/im/user/UserImpl;->mOpenId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    sget-boolean v4, Lcom/alibaba/wukong/im/IMConstants;->USER_AVAILABLE:Z

    if-eqz v4, :cond_2

    .line 708
    invoke-static {v2}, Lidt;->a(Lcom/alibaba/wukong/im/User;)V

    .line 728
    .end local v0    # "ret":J
    :cond_2
    :goto_1
    invoke-static {v2}, Lidt;->c(Lcom/alibaba/wukong/im/User;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 731
    iget-object v4, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v4, 0x1

    goto :goto_0

    .line 712
    :cond_3
    :try_start_2
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 713
    .local v3, "values":Landroid/content/ContentValues;
    const-string/jumbo v5, "remarkExt"

    invoke-static {p3}, Lieb;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    invoke-static {p1, p2, v3}, Lids;->a(JLandroid/content/ContentValues;)I

    move-result v0

    .line 715
    .local v0, "ret":I
    if-nez v0, :cond_4

    .line 716
    const-string/jumbo v5, "UserCache"

    const-string/jumbo v6, "Cache:\u6301\u4e45\u5316\u5230DB\u5931\u8d25"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 731
    iget-object v5, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 721
    :cond_4
    :try_start_3
    iput-object p3, v2, Lcom/alibaba/wukong/im/user/UserImpl;->mRemarkExtension:Ljava/util/Map;

    .line 723
    sget-boolean v4, Lcom/alibaba/wukong/im/IMConstants;->USER_AVAILABLE:Z

    if-eqz v4, :cond_2

    .line 724
    invoke-static {v2}, Lidt;->b(Lcom/alibaba/wukong/im/User;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 731
    .end local v0    # "ret":I
    .end local v2    # "user":Lcom/alibaba/wukong/im/user/UserImpl;
    .end local v3    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4
.end method

.method public final c(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/user/UserImpl;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 253
    .local p1, "openIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 254
    :cond_0
    const/4 v5, 0x0

    .line 282
    :goto_0
    return-object v5

    .line 257
    :cond_1
    :try_start_0
    iget-object v6, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 259
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .local v5, "userList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/user/UserImpl;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 261
    .local v1, "notInCache":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 262
    .local v2, "openId":Ljava/lang/Long;
    if-eqz v2, :cond_2

    .line 265
    iget-object v7, p0, Lidq;->a:Landroid/util/LruCache;

    invoke-virtual {v7, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/im/user/UserImpl;

    .line 266
    .local v4, "user":Lcom/alibaba/wukong/im/user/UserImpl;
    if-nez v4, :cond_3

    .line 267
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 282
    .end local v1    # "notInCache":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v2    # "openId":Ljava/lang/Long;
    .end local v4    # "user":Lcom/alibaba/wukong/im/user/UserImpl;
    .end local v5    # "userList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/user/UserImpl;>;"
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v6

    .line 269
    .restart local v1    # "notInCache":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v2    # "openId":Ljava/lang/Long;
    .restart local v4    # "user":Lcom/alibaba/wukong/im/user/UserImpl;
    .restart local v5    # "userList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/user/UserImpl;>;"
    :cond_3
    :try_start_1
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 272
    .end local v2    # "openId":Ljava/lang/Long;
    .end local v4    # "user":Lcom/alibaba/wukong/im/user/UserImpl;
    :cond_4
    iget-object v6, p0, Lidq;->c:Lids;

    invoke-virtual {v6, v1}, Lids;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 273
    .local v0, "dbList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/user/UserImpl;>;"
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 274
    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 276
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/im/user/UserImpl;

    .line 277
    .local v3, "u":Lcom/alibaba/wukong/im/user/UserImpl;
    iget-object v7, p0, Lidq;->a:Landroid/util/LruCache;

    iget-wide v8, v3, Lcom/alibaba/wukong/im/user/UserImpl;->mOpenId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 282
    .end local v3    # "u":Lcom/alibaba/wukong/im/user/UserImpl;
    :cond_5
    iget-object v6, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0
.end method

.method public final c(JLjava/lang/String;)Z
    .locals 9
    .param p1, "openId"    # J
    .param p3, "remark"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 361
    const-wide/16 v6, 0x0

    cmp-long v5, p1, v6

    if-lez v5, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 385
    :cond_0
    :goto_0
    return v3

    .line 365
    :cond_1
    :try_start_0
    iget-object v5, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 367
    invoke-direct {p0, p1, p2}, Lidq;->b(J)Lcom/alibaba/wukong/im/user/UserImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 368
    .local v1, "user":Lcom/alibaba/wukong/im/user/UserImpl;
    if-nez v1, :cond_2

    .line 385
    iget-object v4, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 371
    :cond_2
    :try_start_1
    iget-object v5, v1, Lcom/alibaba/wukong/im/user/UserImpl;->mRemark:Ljava/lang/String;

    invoke-static {p3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-eqz v5, :cond_3

    .line 385
    iget-object v3, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v3, v4

    goto :goto_0

    .line 375
    :cond_3
    :try_start_2
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 376
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v5, "remark"

    invoke-virtual {v2, v5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-static {p1, p2, v2}, Lids;->a(JLandroid/content/ContentValues;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    .line 378
    .local v0, "ret":I
    if-nez v0, :cond_4

    .line 385
    iget-object v4, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 381
    :cond_4
    :try_start_3
    iput-object p3, v1, Lcom/alibaba/wukong/im/user/UserImpl;->mRemark:Ljava/lang/String;

    .line 382
    invoke-static {v1}, Lidt;->b(Lcom/alibaba/wukong/im/User;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 385
    iget-object v3, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v3, v4

    goto :goto_0

    .end local v0    # "ret":I
    .end local v1    # "user":Lcom/alibaba/wukong/im/user/UserImpl;
    .end local v2    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3
.end method

.method public final c(JLjava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "openId"    # J
    .param p3, "alias"    # Ljava/lang/String;
    .param p4, "aliasPinyin"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 556
    cmp-long v5, p1, v6

    if-gtz v5, :cond_0

    .line 612
    :goto_0
    return v4

    .line 561
    :cond_0
    :try_start_0
    iget-object v5, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 563
    invoke-direct {p0, p1, p2}, Lidq;->b(J)Lcom/alibaba/wukong/im/user/UserImpl;

    move-result-object v2

    .line 564
    .local v2, "user":Lcom/alibaba/wukong/im/user/UserImpl;
    if-nez v2, :cond_3

    .line 565
    new-instance v2, Lcom/alibaba/wukong/im/user/UserImpl;

    .end local v2    # "user":Lcom/alibaba/wukong/im/user/UserImpl;
    invoke-direct {v2}, Lcom/alibaba/wukong/im/user/UserImpl;-><init>()V

    .line 566
    .restart local v2    # "user":Lcom/alibaba/wukong/im/user/UserImpl;
    iput-wide p1, v2, Lcom/alibaba/wukong/im/user/UserImpl;->mOpenId:J

    .line 567
    iput-object p3, v2, Lcom/alibaba/wukong/im/user/UserImpl;->mAlias:Ljava/lang/String;

    .line 568
    iput-object p4, v2, Lcom/alibaba/wukong/im/user/UserImpl;->mAliasPinyin:Ljava/lang/String;

    .line 571
    invoke-static {v2}, Lids;->a(Lcom/alibaba/wukong/im/user/UserImpl;)J

    move-result-wide v0

    .line 572
    .local v0, "ret":J
    cmp-long v5, v0, v6

    if-nez v5, :cond_1

    .line 573
    const-string/jumbo v5, "UserCache"

    const-string/jumbo v6, "Cache:db merge\u5931\u8d25"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 612
    iget-object v5, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 576
    :cond_1
    :try_start_1
    iget-object v4, p0, Lidq;->a:Landroid/util/LruCache;

    iget-wide v6, v2, Lcom/alibaba/wukong/im/user/UserImpl;->mOpenId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    sget-boolean v4, Lcom/alibaba/wukong/im/IMConstants;->USER_AVAILABLE:Z

    if-eqz v4, :cond_2

    .line 580
    invoke-static {v2}, Lidt;->a(Lcom/alibaba/wukong/im/User;)V

    .line 609
    .end local v0    # "ret":J
    :cond_2
    :goto_1
    invoke-static {v2}, Lidt;->c(Lcom/alibaba/wukong/im/User;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 612
    iget-object v4, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v4, 0x1

    goto :goto_0

    .line 584
    :cond_3
    :try_start_2
    invoke-virtual {v2}, Lcom/alibaba/wukong/im/user/UserImpl;->alias()Ljava/lang/String;

    move-result-object v5

    invoke-static {p3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 585
    const-string/jumbo v5, "UserCache"

    const-string/jumbo v6, "Cache:\u65b0\u65e7\u503c\u4e00\u6837\u65e0\u9700\u66f4\u65b0"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 612
    iget-object v5, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 590
    :cond_4
    :try_start_3
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 591
    .local v3, "values":Landroid/content/ContentValues;
    const-string/jumbo v5, "alias"

    invoke-virtual {v3, v5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    const-string/jumbo v5, "aliasPinyin"

    invoke-virtual {v3, v5, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    invoke-static {p1, p2, v3}, Lids;->a(JLandroid/content/ContentValues;)I

    move-result v0

    .line 594
    .local v0, "ret":I
    if-nez v0, :cond_5

    .line 595
    const-string/jumbo v5, "UserCache"

    const-string/jumbo v6, "Cache:\u6301\u4e45\u5316\u5230DB\u5931\u8d25"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 612
    iget-object v5, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    .line 600
    :cond_5
    :try_start_4
    iput-object p3, v2, Lcom/alibaba/wukong/im/user/UserImpl;->mAlias:Ljava/lang/String;

    .line 601
    iput-object p4, v2, Lcom/alibaba/wukong/im/user/UserImpl;->mAliasPinyin:Ljava/lang/String;

    .line 603
    sget-boolean v4, Lcom/alibaba/wukong/im/IMConstants;->USER_AVAILABLE:Z

    if-eqz v4, :cond_2

    .line 604
    invoke-static {v2}, Lidt;->b(Lcom/alibaba/wukong/im/User;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 612
    .end local v0    # "ret":I
    .end local v2    # "user":Lcom/alibaba/wukong/im/user/UserImpl;
    .end local v3    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4
.end method

.method public final d(JLjava/lang/String;)Z
    .locals 9
    .param p1, "openId"    # J
    .param p3, "remarkSound"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 623
    cmp-long v5, p1, v6

    if-gtz v5, :cond_0

    .line 674
    :goto_0
    return v4

    .line 628
    :cond_0
    :try_start_0
    iget-object v5, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 630
    invoke-direct {p0, p1, p2}, Lidq;->b(J)Lcom/alibaba/wukong/im/user/UserImpl;

    move-result-object v2

    .line 631
    .local v2, "user":Lcom/alibaba/wukong/im/user/UserImpl;
    if-nez v2, :cond_3

    .line 632
    new-instance v2, Lcom/alibaba/wukong/im/user/UserImpl;

    .end local v2    # "user":Lcom/alibaba/wukong/im/user/UserImpl;
    invoke-direct {v2}, Lcom/alibaba/wukong/im/user/UserImpl;-><init>()V

    .line 633
    .restart local v2    # "user":Lcom/alibaba/wukong/im/user/UserImpl;
    iput-wide p1, v2, Lcom/alibaba/wukong/im/user/UserImpl;->mOpenId:J

    .line 634
    iput-object p3, v2, Lcom/alibaba/wukong/im/user/UserImpl;->mRemarkSound:Ljava/lang/String;

    .line 637
    invoke-static {v2}, Lids;->a(Lcom/alibaba/wukong/im/user/UserImpl;)J

    move-result-wide v0

    .line 638
    .local v0, "ret":J
    cmp-long v5, v0, v6

    if-nez v5, :cond_1

    .line 639
    const-string/jumbo v5, "UserCache"

    const-string/jumbo v6, "Cache:db merge\u5931\u8d25"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 674
    iget-object v5, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 642
    :cond_1
    :try_start_1
    iget-object v4, p0, Lidq;->a:Landroid/util/LruCache;

    iget-wide v6, v2, Lcom/alibaba/wukong/im/user/UserImpl;->mOpenId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    sget-boolean v4, Lcom/alibaba/wukong/im/IMConstants;->USER_AVAILABLE:Z

    if-eqz v4, :cond_2

    .line 646
    invoke-static {v2}, Lidt;->a(Lcom/alibaba/wukong/im/User;)V

    .line 671
    .end local v0    # "ret":J
    :cond_2
    :goto_1
    invoke-static {v2}, Lidt;->c(Lcom/alibaba/wukong/im/User;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 674
    iget-object v4, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v4, 0x1

    goto :goto_0

    .line 649
    :cond_3
    :try_start_2
    invoke-virtual {v2}, Lcom/alibaba/wukong/im/user/UserImpl;->remarkSound()Ljava/lang/String;

    move-result-object v5

    invoke-static {p3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 650
    const-string/jumbo v5, "UserCache"

    const-string/jumbo v6, "Cache:\u65b0\u65e7\u503c\u4e00\u6837\u65e0\u9700\u66f4\u65b0"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 674
    iget-object v5, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 655
    :cond_4
    :try_start_3
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 656
    .local v3, "values":Landroid/content/ContentValues;
    const-string/jumbo v5, "remarkSound"

    invoke-virtual {v3, v5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    invoke-static {p1, p2, v3}, Lids;->a(JLandroid/content/ContentValues;)I

    move-result v0

    .line 658
    .local v0, "ret":I
    if-nez v0, :cond_5

    .line 659
    const-string/jumbo v5, "UserCache"

    const-string/jumbo v6, "Cache:\u6301\u4e45\u5316\u5230DB\u5931\u8d25"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 674
    iget-object v5, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    .line 664
    :cond_5
    :try_start_4
    iput-object p3, v2, Lcom/alibaba/wukong/im/user/UserImpl;->mRemarkSound:Ljava/lang/String;

    .line 666
    sget-boolean v4, Lcom/alibaba/wukong/im/IMConstants;->USER_AVAILABLE:Z

    if-eqz v4, :cond_2

    .line 667
    invoke-static {v2}, Lidt;->b(Lcom/alibaba/wukong/im/User;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 674
    .end local v0    # "ret":I
    .end local v2    # "user":Lcom/alibaba/wukong/im/user/UserImpl;
    .end local v3    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4
.end method

.method public final d(JLjava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "openId"    # J
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    .line 743
    cmp-long v4, p1, v6

    if-lez v4, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move v4, v5

    .line 797
    :goto_0
    return v4

    .line 748
    :cond_1
    :try_start_0
    iget-object v4, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 750
    invoke-direct {p0, p1, p2}, Lidq;->b(J)Lcom/alibaba/wukong/im/user/UserImpl;

    move-result-object v2

    .line 751
    .local v2, "user":Lcom/alibaba/wukong/im/user/UserImpl;
    if-nez v2, :cond_5

    .line 752
    new-instance v2, Lcom/alibaba/wukong/im/user/UserImpl;

    .end local v2    # "user":Lcom/alibaba/wukong/im/user/UserImpl;
    invoke-direct {v2}, Lcom/alibaba/wukong/im/user/UserImpl;-><init>()V

    .line 753
    .restart local v2    # "user":Lcom/alibaba/wukong/im/user/UserImpl;
    iput-wide p1, v2, Lcom/alibaba/wukong/im/user/UserImpl;->mOpenId:J

    .line 754
    iget-object v4, v2, Lcom/alibaba/wukong/im/user/UserImpl;->mRemarkExtension:Ljava/util/Map;

    if-nez v4, :cond_2

    .line 755
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v2, Lcom/alibaba/wukong/im/user/UserImpl;->mRemarkExtension:Ljava/util/Map;

    .line 757
    :cond_2
    iget-object v4, v2, Lcom/alibaba/wukong/im/user/UserImpl;->mRemarkExtension:Ljava/util/Map;

    invoke-interface {v4, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    invoke-static {v2}, Lids;->a(Lcom/alibaba/wukong/im/user/UserImpl;)J

    move-result-wide v0

    .line 761
    .local v0, "ret":J
    cmp-long v4, v0, v6

    if-nez v4, :cond_3

    .line 762
    const-string/jumbo v4, "UserCache"

    const-string/jumbo v6, "Cache:db merge fail"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 797
    iget-object v4, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v4, v5

    goto :goto_0

    .line 765
    :cond_3
    :try_start_1
    iget-object v4, p0, Lidq;->a:Landroid/util/LruCache;

    iget-wide v6, v2, Lcom/alibaba/wukong/im/user/UserImpl;->mOpenId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    sget-boolean v4, Lcom/alibaba/wukong/im/IMConstants;->USER_AVAILABLE:Z

    if-eqz v4, :cond_4

    .line 769
    invoke-static {v2}, Lidt;->a(Lcom/alibaba/wukong/im/User;)V

    .line 794
    .end local v0    # "ret":J
    :cond_4
    :goto_1
    invoke-static {v2}, Lidt;->c(Lcom/alibaba/wukong/im/User;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 797
    iget-object v4, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v4, 0x1

    goto :goto_0

    .line 772
    :cond_5
    :try_start_2
    iget-object v4, v2, Lcom/alibaba/wukong/im/user/UserImpl;->mRemarkExtension:Ljava/util/Map;

    if-nez v4, :cond_6

    .line 773
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v2, Lcom/alibaba/wukong/im/user/UserImpl;->mRemarkExtension:Ljava/util/Map;

    .line 775
    :cond_6
    iget-object v4, v2, Lcom/alibaba/wukong/im/user/UserImpl;->mRemarkExtension:Ljava/util/Map;

    invoke-interface {v4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v4, v2, Lcom/alibaba/wukong/im/user/UserImpl;->mRemarkExtension:Ljava/util/Map;

    invoke-interface {v4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-eqz v4, :cond_7

    .line 797
    iget-object v4, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v4, v5

    goto/16 :goto_0

    .line 780
    :cond_7
    :try_start_3
    iget-object v4, v2, Lcom/alibaba/wukong/im/user/UserImpl;->mRemarkExtension:Ljava/util/Map;

    invoke-interface {v4, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 782
    .local v3, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "remarkExt"

    iget-object v6, v2, Lcom/alibaba/wukong/im/user/UserImpl;->mRemarkExtension:Ljava/util/Map;

    invoke-static {v6}, Lieb;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    invoke-static {p1, p2, v3}, Lids;->a(JLandroid/content/ContentValues;)I

    move-result v0

    .line 784
    .local v0, "ret":I
    if-nez v0, :cond_8

    .line 785
    const-string/jumbo v4, "UserCache"

    const-string/jumbo v6, "Cache: update user fail"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 797
    iget-object v4, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v4, v5

    goto/16 :goto_0

    .line 789
    :cond_8
    :try_start_4
    sget-boolean v4, Lcom/alibaba/wukong/im/IMConstants;->USER_AVAILABLE:Z

    if-eqz v4, :cond_4

    .line 790
    invoke-static {v2}, Lidt;->b(Lcom/alibaba/wukong/im/User;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 797
    .end local v0    # "ret":I
    .end local v2    # "user":Lcom/alibaba/wukong/im/user/UserImpl;
    .end local v3    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4
.end method
