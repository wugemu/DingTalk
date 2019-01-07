.class public final Lhfp;
.super Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
.source "RuntimeCacheDs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhfp$a;
    }
.end annotation


# static fields
.field private static a:Lhfp;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;-><init>()V

    .line 15
    return-void
.end method

.method public static declared-synchronized a()Lhfp;
    .locals 2

    .prologue
    .line 18
    const-class v1, Lhfp;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lhfp;->a:Lhfp;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lhfp;

    invoke-direct {v0}, Lhfp;-><init>()V

    sput-object v0, Lhfp;->a:Lhfp;

    .line 21
    :cond_0
    sget-object v0, Lhfp;->a:Lhfp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 18
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;)J
    .locals 8
    .param p1, "cache"    # Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    .line 25
    invoke-virtual {p0}, Lhfp;->k()Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, "dbName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 33
    :cond_0
    :goto_0
    return-wide v2

    .line 1077
    :cond_1
    if-nez p1, :cond_2

    .line 1078
    const/4 v1, 0x0

    .line 30
    .local v1, "values":Landroid/content/ContentValues;
    :goto_1
    if-eqz v1, :cond_0

    .line 33
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v2

    const-class v3, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheEntry;

    const-string/jumbo v4, "tb_runtime_cache"

    invoke-virtual {v2, v0, v3, v4, v1}, Lcom/alibaba/bee/DBManager;->replace(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    goto :goto_0

    .line 1080
    .end local v1    # "values":Landroid/content/ContentValues;
    :cond_2
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1081
    const-string/jumbo v4, "domain"

    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;->mDomain:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    const-string/jumbo v4, "bizType"

    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;->mBizType:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    const-string/jumbo v4, "corpId"

    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;->mCorpId:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    const-string/jumbo v4, "data"

    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;->mData:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    const-string/jumbo v4, "expireTime"

    iget-wide v6, p1, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;->mExpireTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1
.end method

.method public final b(Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;)Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;
    .locals 13
    .param p1, "cache"    # Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v6, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v7, 0x0

    .line 37
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;->mDomain:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;->mBizType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;->mCorpId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-object v7

    .line 40
    :cond_1
    invoke-virtual {p0}, Lhfp;->k()Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, "dbName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    const-class v2, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheEntry;

    const-string/jumbo v3, "tb_runtime_cache"

    const-class v4, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheEntry;

    .line 45
    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheEntry;->getColumnNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lhfp$a;->a:Ljava/lang/String;

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v10, p1, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;->mDomain:Ljava/lang/String;

    aput-object v10, v6, v8

    iget-object v8, p1, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;->mBizType:Ljava/lang/String;

    aput-object v8, v6, v11

    iget-object v8, p1, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;->mCorpId:Ljava/lang/String;

    aput-object v8, v6, v12

    const-string/jumbo v8, "1"

    .line 44
    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 47
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 49
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    .line 1090
    if-nez v9, :cond_2

    .line 53
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1093
    :cond_2
    :try_start_1
    new-instance v7, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;

    invoke-direct {v7}, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;-><init>()V

    .line 1094
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;->mDomain:Ljava/lang/String;

    .line 1095
    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;->mBizType:Ljava/lang/String;

    .line 1096
    const/4 v0, 0x3

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;->mCorpId:Ljava/lang/String;

    .line 1097
    const/4 v0, 0x4

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;->mData:Ljava/lang/String;

    .line 1098
    const/4 v0, 0x5

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v7, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;->mExpireTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 53
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public final c(Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;)I
    .locals 8
    .param p1, "cache"    # Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 60
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;->mDomain:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;->mBizType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;->mCorpId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v6

    .line 67
    :goto_0
    return v0

    .line 63
    :cond_1
    invoke-virtual {p0}, Lhfp;->k()Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "dbName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v6

    .line 65
    goto :goto_0

    .line 67
    :cond_2
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    const-class v2, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheEntry;

    const-string/jumbo v3, "tb_runtime_cache"

    sget-object v4, Lhfp$a;->a:Ljava/lang/String;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    iget-object v7, p1, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;->mDomain:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p1, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;->mBizType:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p1, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;->mCorpId:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/bee/DBManager;->delete(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
