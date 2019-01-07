.class final Laui$1;
.super Ljava/lang/Object;
.source "DataSourceVerificationImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laui;->b(Ljava/util/List;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic c:Laui;


# direct methods
.method constructor <init>(Laui;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0
    .param p1, "this$0"    # Laui;

    .prologue
    .line 37
    iput-object p1, p0, Laui$1;->c:Laui;

    iput-object p2, p0, Laui$1;->a:Ljava/util/List;

    iput-object p3, p0, Laui$1;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 40
    const/4 v2, 0x0

    .line 42
    .local v2, "statement":Lcom/alibaba/bee/SQLiteStatement;
    :try_start_0
    iget-object v3, p0, Laui$1;->c:Laui;

    invoke-static {v3}, Laui;->a(Laui;)Lcom/alibaba/bee/DBManager;

    move-result-object v3

    invoke-static {}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;->m()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/alibaba/android/calendar/db/entry/EntryVerification;

    const-class v6, Lcom/alibaba/android/calendar/db/entry/EntryVerification;

    const-string/jumbo v7, "tb_calendar_verification"

    .line 44
    invoke-static {v6, v7}, Lcom/alibaba/bee/DatabaseUtils;->getReplaceStatement(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 42
    invoke-virtual {v3, v4, v5, v6}, Lcom/alibaba/bee/DBManager;->compileStatement(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/bee/SQLiteStatement;

    move-result-object v2

    .line 45
    iget-object v3, p0, Laui$1;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/calendar/db/entry/EntryVerification;

    .line 46
    .local v1, "entryVerification":Lcom/alibaba/android/calendar/db/entry/EntryVerification;
    if-eqz v1, :cond_0

    .line 49
    invoke-virtual {v1, v2}, Lcom/alibaba/android/calendar/db/entry/EntryVerification;->bindArgs(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 50
    invoke-interface {v2}, Lcom/alibaba/bee/SQLiteStatement;->execute()V

    .line 51
    invoke-interface {v2}, Lcom/alibaba/bee/SQLiteStatement;->clearBindings()V

    .line 52
    iget-object v4, p0, Laui$1;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 54
    .end local v1    # "entryVerification":Lcom/alibaba/android/calendar/db/entry/EntryVerification;
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string/jumbo v3, "saveVerificationResult failed"

    invoke-static {v3, v0}, Lawm;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    invoke-static {v2}, Laui;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 58
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_1
    return-void

    .line 57
    :cond_1
    invoke-static {v2}, Laui;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    goto :goto_1

    :catchall_0
    move-exception v3

    invoke-static {v2}, Laui;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    throw v3
.end method
