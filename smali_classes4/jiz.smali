.class public Ljiz;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DBHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljiz$a;
    }
.end annotation


# static fields
.field private static volatile c:Ljiz;

.field private static final e:Ljava/util/concurrent/locks/Lock;


# instance fields
.field public a:I

.field b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljiz$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Ljiz;->c:Ljiz;

    .line 37
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Ljiz;->e:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "version"    # I

    .prologue
    .line 63
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Ljiz;->a:I

    .line 35
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ljiz;->b:Ljava/util/LinkedList;

    .line 64
    iput-object p1, p0, Ljiz;->d:Landroid/content/Context;

    .line 65
    return-void
.end method

.method public static a(Landroid/content/Context;)Ljiz;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    sget-object v0, Ljiz;->c:Ljiz;

    if-nez v0, :cond_1

    .line 53
    const-class v1, Ljiz;

    monitor-enter v1

    .line 54
    :try_start_0
    sget-object v0, Ljiz;->c:Ljiz;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Ljiz;

    const-string/jumbo v2, "accs.db"

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-direct {v0, p0, v2, v3, v4}, Ljiz;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    sput-object v0, Ljiz;->c:Ljiz;

    .line 57
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :cond_1
    sget-object v0, Ljiz;->c:Ljiz;

    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Z)Ljava/util/List;
    .locals 16
    .param p1, "isToday"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 139
    monitor-enter p0

    .line 141
    const/4 v10, 0x0

    .line 142
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    .local v12, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;>;"
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Ljiz;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 145
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    .line 179
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v12, 0x0

    .line 182
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v12    # "infos":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;>;"
    :goto_0
    return-object v12

    .line 148
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v12    # "infos":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;>;"
    :cond_0
    if-eqz p1, :cond_2

    .line 149
    :try_start_3
    const-string/jumbo v1, "traffic"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string/jumbo v14, "_id"

    aput-object v14, v2, v13

    const/4 v13, 0x1

    const-string/jumbo v14, "date"

    aput-object v14, v2, v13

    const/4 v13, 0x2

    const-string/jumbo v14, "host"

    aput-object v14, v2, v13

    const/4 v13, 0x3

    const-string/jumbo v14, "serviceid"

    aput-object v14, v2, v13

    const/4 v13, 0x4

    const-string/jumbo v14, "bid"

    aput-object v14, v2, v13

    const/4 v13, 0x5

    const-string/jumbo v14, "isbackground"

    aput-object v14, v2, v13

    const/4 v13, 0x6

    const-string/jumbo v14, "size"

    aput-object v14, v2, v13

    const-string/jumbo v3, "date=?"

    const/4 v13, 0x1

    new-array v4, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {v14, v15}, Lcom/taobao/accs/utl/UtilityImpl;->formatDay(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v4, v13

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "100"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v10

    .line 156
    :goto_1
    if-nez v10, :cond_3

    .line 178
    if-eqz v10, :cond_1

    .line 179
    :try_start_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_1
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v12, 0x0

    goto :goto_0

    .line 152
    :cond_2
    :try_start_5
    const-string/jumbo v1, "traffic"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string/jumbo v14, "_id"

    aput-object v14, v2, v13

    const/4 v13, 0x1

    const-string/jumbo v14, "date"

    aput-object v14, v2, v13

    const/4 v13, 0x2

    const-string/jumbo v14, "host"

    aput-object v14, v2, v13

    const/4 v13, 0x3

    const-string/jumbo v14, "serviceid"

    aput-object v14, v2, v13

    const/4 v13, 0x4

    const-string/jumbo v14, "bid"

    aput-object v14, v2, v13

    const/4 v13, 0x5

    const-string/jumbo v14, "isbackground"

    aput-object v14, v2, v13

    const/4 v13, 0x6

    const-string/jumbo v14, "size"

    aput-object v14, v2, v13

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "100"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    goto :goto_1

    .line 159
    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 162
    :cond_4
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 163
    .local v3, "date":Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 164
    .local v7, "host":Ljava/lang/String;
    const/4 v1, 0x3

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 165
    .local v5, "serviceId":Ljava/lang/String;
    const/4 v1, 0x4

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 166
    .local v4, "bid":Ljava/lang/String;
    const/4 v1, 0x5

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 167
    .local v6, "isbackground":Z
    const/4 v1, 0x6

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 168
    .local v8, "size":J
    if-eqz v4, :cond_5

    const-wide/16 v14, 0x0

    cmp-long v1, v8, v14

    if-lez v1, :cond_5

    .line 169
    new-instance v2, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;

    invoke-direct/range {v2 .. v9}, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;J)V

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    const-string/jumbo v1, "DBHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "resotre traffics from db bid:"

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v13, " serviceid:"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v13, " host:"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v13, " size:"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v1, v2, v13}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    :cond_5
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v1

    if-nez v1, :cond_4

    .line 178
    .end local v3    # "date":Ljava/lang/String;
    .end local v4    # "bid":Ljava/lang/String;
    .end local v5    # "serviceId":Ljava/lang/String;
    .end local v6    # "isbackground":Z
    .end local v7    # "host":Ljava/lang/String;
    .end local v8    # "size":J
    :cond_6
    if-eqz v10, :cond_7

    .line 179
    :try_start_6
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 182
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_7
    :goto_2
    monitor-exit p0

    goto/16 :goto_0

    .line 183
    .end local v12    # "infos":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1

    .line 175
    .restart local v12    # "infos":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;>;"
    :catch_0
    move-exception v11

    .line 176
    .local v11, "e":Ljava/lang/Exception;
    :try_start_7
    const-string/jumbo v1, "DBHelper"

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v1, v2, v13}, Lcom/taobao/accs/utl/ALog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 178
    if-eqz v10, :cond_7

    .line 179
    :try_start_8
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 178
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v1

    if-eqz v10, :cond_8

    .line 179
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method public declared-synchronized a(Ljava/lang/String;[Ljava/lang/Object;Z)V
    .locals 6
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "force"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 188
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Ljiz;->b:Ljava/util/LinkedList;

    new-instance v4, Ljiz$a;

    const/4 v5, 0x0

    invoke-direct {v4, p0, p1, p2, v5}, Ljiz$a;-><init>(Ljiz;Ljava/lang/String;[Ljava/lang/Object;B)V

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object v3, p0, Ljiz;->b:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    .line 191
    invoke-virtual {p0}, Ljiz;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 192
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    .line 227
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    monitor-exit p0

    return-void

    .line 196
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    :try_start_1
    iget-object v3, p0, Ljiz;->b:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 197
    iget-object v3, p0, Ljiz;->b:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljiz$a;

    .line 202
    .local v2, "sObject":Ljiz$a;
    iget-object v3, v2, Ljiz$a;->b:[Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 203
    iget-object v3, v2, Ljiz$a;->a:Ljava/lang/String;

    iget-object v4, v2, Ljiz$a;->b:[Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    :goto_1
    iget-object v3, v2, Ljiz$a;->a:Ljava/lang/String;

    const-string/jumbo v4, "INSERT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 209
    iget v3, p0, Ljiz;->a:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljiz;->a:I

    .line 210
    iget v3, p0, Ljiz;->a:I

    const/16 v4, 0xfa0

    if-le v3, v4, :cond_0

    .line 211
    const-string/jumbo v3, "DBHelper"

    const-string/jumbo v4, "db is full!"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v0, v3, v4}, Ljiz;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 213
    const/4 v3, 0x0

    iput v3, p0, Ljiz;->a:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 220
    .end local v2    # "sObject":Ljiz$a;
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 224
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v1

    .line 225
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v3, "DBHelper"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 188
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 205
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "sObject":Ljiz$a;
    :cond_2
    :try_start_4
    iget-object v3, v2, Ljiz$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 220
    .end local v2    # "sObject":Ljiz$a;
    :catchall_1
    move-exception v3

    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 11
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "bid"    # Ljava/lang/String;
    .param p3, "isBackground"    # Z
    .param p4, "date"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 113
    monitor-enter p0

    const/4 v9, 0x0

    .line 115
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Ljiz;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 116
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    .line 128
    const/4 v1, 0x0

    .line 132
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    monitor-exit p0

    return v1

    .line 119
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    :try_start_1
    const-string/jumbo v1, "traffic"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "date"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "host"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "serviceid"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "bid"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "isbackground"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "size"

    aput-object v4, v2, v3

    const-string/jumbo v3, "date=? AND host=? AND bid=? AND isbackground=?"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p4, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    const/4 v5, 0x3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "100"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 121
    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    if-lez v1, :cond_2

    .line 127
    if-eqz v9, :cond_1

    .line 128
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 127
    :cond_2
    if-eqz v9, :cond_3

    .line 128
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 132
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_3
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 124
    :catch_0
    move-exception v10

    .line 125
    .local v10, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v1, "DBHelper"

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 127
    if-eqz v9, :cond_3

    .line 128
    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 113
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 127
    :catchall_1
    move-exception v1

    if-eqz v9, :cond_4

    .line 128
    :try_start_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 44
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v0

    const v1, 0x19000

    invoke-static {v0, v1}, Ljjg;->a(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    const/4 v0, 0x0

    .line 48
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_0
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 78
    :try_start_0
    sget-object v0, Ljiz;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS traffic(_id INTEGER PRIMARY KEY AUTOINCREMENT, date TEXT, host TEXT,serviceid TEXT, bid TEXT, isbackground TEXT, size TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :cond_0
    sget-object v0, Ljiz;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 84
    return-void

    .line 83
    :catchall_0
    move-exception v0

    sget-object v1, Ljiz;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 89
    if-ge p2, p3, :cond_0

    .line 90
    const-string/jumbo v0, "DROP TABLE IF EXISTS service"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 91
    const-string/jumbo v0, "DROP TABLE IF EXISTS network"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 92
    const-string/jumbo v0, "DROP TABLE IF EXISTS ping"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 93
    const-string/jumbo v0, "DROP TABLE IF EXISTS msg"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 94
    const-string/jumbo v0, "DROP TABLE IF EXISTS ack"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 95
    const-string/jumbo v0, "DROP TABLE IF EXISTS election"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 96
    const-string/jumbo v0, "DROP TABLE IF EXISTS bindApp"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 97
    const-string/jumbo v0, "DROP TABLE IF EXISTS bindUser"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 98
    const-string/jumbo v0, "DROP TABLE IF EXISTS traffic"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0, p1}, Ljiz;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 101
    :cond_0
    return-void
.end method
