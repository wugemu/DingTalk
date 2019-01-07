.class final Lfnj$1;
.super Ljava/lang/Object;
.source "QuotaDataSourceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfnj;->a(Ljava/util/List;J)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:J

.field final synthetic c:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic d:Lfnj;


# direct methods
.method constructor <init>(Lfnj;Ljava/util/List;JLjava/util/concurrent/atomic/AtomicInteger;)V
    .locals 1
    .param p1, "this$0"    # Lfnj;

    .prologue
    .line 33
    iput-object p1, p0, Lfnj$1;->d:Lfnj;

    iput-object p2, p0, Lfnj$1;->a:Ljava/util/List;

    iput-wide p3, p0, Lfnj$1;->b:J

    iput-object p5, p0, Lfnj$1;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 36
    const/4 v4, 0x0

    .line 38
    .local v4, "statement":Lcom/alibaba/bee/SQLiteStatement;
    :try_start_0
    iget-object v5, p0, Lfnj$1;->d:Lfnj;

    invoke-static {v5}, Lfnj;->b(Lfnj;)Lcom/alibaba/bee/DBManager;

    move-result-object v5

    iget-object v6, p0, Lfnj$1;->d:Lfnj;

    invoke-static {v6}, Lfnj;->a(Lfnj;)Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/alibaba/android/user/entry/QuotaEntry;

    const-class v8, Lcom/alibaba/android/user/entry/QuotaEntry;

    const-string/jumbo v9, "tb_quota_entry"

    invoke-static {v8, v9}, Lcom/alibaba/bee/DatabaseUtils;->getReplaceStatement(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/alibaba/bee/DBManager;->compileStatement(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/bee/SQLiteStatement;

    move-result-object v4

    .line 39
    iget-object v5, p0, Lfnj$1;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcfs;

    .line 40
    .local v2, "model":Lcfs;
    new-instance v3, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;

    iget-wide v6, p0, Lfnj$1;->b:J

    invoke-direct {v3, v2, v6, v7}, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;-><init>(Lcfs;J)V

    .line 41
    .local v3, "object":Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;
    invoke-static {v3}, Lcom/alibaba/android/user/entry/QuotaEntry;->toDBEntry(Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;)Lcom/alibaba/android/user/entry/QuotaEntry;

    move-result-object v1

    .line 42
    .local v1, "entry":Lcom/alibaba/android/user/entry/QuotaEntry;
    invoke-virtual {v1, v4}, Lcom/alibaba/android/user/entry/QuotaEntry;->bindArgs(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 43
    invoke-interface {v4}, Lcom/alibaba/bee/SQLiteStatement;->execute()V

    .line 44
    invoke-interface {v4}, Lcom/alibaba/bee/SQLiteStatement;->clearBindings()V

    .line 45
    iget-object v6, p0, Lfnj$1;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 47
    .end local v1    # "entry":Lcom/alibaba/android/user/entry/QuotaEntry;
    .end local v2    # "model":Lcfs;
    .end local v3    # "object":Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    invoke-static {v4}, Lfnj;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 51
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 50
    :cond_0
    invoke-static {v4}, Lfnj;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    goto :goto_1

    :catchall_0
    move-exception v5

    invoke-static {v4}, Lfnj;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    throw v5
.end method
