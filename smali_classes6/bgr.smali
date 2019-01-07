.class public Lbgr;
.super Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
.source "DataSourceDingCommentRemindImpl.java"

# interfaces
.implements Lbgq;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "tb_ding_comment_remind._id "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;->DESC:Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;->keyValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbgr;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;-><init>()V

    return-void
.end method

.method static synthetic a(Lbgr;)Lcom/alibaba/bee/DBManager;
    .locals 1
    .param p0, "x0"    # Lbgr;

    .prologue
    .line 26
    iget-object v0, p0, Lbgr;->c:Lcom/alibaba/bee/DBManager;

    return-object v0
.end method

.method static synthetic b(Lbgr;)Lcom/alibaba/bee/DBManager;
    .locals 1
    .param p0, "x0"    # Lbgr;

    .prologue
    .line 26
    iget-object v0, p0, Lbgr;->c:Lcom/alibaba/bee/DBManager;

    return-object v0
.end method

.method static synthetic c(Lbgr;)Lcom/alibaba/bee/DBManager;
    .locals 1
    .param p0, "x0"    # Lbgr;

    .prologue
    .line 26
    iget-object v0, p0, Lbgr;->c:Lcom/alibaba/bee/DBManager;

    return-object v0
.end method

.method static synthetic d(Lbgr;)Lcom/alibaba/bee/DBManager;
    .locals 1
    .param p0, "x0"    # Lbgr;

    .prologue
    .line 26
    iget-object v0, p0, Lbgr;->c:Lcom/alibaba/bee/DBManager;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 144
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 145
    .local v0, "result":Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v1, p0, Lbgr;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Lbgr;->m()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lbgr$3;

    invoke-direct {v3, p0, v0}, Lbgr$3;-><init>(Lbgr;Ljava/util/concurrent/atomic/AtomicInteger;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/bee/DBManager;->execInTransaction(Ljava/lang/String;Ljava/lang/Runnable;Lcom/alibaba/bee/SQLiteTransactionListener;)Z

    .line 160
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v1

    return v1
.end method

.method public final a(JJ)I
    .locals 9
    .param p1, "dingId"    # J
    .param p3, "commentId"    # J

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 87
    cmp-long v1, p1, v2

    if-eqz v1, :cond_0

    cmp-long v1, p3, v2

    if-nez v1, :cond_1

    .line 116
    :cond_0
    :goto_0
    return v0

    .line 90
    :cond_1
    new-instance v6, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v6, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 91
    .local v6, "result":Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v7, p0, Lbgr;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Lbgr;->m()Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lbgr$2;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v6}, Lbgr$2;-><init>(Lbgr;JJLjava/util/concurrent/atomic/AtomicInteger;)V

    const/4 v1, 0x0

    invoke-virtual {v7, v8, v0, v1}, Lcom/alibaba/bee/DBManager;->execInTransaction(Ljava/lang/String;Ljava/lang/Runnable;Lcom/alibaba/bee/SQLiteTransactionListener;)Z

    .line 116
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public final a(Lbeq;)I
    .locals 6
    .param p1, "object"    # Lbeq;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 57
    if-nez p1, :cond_0

    .line 82
    :goto_0
    return v2

    .line 1081
    :cond_0
    new-instance v0, Lcom/alibaba/android/ding/db/entry/EntryDingCommentRemind;

    invoke-direct {v0}, Lcom/alibaba/android/ding/db/entry/EntryDingCommentRemind;-><init>()V

    .line 1082
    iget-wide v4, p1, Lbeq;->a:J

    iput-wide v4, v0, Lcom/alibaba/android/ding/db/entry/EntryDingCommentRemind;->dingId:J

    .line 1083
    iget-wide v4, p1, Lbeq;->b:J

    iput-wide v4, v0, Lcom/alibaba/android/ding/db/entry/EntryDingCommentRemind;->commentId:J

    .line 1084
    iget-wide v4, p1, Lbeq;->c:J

    iput-wide v4, v0, Lcom/alibaba/android/ding/db/entry/EntryDingCommentRemind;->senderId:J

    .line 1085
    iget v3, p1, Lbeq;->d:I

    iput v3, v0, Lcom/alibaba/android/ding/db/entry/EntryDingCommentRemind;->commentType:I

    .line 1086
    iget-object v3, p1, Lbeq;->e:Ljava/lang/String;

    iput-object v3, v0, Lcom/alibaba/android/ding/db/entry/EntryDingCommentRemind;->textContent:Ljava/lang/String;

    .line 1087
    iget-wide v4, p1, Lbeq;->f:J

    iput-wide v4, v0, Lcom/alibaba/android/ding/db/entry/EntryDingCommentRemind;->commentCreateAt:J

    .line 1088
    iget-object v3, p1, Lbeq;->g:Ljava/util/Map;

    invoke-static {v3}, Lbjp;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alibaba/android/ding/db/entry/EntryDingCommentRemind;->commentAtUids:Ljava/lang/String;

    .line 1089
    iget-boolean v3, p1, Lbeq;->h:Z

    iput-boolean v3, v0, Lcom/alibaba/android/ding/db/entry/EntryDingCommentRemind;->commentIsDeleted:Z

    .line 1090
    iget-boolean v3, p1, Lbeq;->i:Z

    iput-boolean v3, v0, Lcom/alibaba/android/ding/db/entry/EntryDingCommentRemind;->commentIsAttachment:Z

    .line 1091
    iget-object v3, p1, Lbeq;->j:Ljava/lang/String;

    iput-object v3, v0, Lcom/alibaba/android/ding/db/entry/EntryDingCommentRemind;->commentNote:Ljava/lang/String;

    .line 61
    .local v0, "entry":Lcom/alibaba/android/ding/db/entry/EntryDingCommentRemind;
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 62
    .local v1, "result":Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v2, p0, Lbgr;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Lbgr;->m()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lbgr$1;

    invoke-direct {v4, p0, v0, v1}, Lbgr$1;-><init>(Lbgr;Lcom/alibaba/android/ding/db/entry/EntryDingCommentRemind;Ljava/util/concurrent/atomic/AtomicInteger;)V

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/alibaba/bee/DBManager;->execInTransaction(Ljava/lang/String;Ljava/lang/Runnable;Lcom/alibaba/bee/SQLiteTransactionListener;)Z

    .line 82
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v2

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .local p1, "dingIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/16 v6, 0x1f4

    const/4 v4, 0x0

    .line 166
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 215
    :cond_0
    :goto_0
    return v4

    .line 170
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 171
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 172
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 173
    .local v1, "id":Ljava/lang/Long;
    if-nez v1, :cond_2

    .line 174
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 178
    .end local v1    # "id":Ljava/lang/Long;
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 182
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v6, :cond_4

    .line 183
    invoke-interface {p1, v4, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 186
    .local v0, "dingIdsToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :goto_2
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 187
    .local v3, "result":Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v4, p0, Lbgr;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Lbgr;->m()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lbgr$4;

    invoke-direct {v6, p0, v0, v3}, Lbgr$4;-><init>(Lbgr;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;)V

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/alibaba/bee/DBManager;->execInTransaction(Ljava/lang/String;Ljava/lang/Runnable;Lcom/alibaba/bee/SQLiteTransactionListener;)Z

    .line 215
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v4

    goto :goto_0

    .end local v0    # "dingIdsToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v3    # "result":Ljava/util/concurrent/atomic/AtomicInteger;
    :cond_4
    move-object v0, p1

    .line 183
    goto :goto_2
.end method

.method public final b()I
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 266
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 267
    .local v0, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v6, "SELECT count(*) FROM  tb_ding_comment_remind inner join tbdinglist ON tb_ding_comment_remind.dingId=tbdinglist.dingId"

    invoke-virtual {v0, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 268
    const-string/jumbo v6, " WHERE "

    invoke-virtual {v0, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 270
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "dingOperationStatus"

    aput-object v7, v6, v8

    const-string/jumbo v7, "=? "

    aput-object v7, v6, v9

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 271
    .local v5, "whereStatement":Ljava/lang/String;
    invoke-virtual {v0, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 273
    new-array v4, v9, [Ljava/lang/String;

    sget-object v6, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->NORMAL:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    invoke-virtual {v6}, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->getValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v8

    .line 275
    .local v4, "whereArgs":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 276
    .local v1, "count":I
    const/4 v2, 0x0

    .line 278
    .local v2, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v6, p0, Lbgr;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Lbgr;->m()Ljava/lang/String;

    move-result-object v7

    const-class v8, Lcom/alibaba/android/ding/db/entry/EntryDingCommentRemind;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9, v4}, Lcom/alibaba/bee/DBManager;->queryRaw(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 279
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 280
    const/4 v6, 0x0

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 285
    :cond_0
    if-eqz v2, :cond_1

    .line 286
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 289
    :cond_1
    :goto_0
    return v1

    .line 282
    :catch_0
    move-exception v3

    .line 283
    .local v3, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string/jumbo v6, "[DataSourceCommentRemind]queryCount failed"

    invoke-static {v6, v3}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 285
    if-eqz v2, :cond_1

    .line 286
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 285
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v6

    if-eqz v2, :cond_2

    .line 286
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v6
.end method

.method public final o_()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lbeq;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 296
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 298
    .local v1, "commentRemindObjects":Ljava/util/List;, "Ljava/util/List<Lbeq;>;"
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 299
    .local v0, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v8, "SELECT tb_ding_comment_remind.dingId,commentId,tb_ding_comment_remind.senderId,commentType,textContent,commentCreateAt,commentAtUids,commentIsDeleted,commentIsAttachment FROM  tb_ding_comment_remind inner join tbdinglist ON tb_ding_comment_remind.dingId=tbdinglist.dingId"

    invoke-virtual {v0, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 300
    const-string/jumbo v8, " WHERE "

    invoke-virtual {v0, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 302
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "dingOperationStatus"

    aput-object v9, v8, v10

    const-string/jumbo v9, "=? "

    aput-object v9, v8, v11

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 303
    .local v7, "whereStatement":Ljava/lang/String;
    invoke-virtual {v0, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 305
    const-string/jumbo v8, " ORDER BY "

    invoke-virtual {v0, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 306
    sget-object v8, Lbgr;->a:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 308
    new-array v6, v11, [Ljava/lang/String;

    sget-object v8, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->NORMAL:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    invoke-virtual {v8}, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->getValue()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v10

    .line 310
    .local v6, "whereArgs":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 313
    .local v2, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v8, p0, Lbgr;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Lbgr;->m()Ljava/lang/String;

    move-result-object v9

    const-class v10, Lcom/alibaba/android/ding/db/entry/EntryDingCommentRemind;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11, v6}, Lcom/alibaba/bee/DBManager;->queryRaw(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 314
    if-eqz v2, :cond_1

    .line 315
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 316
    new-instance v5, Lcom/alibaba/android/ding/db/entry/EntryDingCommentRemind;

    invoke-direct {v5}, Lcom/alibaba/android/ding/db/entry/EntryDingCommentRemind;-><init>()V

    .line 317
    .local v5, "entry":Lcom/alibaba/android/ding/db/entry/EntryDingCommentRemind;
    invoke-virtual {v5, v2}, Lcom/alibaba/android/ding/db/entry/EntryDingCommentRemind;->fillWithCursor(Landroid/database/Cursor;)V

    .line 318
    new-instance v3, Lbeq;

    invoke-direct {v3, v5}, Lbeq;-><init>(Lcom/alibaba/android/ding/db/entry/EntryDingCommentRemind;)V

    .line 319
    .local v3, "dingCommentRemindObject":Lbeq;
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 322
    .end local v3    # "dingCommentRemindObject":Lbeq;
    .end local v5    # "entry":Lcom/alibaba/android/ding/db/entry/EntryDingCommentRemind;
    :catch_0
    move-exception v4

    .line 323
    .local v4, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string/jumbo v8, "[DataSourceCommentRemind]queryAll failed"

    invoke-static {v8, v4}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 325
    if-eqz v2, :cond_0

    .line 326
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 330
    .end local v4    # "e":Ljava/lang/RuntimeException;
    :cond_0
    :goto_1
    return-object v1

    .line 325
    :cond_1
    if-eqz v2, :cond_0

    .line 326
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 325
    :catchall_0
    move-exception v8

    if-eqz v2, :cond_2

    .line 326
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v8
.end method
