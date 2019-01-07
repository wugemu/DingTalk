.class final Laug$1;
.super Ljava/lang/Object;
.source "DataSourceHolidayArrangementImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laug;->a(Lasn;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/calendar/db/entry/EntryHolidayArrangements;

.field final synthetic b:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic c:Laug;


# direct methods
.method constructor <init>(Laug;Lcom/alibaba/android/calendar/db/entry/EntryHolidayArrangements;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0
    .param p1, "this$0"    # Laug;

    .prologue
    .line 34
    iput-object p1, p0, Laug$1;->c:Laug;

    iput-object p2, p0, Laug$1;->a:Lcom/alibaba/android/calendar/db/entry/EntryHolidayArrangements;

    iput-object p3, p0, Laug$1;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 37
    const/4 v1, 0x0

    .line 39
    .local v1, "statement":Lcom/alibaba/bee/SQLiteStatement;
    :try_start_0
    iget-object v2, p0, Laug$1;->c:Laug;

    invoke-static {v2}, Laug;->a(Laug;)Lcom/alibaba/bee/DBManager;

    move-result-object v2

    invoke-static {}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;->m()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/alibaba/android/calendar/db/entry/EntryHolidayArrangements;

    const-class v5, Lcom/alibaba/android/calendar/db/entry/EntryHolidayArrangements;

    const-string/jumbo v6, "tb_ding_holiday_arrangement"

    .line 41
    invoke-static {v5, v6}, Lcom/alibaba/bee/DatabaseUtils;->getReplaceStatement(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 39
    invoke-virtual {v2, v3, v4, v5}, Lcom/alibaba/bee/DBManager;->compileStatement(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/bee/SQLiteStatement;

    move-result-object v1

    .line 42
    iget-object v2, p0, Laug$1;->a:Lcom/alibaba/android/calendar/db/entry/EntryHolidayArrangements;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/calendar/db/entry/EntryHolidayArrangements;->bindArgs(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 43
    invoke-interface {v1}, Lcom/alibaba/bee/SQLiteStatement;->execute()V

    .line 44
    invoke-interface {v1}, Lcom/alibaba/bee/SQLiteStatement;->clearBindings()V

    .line 45
    iget-object v2, p0, Laug$1;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    invoke-static {v1}, Laug;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 50
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string/jumbo v2, "merge holidays failed"

    invoke-static {v2, v0}, Lawm;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    invoke-static {v1}, Laug;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    invoke-static {v1}, Laug;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    throw v2
.end method
