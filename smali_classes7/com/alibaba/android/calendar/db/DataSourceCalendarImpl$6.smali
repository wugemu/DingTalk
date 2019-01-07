.class final Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$6;
.super Ljava/lang/Object;
.source "DataSourceCalendarImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->a(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic c:Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;

    .prologue
    .line 907
    iput-object p1, p0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$6;->c:Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;

    iput-object p2, p0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$6;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$6;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 911
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$6;->c:Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->i(Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;)Lcom/alibaba/bee/DBManager;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;->m()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/calendar/db/entry/EntryEvent;

    const-string/jumbo v3, "tb_event_v3"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v7, "c_folder_id"

    aput-object v7, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v7, "=?"

    aput-object v7, v4, v5

    .line 914
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$6;->a:Ljava/lang/String;

    .line 915
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    .line 911
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/bee/DBManager;->delete(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 916
    iget-object v0, p0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$6;->c:Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->j(Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;)Lcom/alibaba/bee/DBManager;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;->m()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/calendar/db/entry/EntryInstance;

    const-string/jumbo v3, "tb_instance_v2"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v7, "folder_id"

    aput-object v7, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v7, "=?"

    aput-object v7, v4, v5

    .line 919
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$6;->a:Ljava/lang/String;

    .line 920
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    .line 916
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/bee/DBManager;->delete(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 921
    iget-object v0, p0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$6;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 925
    :goto_0
    return-void

    .line 922
    :catch_0
    move-exception v6

    .line 923
    .local v6, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v0, "deleteCalendarById failed"

    invoke-static {v0, v6}, Lawm;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
