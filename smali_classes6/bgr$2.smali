.class final Lbgr$2;
.super Ljava/lang/Object;
.source "DataSourceDingCommentRemindImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbgr;->a(JJ)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic d:Lbgr;


# direct methods
.method constructor <init>(Lbgr;JJLjava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0
    .param p1, "this$0"    # Lbgr;

    .prologue
    .line 91
    iput-object p1, p0, Lbgr$2;->d:Lbgr;

    iput-wide p2, p0, Lbgr$2;->a:J

    iput-wide p4, p0, Lbgr$2;->b:J

    iput-object p6, p0, Lbgr$2;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 95
    :try_start_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 96
    .local v4, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "commentIsDeleted"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 98
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "tb_ding_comment_remind"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "."

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "dingId"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "=? AND "

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "commentId"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "=?"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 106
    .local v5, "where":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-wide v2, p0, Lbgr$2;->a:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    const/4 v0, 0x1

    iget-wide v2, p0, Lbgr$2;->b:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    .line 108
    .local v6, "args":[Ljava/lang/String;
    iget-object v0, p0, Lbgr$2;->d:Lbgr;

    invoke-static {v0}, Lbgr;->b(Lbgr;)Lcom/alibaba/bee/DBManager;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;->m()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/ding/db/entry/EntryDingCommentRemind;

    const-string/jumbo v3, "tb_ding_comment_remind"

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/bee/DBManager;->update(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lbgr$2;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .end local v4    # "values":Landroid/content/ContentValues;
    .end local v5    # "where":Ljava/lang/String;
    .end local v6    # "args":[Ljava/lang/String;
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v7

    .line 112
    .local v7, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v0, "[DataSourceCommentRemind]mark deleted failed"

    invoke-static {v0, v7}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
