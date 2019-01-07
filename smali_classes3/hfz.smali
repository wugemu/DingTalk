.class public Lhfz;
.super Ljava/lang/Object;
.source "SqlUtils.java"


# static fields
.field private static a:I

.field private static volatile b:Lhfz;


# instance fields
.field private c:Lcom/alibaba/bee/DBManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/16 v0, 0x3e8

    sput v0, Lhfz;->a:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->launch(Landroid/content/Context;)V

    .line 36
    const-class v0, Lcom/alibaba/bee/DBManager;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/bee/DBManager;

    iput-object v0, p0, Lhfz;->c:Lcom/alibaba/bee/DBManager;

    .line 37
    return-void
.end method

.method static synthetic a(Lhfz;)Lcom/alibaba/bee/DBManager;
    .locals 1
    .param p0, "x0"    # Lhfz;

    .prologue
    .line 28
    iget-object v0, p0, Lhfz;->c:Lcom/alibaba/bee/DBManager;

    return-object v0
.end method

.method public static a()Lhfz;
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lhfz;->b:Lhfz;

    if-nez v0, :cond_1

    .line 41
    const-class v1, Lhfz;

    monitor-enter v1

    .line 42
    :try_start_0
    sget-object v0, Lhfz;->b:Lhfz;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lhfz;

    invoke-direct {v0}, Lhfz;-><init>()V

    sput-object v0, Lhfz;->b:Lhfz;

    .line 45
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :cond_1
    sget-object v0, Lhfz;->b:Lhfz;

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 28
    .line 8051
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    .line 8052
    const-string/jumbo v0, "UPDATE "

    invoke-virtual {v3, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 8053
    invoke-virtual {v3, p0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 8054
    const-string/jumbo v0, " SET "

    invoke-virtual {v3, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 8055
    const/4 v0, 0x1

    .line 8056
    array-length v4, p2

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, p2, v2

    .line 8057
    if-eqz v0, :cond_0

    move v0, v1

    .line 8062
    :goto_1
    invoke-virtual {v3, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 8063
    const-string/jumbo v5, "=?"

    invoke-virtual {v3, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 8056
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8060
    :cond_0
    const-string/jumbo v6, ","

    invoke-virtual {v3, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_1

    .line 8065
    :cond_1
    const-string/jumbo v0, " WHERE "

    invoke-virtual {v3, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 8066
    invoke-virtual {v3, p1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 8067
    const-string/jumbo v0, "=?"

    invoke-virtual {v3, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 8068
    invoke-virtual {v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 28
    return-object v0
.end method

.method private c(Lcom/alibaba/lightapp/runtime/database/StepCountObject;)I
    .locals 8
    .param p1, "stepCountObject"    # Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 130
    new-instance v3, Lcom/alibaba/lightapp/runtime/database/StepCountEntry;

    invoke-direct {v3}, Lcom/alibaba/lightapp/runtime/database/StepCountEntry;-><init>()V

    .line 132
    .local v3, "stepCountEntry":Lcom/alibaba/lightapp/runtime/database/StepCountEntry;
    invoke-static {}, Lclu;->a()Ljava/util/Calendar;

    move-result-object v0

    .line 133
    .local v0, "calendar":Ljava/util/Calendar;
    iget-wide v4, p1, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->timestamp:J

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 135
    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iput v4, v3, Lcom/alibaba/lightapp/runtime/database/StepCountEntry;->dayYear:I

    .line 136
    iget v4, p1, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->steps:I

    iput v4, v3, Lcom/alibaba/lightapp/runtime/database/StepCountEntry;->stepCountNumber:I

    .line 137
    iget v4, p1, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->totalSteps:I

    iput v4, v3, Lcom/alibaba/lightapp/runtime/database/StepCountEntry;->totalSteps:I

    .line 138
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iput v4, v3, Lcom/alibaba/lightapp/runtime/database/StepCountEntry;->year:I

    .line 139
    iget-wide v4, p1, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->timestamp:J

    iput-wide v4, v3, Lcom/alibaba/lightapp/runtime/database/StepCountEntry;->timestamp:J

    .line 140
    iget v4, p1, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->status:I

    iput v4, v3, Lcom/alibaba/lightapp/runtime/database/StepCountEntry;->status:I

    .line 141
    iget-wide v4, p1, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->uid:J

    iput-wide v4, v3, Lcom/alibaba/lightapp/runtime/database/StepCountEntry;->uid:J

    .line 142
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 144
    .local v2, "result":Ljava/util/concurrent/atomic/AtomicInteger;
    :try_start_0
    iget-object v4, p0, Lhfz;->c:Lcom/alibaba/bee/DBManager;

    .line 2297
    const-string/jumbo v5, "0.db"

    .line 144
    new-instance v6, Lhfz$2;

    invoke-direct {v6, p0, v3, v2}, Lhfz$2;-><init>(Lhfz;Lcom/alibaba/lightapp/runtime/database/StepCountEntry;Ljava/util/concurrent/atomic/AtomicInteger;)V

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/alibaba/bee/DBManager;->execInTransaction(Ljava/lang/String;Ljava/lang/Runnable;Lcom/alibaba/bee/SQLiteTransactionListener;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_0
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v4

    return v4

    .line 159
    :catch_0
    move-exception v1

    .line 160
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 161
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected static c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    const-string/jumbo v0, "0.db"

    return-object v0
.end method

.method private e()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/lightapp/runtime/database/StepCountObject;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v13, 0x0

    .line 301
    const/4 v9, 0x0

    .line 303
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lhfz;->c:Lcom/alibaba/bee/DBManager;

    .line 7297
    const-string/jumbo v1, "0.db"

    .line 303
    const-class v2, Lcom/alibaba/lightapp/runtime/database/StepCountEntry;

    const-string/jumbo v3, "stepcount"

    const-class v4, Lcom/alibaba/lightapp/runtime/database/StepCountEntry;

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/database/StepCountEntry;->getColumnNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "timestamp"

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 306
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 307
    .local v12, "results":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/database/StepCountObject;>;"
    if-eqz v9, :cond_2

    .line 308
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 309
    new-instance v11, Lcom/alibaba/lightapp/runtime/database/StepCountEntry;

    invoke-direct {v11}, Lcom/alibaba/lightapp/runtime/database/StepCountEntry;-><init>()V

    .line 310
    .local v11, "entry":Lcom/alibaba/lightapp/runtime/database/StepCountEntry;
    invoke-virtual {v11, v9}, Lcom/alibaba/lightapp/runtime/database/StepCountEntry;->fillWithCursor(Landroid/database/Cursor;)V

    .line 311
    invoke-virtual {v11}, Lcom/alibaba/lightapp/runtime/database/StepCountEntry;->toObject()Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 315
    .end local v11    # "entry":Lcom/alibaba/lightapp/runtime/database/StepCountEntry;
    .end local v12    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/database/StepCountObject;>;"
    :catch_0
    move-exception v10

    .line 316
    .local v10, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "getStepsByTimeStamp"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->log(Ljava/lang/String;)V

    .line 317
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 319
    if-eqz v9, :cond_0

    .line 320
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v12, v13

    .line 323
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-object v12

    .line 319
    .restart local v12    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/database/StepCountObject;>;"
    :cond_2
    if-eqz v9, :cond_1

    .line 320
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 319
    .end local v12    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/database/StepCountObject;>;"
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_3

    .line 320
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(II)Ljava/util/List;
    .locals 13
    .param p1, "year"    # I
    .param p2, "dayOfYear"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/lightapp/runtime/database/StepCountObject;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 216
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "getStepsByDayOfYear: year="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", dayOfYear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    if-lez p2, :cond_0

    const/16 v0, 0x7e0

    if-ge p1, v0, :cond_2

    .line 218
    :cond_0
    const/4 v12, 0x0

    .line 240
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v12

    .line 220
    :cond_2
    const/4 v9, 0x0

    .line 222
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_1
    iget-object v0, p0, Lhfz;->c:Lcom/alibaba/bee/DBManager;

    .line 4297
    const-string/jumbo v1, "0.db"

    .line 222
    const-class v2, Lcom/alibaba/lightapp/runtime/database/StepCountEntry;

    const-string/jumbo v3, "stepcount"

    const-class v4, Lcom/alibaba/lightapp/runtime/database/StepCountEntry;

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/database/StepCountEntry;->getColumnNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "dayYear = ? AND year = ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 223
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const-string/jumbo v7, "timestamp"

    const/4 v8, 0x0

    .line 222
    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 224
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 225
    .local v12, "results":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/database/StepCountObject;>;"
    if-eqz v9, :cond_5

    .line 226
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 227
    new-instance v11, Lcom/alibaba/lightapp/runtime/database/StepCountEntry;

    invoke-direct {v11}, Lcom/alibaba/lightapp/runtime/database/StepCountEntry;-><init>()V

    .line 228
    .local v11, "lastEntry":Lcom/alibaba/lightapp/runtime/database/StepCountEntry;
    invoke-virtual {v11, v9}, Lcom/alibaba/lightapp/runtime/database/StepCountEntry;->fillWithCursor(Landroid/database/Cursor;)V

    .line 229
    invoke-virtual {v11}, Lcom/alibaba/lightapp/runtime/database/StepCountEntry;->toObject()Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 233
    .end local v11    # "lastEntry":Lcom/alibaba/lightapp/runtime/database/StepCountEntry;
    .end local v12    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/database/StepCountObject;>;"
    :catch_0
    move-exception v10

    .line 234
    .local v10, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 236
    if-eqz v9, :cond_3

    .line 237
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 240
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_2
    const/4 v12, 0x0

    goto :goto_0

    .line 236
    .restart local v12    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/database/StepCountObject;>;"
    :cond_4
    if-eqz v9, :cond_1

    .line 237
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 216
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v12    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/database/StepCountObject;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 236
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/database/StepCountObject;>;"
    :cond_5
    if-eqz v9, :cond_3

    .line 237
    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 236
    .end local v12    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/database/StepCountObject;>;"
    :catchall_1
    move-exception v0

    if-eqz v9, :cond_6

    .line 237
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public final declared-synchronized a(Ljava/util/Calendar;I)Ljava/util/List;
    .locals 17
    .param p1, "calendar"    # Ljava/util/Calendar;
    .param p2, "amount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Calendar;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/lightapp/runtime/database/StepCountObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lclu;->a()Ljava/util/Calendar;

    move-result-object v15

    .line 175
    .local v15, "tmpCalendar":Ljava/util/Calendar;
    invoke-virtual/range {p1 .. p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 176
    const/4 v1, 0x6

    move/from16 v0, p2

    invoke-virtual {v15, v1, v0}, Ljava/util/Calendar;->add(II)V

    .line 178
    const/4 v1, 0x6

    invoke-virtual {v15, v1}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 179
    .local v11, "dayOfYear":I
    const/4 v1, 0x1

    invoke-virtual {v15, v1}, Ljava/util/Calendar;->get(I)I

    move-result v16

    .line 180
    .local v16, "year":I
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getStepsByDayOfYear: year="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", dayOfYear="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->log(Ljava/lang/String;)V

    .line 181
    const-string/jumbo v1, "step"

    const-string/jumbo v2, "stepcount"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getMonthAgoStepsByDayOfYear getStepsByDayOfYear: year="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", dayOfYear="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    if-lez v11, :cond_0

    const/16 v1, 0x7e0

    move/from16 v0, v16

    if-ge v0, v1, :cond_2

    .line 183
    :cond_0
    const/4 v14, 0x0

    .line 206
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v14

    .line 185
    :cond_2
    const/4 v10, 0x0

    .line 187
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lhfz;->c:Lcom/alibaba/bee/DBManager;

    .line 3297
    const-string/jumbo v2, "0.db"

    .line 187
    const-class v3, Lcom/alibaba/lightapp/runtime/database/StepCountEntry;

    const-string/jumbo v4, "stepcount"

    const-class v5, Lcom/alibaba/lightapp/runtime/database/StepCountEntry;

    invoke-static {v5}, Lcom/alibaba/lightapp/runtime/database/StepCountEntry;->getColumnNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "dayYear >= ? AND year = ?"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    .line 188
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const-string/jumbo v8, "timestamp"

    const/4 v9, 0x0

    .line 187
    invoke-virtual/range {v1 .. v9}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 189
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .local v14, "results":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/database/StepCountObject;>;"
    if-eqz v10, :cond_5

    .line 191
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 192
    new-instance v13, Lcom/alibaba/lightapp/runtime/database/StepCountEntry;

    invoke-direct {v13}, Lcom/alibaba/lightapp/runtime/database/StepCountEntry;-><init>()V

    .line 193
    .local v13, "lastEntry":Lcom/alibaba/lightapp/runtime/database/StepCountEntry;
    invoke-virtual {v13, v10}, Lcom/alibaba/lightapp/runtime/database/StepCountEntry;->fillWithCursor(Landroid/database/Cursor;)V

    .line 194
    invoke-virtual {v13}, Lcom/alibaba/lightapp/runtime/database/StepCountEntry;->toObject()Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    move-result-object v1

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 198
    .end local v13    # "lastEntry":Lcom/alibaba/lightapp/runtime/database/StepCountEntry;
    .end local v14    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/database/StepCountObject;>;"
    :catch_0
    move-exception v12

    .line 199
    .local v12, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v1, "step"

    const-string/jumbo v2, "stepcount"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "getHistoryStepsByDayOfYear exception:"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 202
    if-eqz v10, :cond_3

    .line 203
    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 206
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_2
    const/4 v14, 0x0

    goto :goto_0

    .line 202
    .restart local v14    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/database/StepCountObject;>;"
    :cond_4
    if-eqz v10, :cond_1

    .line 203
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 174
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v11    # "dayOfYear":I
    .end local v14    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/database/StepCountObject;>;"
    .end local v15    # "tmpCalendar":Ljava/util/Calendar;
    .end local v16    # "year":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 202
    .restart local v10    # "cursor":Landroid/database/Cursor;
    .restart local v11    # "dayOfYear":I
    .restart local v14    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/database/StepCountObject;>;"
    .restart local v15    # "tmpCalendar":Ljava/util/Calendar;
    .restart local v16    # "year":I
    :cond_5
    if-eqz v10, :cond_3

    .line 203
    :try_start_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 202
    .end local v14    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/database/StepCountObject;>;"
    :catchall_1
    move-exception v1

    if-eqz v10, :cond_6

    .line 203
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public final declared-synchronized a(Lcom/alibaba/lightapp/runtime/database/StepCountObject;)V
    .locals 2
    .param p1, "stepCountObject"    # Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 73
    monitor-enter p0

    if-nez p1, :cond_0

    .line 78
    :goto_0
    monitor-exit p0

    return-void

    .line 76
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "insertStep:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->log(Ljava/lang/String;)V

    .line 77
    invoke-direct {p0, p1}, Lhfz;->c(Lcom/alibaba/lightapp/runtime/database/StepCountObject;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Lcom/alibaba/lightapp/runtime/database/StepCountObject;)V
    .locals 6
    .param p1, "stepCountObject"    # Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateStepsEntry: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    if-nez p1, :cond_0

    .line 124
    :goto_0
    monitor-exit p0

    return-void

    .line 98
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/alibaba/lightapp/runtime/database/StepCountEntry;->fromObject(Lcom/alibaba/lightapp/runtime/database/StepCountObject;)Lcom/alibaba/lightapp/runtime/database/StepCountEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 100
    .local v1, "stepCountEntry":Lcom/alibaba/lightapp/runtime/database/StepCountEntry;
    :try_start_2
    iget-object v2, p0, Lhfz;->c:Lcom/alibaba/bee/DBManager;

    .line 1297
    const-string/jumbo v3, "0.db"

    .line 100
    new-instance v4, Lhfz$1;

    invoke-direct {v4, p0, v1}, Lhfz$1;-><init>(Lhfz;Lcom/alibaba/lightapp/runtime/database/StepCountEntry;)V

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/alibaba/bee/DBManager;->execInTransaction(Ljava/lang/String;Ljava/lang/Runnable;Lcom/alibaba/bee/SQLiteTransactionListener;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 93
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "stepCountEntry":Lcom/alibaba/lightapp/runtime/database/StepCountEntry;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public final declared-synchronized b()Z
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 247
    monitor-enter p0

    const/4 v9, 0x0

    .line 249
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, "abs("

    .line 250
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, "timestamp"

    .line 251
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") "

    .line 252
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 253
    .local v7, "orderString":Ljava/lang/String;
    iget-object v0, p0, Lhfz;->c:Lcom/alibaba/bee/DBManager;

    .line 5297
    const-string/jumbo v1, "0.db"

    .line 253
    const-class v2, Lcom/alibaba/lightapp/runtime/database/StepCountEntry;

    const-string/jumbo v3, "stepcount"

    const-class v4, Lcom/alibaba/lightapp/runtime/database/StepCountEntry;

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/database/StepCountEntry;->getColumnNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 255
    if-eqz v9, :cond_1

    .line 256
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v13

    .line 257
    .local v13, "tableCount":I
    sget v0, Lhfz;->a:I

    if-le v13, v0, :cond_1

    .line 258
    sget v0, Lhfz;->a:I

    div-int/lit8 v0, v0, 0x2

    sub-int v10, v13, v0

    .line 265
    .local v10, "delCount":I
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, "delete from "

    .line 266
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, "stepcount"

    .line 267
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, " where "

    .line 268
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_id"

    .line 269
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, " in (select "

    .line 270
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_id"

    .line 271
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, " from "

    .line 272
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, "stepcount"

    .line 273
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, " order by "

    .line 274
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, "timestamp"

    .line 275
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, " limit 0,"

    .line 276
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 277
    invoke-virtual {v0, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    .line 278
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 279
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 280
    .local v11, "delString":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "reduceTableCapacity: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->log(Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lhfz;->c:Lcom/alibaba/bee/DBManager;

    .line 6297
    const-string/jumbo v1, "0.db"

    .line 281
    invoke-virtual {v0, v1, v11}, Lcom/alibaba/bee/DBManager;->execRaw(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string/jumbo v0, "lightapp"

    const-string/jumbo v1, "stepcount"

    const-string/jumbo v2, "reduceCapacity"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 289
    if-eqz v9, :cond_0

    .line 290
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    const/4 v0, 0x1

    .line 293
    .end local v7    # "orderString":Ljava/lang/String;
    .end local v10    # "delCount":I
    .end local v11    # "delString":Ljava/lang/String;
    .end local v13    # "tableCount":I
    :goto_0
    monitor-exit p0

    return v0

    .line 289
    .restart local v7    # "orderString":Ljava/lang/String;
    :cond_1
    if-eqz v9, :cond_2

    .line 290
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 293
    .end local v7    # "orderString":Ljava/lang/String;
    :cond_2
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 286
    :catch_0
    move-exception v12

    .line 287
    .local v12, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 289
    if-eqz v9, :cond_2

    .line 290
    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 247
    .end local v12    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 289
    :catchall_1
    move-exception v0

    if-eqz v9, :cond_3

    .line 290
    :try_start_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public final d()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 327
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v2

    sget v3, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-eq v2, v3, :cond_1

    .line 341
    :cond_0
    return-void

    .line 330
    :cond_1
    invoke-direct {p0}, Lhfz;->e()Ljava/util/List;

    move-result-object v1

    .line 331
    .local v1, "steps":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/database/StepCountObject;>;"
    if-eqz v1, :cond_0

    .line 335
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    .line 336
    .local v0, "stepCountObject":Lcom/alibaba/lightapp/runtime/database/StepCountObject;
    if-eqz v0, :cond_2

    .line 339
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "dumpDB"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "\n"

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
