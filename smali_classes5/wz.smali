.class public final Lwz;
.super Ljava/lang/Object;
.source "Storage.java"

# interfaces
.implements Landroid/content/SharedPreferences;


# static fields
.field private static f:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Landroid/content/Context;",
            "Lwz;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public volatile a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field d:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lwz;->f:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lwz;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 29
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lwz;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 32
    const/4 v0, 0x2

    iput v0, p0, Lwz;->g:I

    .line 33
    const-string/jumbo v0, "preferences_storage"

    iput-object v0, p0, Lwz;->h:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lwz;->c:Ljava/lang/ThreadLocal;

    .line 37
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lwz;->d:Ljava/lang/ThreadLocal;

    .line 39
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lwz;->e:Ljava/lang/ThreadLocal;

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lwz;->i:Landroid/content/Context;

    .line 247
    iput-object p1, p0, Lwz;->i:Landroid/content/Context;

    .line 248
    invoke-direct {p0}, Lwz;->c()V

    .line 249
    return-void
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "mDb"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 419
    const/4 v8, 0x0

    .line 420
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 423
    .local v9, "value":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v1, "preferences_storage"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "value"

    aput-object v3, v2, v0

    const-string/jumbo v3, "primkey = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 432
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 435
    sget-boolean v0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 437
    sget-object v0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Loading key \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\', value = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    :cond_0
    if-eqz v8, :cond_1

    .line 445
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 449
    :cond_1
    return-object v9

    .line 443
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 445
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static a(Landroid/content/Context;)Lwz;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 172
    sget-object v2, Lwz;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lwz;

    .line 173
    .local v1, "tmpStorage":Lwz;
    if-eqz v1, :cond_2

    .line 175
    sget-boolean v2, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 177
    sget-object v2, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    :cond_0
    move-object v0, v1

    .line 203
    :cond_1
    :goto_0
    return-object v0

    .line 183
    :cond_2
    sget-boolean v2, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 185
    sget-object v2, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    .line 187
    :cond_3
    new-instance v1, Lwz;

    .end local v1    # "tmpStorage":Lwz;
    invoke-direct {v1, p0}, Lwz;-><init>(Landroid/content/Context;)V

    .line 188
    .restart local v1    # "tmpStorage":Lwz;
    sget-object v2, Lwz;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwz;

    .line 189
    .local v0, "oldStorage":Lwz;
    if-eqz v0, :cond_4

    .line 191
    sget-boolean v2, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 193
    sget-object v2, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    goto :goto_0

    .line 199
    :cond_4
    sget-boolean v2, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v2, :cond_5

    .line 201
    sget-object v2, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    :cond_5
    move-object v0, v1

    .line 203
    goto :goto_0
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "mDb"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 454
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 455
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v1, "primkey"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    const-string/jumbo v1, "preferences_storage"

    const-string/jumbo v4, "primkey"

    invoke-virtual {p0, v1, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 460
    .local v2, "result":J
    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 462
    sget-boolean v1, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 463
    sget-object v1, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Error writing key \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\', value = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_0
    return-void
.end method

.method private c()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 211
    .local v6, "startTime":J
    sget-object v8, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    .line 212
    const/4 v0, 0x0

    .line 213
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v4, 0x0

    .line 216
    .local v4, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {p0}, Lwz;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 218
    const-string/jumbo v8, "SELECT primkey, value FROM preferences_storage"

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 219
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 221
    const/4 v8, 0x0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, "key":Ljava/lang/String;
    const/4 v8, 0x1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 223
    .local v5, "value":Ljava/lang/String;
    sget-boolean v8, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v8, :cond_0

    .line 225
    sget-object v8, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Loading key \'"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\', value = \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    :cond_0
    iget-object v8, p0, Lwz;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v1, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 232
    .end local v1    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v8

    if-eqz v0, :cond_1

    .line 234
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 236
    :cond_1
    if-eqz v4, :cond_2

    .line 238
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 240
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 241
    .local v2, "endTime":J
    sget-object v9, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Preferences load took "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v10, v2, v6

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    throw v8

    .line 232
    .end local v2    # "endTime":J
    :cond_3
    if-eqz v0, :cond_4

    .line 234
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 236
    :cond_4
    if-eqz v4, :cond_5

    .line 238
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 240
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 241
    .restart local v2    # "endTime":J
    sget-object v8, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Preferences load took "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v10, v2, v6

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    return-void
.end method


# virtual methods
.method a()Landroid/database/sqlite/SQLiteDatabase;
    .locals 26

    .prologue
    .line 46
    move-object/from16 v0, p0

    iget-object v3, v0, Lwz;->i:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lwz;->h:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    .line 48
    .local v13, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_c

    .line 50
    sget-object v3, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    .line 52
    const-string/jumbo v3, "accountUuids"

    invoke-static {v13, v3}, Lwz;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 53
    .local v10, "accountUuids":Ljava/lang/String;
    if-eqz v10, :cond_b

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_b

    .line 55
    const-string/jumbo v3, ","

    invoke-virtual {v10, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 56
    .local v23, "uuids":[Ljava/lang/String;
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v25, v0

    const/4 v3, 0x0

    move/from16 v24, v3

    :goto_0
    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_b

    aget-object v22, v23, v24

    .line 60
    .local v22, "uuid":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ".storeUri"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Lwz;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lva;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 61
    .local v17, "storeUriStr":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ".transportUri"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Lwz;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lva;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 63
    .local v18, "transportUriStr":Ljava/lang/String;
    new-instance v19, Ljava/net/URI;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 64
    .local v19, "uri":Ljava/net/URI;
    const/4 v4, 0x0

    .line 65
    .local v4, "newUserInfo":Ljava/lang/String;
    if-eqz v18, :cond_2

    .line 67
    invoke-virtual/range {v19 .. v19}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 69
    .local v20, "userInfoParts":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v20, v3

    const-string/jumbo v5, "UTF-8"

    invoke-static {v3, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 70
    .local v21, "usernameEnc":Ljava/lang/String;
    const-string/jumbo v16, ""

    .line 71
    .local v16, "passwordEnc":Ljava/lang/String;
    const-string/jumbo v11, ""

    .line 72
    .local v11, "authType":Ljava/lang/String;
    move-object/from16 v0, v20

    array-length v3, v0

    const/4 v5, 0x1

    if-le v3, v5, :cond_0

    .line 74
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, ":"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    aget-object v5, v20, v5

    const-string/jumbo v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 76
    :cond_0
    move-object/from16 v0, v20

    array-length v3, v0

    const/4 v5, 0x2

    if-le v3, v5, :cond_1

    .line 78
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, ":"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x2

    aget-object v5, v20, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 81
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 84
    .end local v11    # "authType":Ljava/lang/String;
    .end local v16    # "passwordEnc":Ljava/lang/String;
    .end local v20    # "userInfoParts":[Ljava/lang/String;
    .end local v21    # "usernameEnc":Ljava/lang/String;
    :cond_2
    if-eqz v4, :cond_3

    .line 86
    new-instance v2, Ljava/net/URI;

    invoke-virtual/range {v19 .. v19}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v19 .. v19}, Ljava/net/URI;->getPort()I

    move-result v6

    invoke-virtual/range {v19 .. v19}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v19 .. v19}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v19 .. v19}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v2 .. v9}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .local v2, "newUri":Ljava/net/URI;
    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lva;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 88
    .local v15, "newTransportUriStr":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ".transportUri"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3, v15}, Lwz;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .end local v2    # "newUri":Ljava/net/URI;
    .end local v15    # "newTransportUriStr":Ljava/lang/String;
    :cond_3
    new-instance v19, Ljava/net/URI;

    .end local v19    # "uri":Ljava/net/URI;
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 92
    .restart local v19    # "uri":Ljava/net/URI;
    const/4 v4, 0x0

    .line 93
    const-string/jumbo v3, "imap"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 95
    invoke-virtual/range {v19 .. v19}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 96
    .restart local v20    # "userInfoParts":[Ljava/lang/String;
    move-object/from16 v0, v20

    array-length v3, v0

    const/4 v5, 0x2

    if-ne v3, v5, :cond_6

    .line 98
    const/4 v3, 0x0

    aget-object v3, v20, v3

    const-string/jumbo v5, "UTF-8"

    invoke-static {v3, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 99
    .restart local v21    # "usernameEnc":Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v3, v20, v3

    const-string/jumbo v5, "UTF-8"

    invoke-static {v3, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 101
    .restart local v16    # "passwordEnc":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 139
    .end local v16    # "passwordEnc":Ljava/lang/String;
    .end local v20    # "userInfoParts":[Ljava/lang/String;
    .end local v21    # "usernameEnc":Ljava/lang/String;
    :cond_4
    :goto_1
    if-eqz v4, :cond_5

    .line 141
    new-instance v2, Ljava/net/URI;

    invoke-virtual/range {v19 .. v19}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v19 .. v19}, Ljava/net/URI;->getPort()I

    move-result v6

    invoke-virtual/range {v19 .. v19}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v19 .. v19}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v19 .. v19}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v2 .. v9}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .restart local v2    # "newUri":Ljava/net/URI;
    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lva;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 143
    .local v14, "newStoreUriStr":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ".storeUri"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3, v14}, Lwz;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .end local v2    # "newUri":Ljava/net/URI;
    .end local v4    # "newUserInfo":Ljava/lang/String;
    .end local v14    # "newStoreUriStr":Ljava/lang/String;
    .end local v17    # "storeUriStr":Ljava/lang/String;
    .end local v18    # "transportUriStr":Ljava/lang/String;
    .end local v19    # "uri":Ljava/net/URI;
    :cond_5
    :goto_2
    add-int/lit8 v3, v24, 0x1

    move/from16 v24, v3

    goto/16 :goto_0

    .line 105
    .restart local v4    # "newUserInfo":Ljava/lang/String;
    .restart local v17    # "storeUriStr":Ljava/lang/String;
    .restart local v18    # "transportUriStr":Ljava/lang/String;
    .restart local v19    # "uri":Ljava/net/URI;
    .restart local v20    # "userInfoParts":[Ljava/lang/String;
    :cond_6
    const/4 v3, 0x0

    aget-object v11, v20, v3

    .line 106
    .restart local v11    # "authType":Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v3, v20, v3

    const-string/jumbo v5, "UTF-8"

    invoke-static {v3, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 107
    .restart local v21    # "usernameEnc":Ljava/lang/String;
    const/4 v3, 0x2

    aget-object v3, v20, v3

    const-string/jumbo v5, "UTF-8"

    invoke-static {v3, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 109
    .restart local v16    # "passwordEnc":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 111
    goto/16 :goto_1

    .line 112
    .end local v11    # "authType":Ljava/lang/String;
    .end local v16    # "passwordEnc":Ljava/lang/String;
    .end local v20    # "userInfoParts":[Ljava/lang/String;
    .end local v21    # "usernameEnc":Ljava/lang/String;
    :cond_7
    const-string/jumbo v3, "pop3"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 114
    invoke-virtual/range {v19 .. v19}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, ":"

    const/4 v6, 0x2

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v20

    .line 115
    .restart local v20    # "userInfoParts":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v20, v3

    const-string/jumbo v5, "UTF-8"

    invoke-static {v3, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 117
    .restart local v21    # "usernameEnc":Ljava/lang/String;
    const-string/jumbo v16, ""

    .line 118
    .restart local v16    # "passwordEnc":Ljava/lang/String;
    move-object/from16 v0, v20

    array-length v3, v0

    const/4 v5, 0x1

    if-le v3, v5, :cond_8

    .line 120
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, ":"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    aget-object v5, v20, v5

    const-string/jumbo v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 123
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 124
    goto/16 :goto_1

    .line 125
    .end local v16    # "passwordEnc":Ljava/lang/String;
    .end local v20    # "userInfoParts":[Ljava/lang/String;
    .end local v21    # "usernameEnc":Ljava/lang/String;
    :cond_9
    const-string/jumbo v3, "webdav"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 127
    invoke-virtual/range {v19 .. v19}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, ":"

    const/4 v6, 0x2

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v20

    .line 128
    .restart local v20    # "userInfoParts":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v20, v3

    const-string/jumbo v5, "UTF-8"

    invoke-static {v3, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 130
    .restart local v21    # "usernameEnc":Ljava/lang/String;
    const-string/jumbo v16, ""

    .line 131
    .restart local v16    # "passwordEnc":Ljava/lang/String;
    move-object/from16 v0, v20

    array-length v3, v0

    const/4 v5, 0x1

    if-le v3, v5, :cond_a

    .line 133
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, ":"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    aget-object v5, v20, v5

    const-string/jumbo v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 136
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto/16 :goto_1

    .line 146
    .end local v4    # "newUserInfo":Ljava/lang/String;
    .end local v16    # "passwordEnc":Ljava/lang/String;
    .end local v17    # "storeUriStr":Ljava/lang/String;
    .end local v18    # "transportUriStr":Ljava/lang/String;
    .end local v19    # "uri":Ljava/net/URI;
    .end local v20    # "userInfoParts":[Ljava/lang/String;
    .end local v21    # "usernameEnc":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 148
    .local v12, "e":Ljava/lang/Exception;
    sget-boolean v3, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v3, :cond_5

    .line 149
    sget-object v3, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "ooops"

    invoke-static {v3, v5, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 155
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v22    # "uuid":Ljava/lang/String;
    .end local v23    # "uuids":[Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget v3, v0, Lwz;->g:I

    invoke-virtual {v13, v3}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 158
    .end local v10    # "accountUuids":Ljava/lang/String;
    :cond_c
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Lwz;->g:I

    if-eq v3, v5, :cond_d

    .line 160
    sget-object v3, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    .line 161
    const-string/jumbo v3, "DROP TABLE IF EXISTS preferences_storage"

    invoke-virtual {v13, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 162
    const-string/jumbo v3, "CREATE TABLE preferences_storage (primkey TEXT PRIMARY KEY ON CONFLICT REPLACE, value TEXT)"

    invoke-virtual {v13, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 164
    move-object/from16 v0, p0

    iget v3, v0, Lwz;->g:I

    invoke-virtual {v13, v3}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 166
    :cond_d
    return-object v13
.end method

.method protected final a(Ljava/lang/Runnable;)V
    .locals 8
    .param p1, "dbWork"    # Ljava/lang/Runnable;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 291
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 292
    .local v4, "newStorage":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, p0, Lwz;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 293
    iget-object v5, p0, Lwz;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v5, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 295
    invoke-virtual {p0}, Lwz;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 296
    .local v3, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v5, p0, Lwz;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v5, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 298
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 299
    .local v1, "changedKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lwz;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {v5, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 301
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 304
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 305
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 306
    iput-object v4, p0, Lwz;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 307
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 309
    .local v0, "changedKey":Ljava/lang/String;
    iget-object v6, p0, Lwz;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 311
    .local v2, "listener":Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    invoke-interface {v2, p0, v0}, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 317
    .end local v0    # "changedKey":Ljava/lang/String;
    .end local v2    # "listener":Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lwz;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v6}, Ljava/lang/ThreadLocal;->remove()V

    .line 318
    iget-object v6, p0, Lwz;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v6}, Ljava/lang/ThreadLocal;->remove()V

    .line 319
    iget-object v6, p0, Lwz;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {v6}, Ljava/lang/ThreadLocal;->remove()V

    .line 320
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 321
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v5

    .line 317
    :cond_1
    iget-object v5, p0, Lwz;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->remove()V

    .line 318
    iget-object v5, p0, Lwz;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->remove()V

    .line 319
    iget-object v5, p0, Lwz;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->remove()V

    .line 320
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 321
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 322
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 253
    iget-object v1, p0, Lwz;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 254
    .local v0, "changedKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 256
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    :cond_0
    return-void
.end method

.method public final b()Lwy;
    .locals 1

    .prologue
    .line 339
    new-instance v0, Lwy;

    invoke-direct {v0, p0}, Lwy;-><init>(Lwz;)V

    return-object v0
.end method

.method public final contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 333
    iget-object v0, p0, Lwz;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final synthetic edit()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lwz;->b()Lwy;

    move-result-object v0

    return-object v0
.end method

.method public final getAll()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 345
    iget-object v0, p0, Lwz;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public final getBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 351
    iget-object v1, p0, Lwz;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 352
    .local v0, "val":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 356
    .end local p2    # "defValue":Z
    :goto_0
    return p2

    .restart local p2    # "defValue":Z
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    goto :goto_0
.end method

.method public final getFloat(Ljava/lang/String;F)F
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # F

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 362
    iget-object v1, p0, Lwz;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 363
    .local v0, "val":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 367
    .end local p2    # "defValue":F
    :goto_0
    return p2

    .restart local p2    # "defValue":F
    :cond_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    goto :goto_0
.end method

.method public final getInt(Ljava/lang/String;I)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 373
    iget-object v1, p0, Lwz;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 374
    .local v0, "val":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 378
    .end local p2    # "defValue":I
    :goto_0
    return p2

    .restart local p2    # "defValue":I
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_0
.end method

.method public final getLong(Ljava/lang/String;J)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # J

    .prologue
    .line 384
    iget-object v1, p0, Lwz;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 385
    .local v0, "val":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 389
    .end local p2    # "defValue":J
    :goto_0
    return-wide p2

    .restart local p2    # "defValue":J
    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    goto :goto_0
.end method

.method public final getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 395
    iget-object v1, p0, Lwz;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 396
    .local v0, "val":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 400
    .end local p2    # "defValue":Ljava/lang/String;
    :goto_0
    return-object p2

    .restart local p2    # "defValue":Ljava/lang/String;
    :cond_0
    move-object p2, v0

    goto :goto_0
.end method

.method public final getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 473
    .local p2, "arg1":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public final registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .prologue
    .line 407
    iget-object v0, p0, Lwz;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    .line 408
    return-void
.end method

.method public final unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .prologue
    .line 414
    iget-object v0, p0, Lwz;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 415
    return-void
.end method
