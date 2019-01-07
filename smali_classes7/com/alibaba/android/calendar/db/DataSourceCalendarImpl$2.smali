.class final Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$2;
.super Ljava/lang/Object;
.source "DataSourceCalendarImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->b(Ljava/util/List;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/Set;

.field final synthetic c:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic d:Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;Ljava/util/List;Ljava/util/Set;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$2;->d:Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;

    iput-object p2, p0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$2;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$2;->b:Ljava/util/Set;

    iput-object p4, p0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$2;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$2;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lauj;

    .line 159
    .local v11, "calendarDBQueryParam":Lauj;
    if-eqz v11, :cond_0

    .line 163
    iget-object v0, p0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$2;->b:Ljava/util/Set;

    .line 1023
    iget-object v1, v11, Lauj;->b:Ljava/lang/String;

    .line 163
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 165
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 166
    .local v4, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v0, "c_is_deleted"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 167
    iget-object v0, p0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$2;->d:Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->d(Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;)Lcom/alibaba/bee/DBManager;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;->m()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/calendar/db/entry/EntryEvent;

    const-string/jumbo v3, "tb_event_v3"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "calendar_id"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "=? AND "

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "c_folder_id"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string/jumbo v7, "=?"

    aput-object v7, v5, v6

    .line 171
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 2019
    iget-wide v8, v11, Lauj;->a:J

    .line 172
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    .line 2023
    iget-object v8, v11, Lauj;->b:Ljava/lang/String;

    .line 172
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 167
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/bee/DBManager;->update(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$2;->d:Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->e(Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;)Lcom/alibaba/bee/DBManager;

    move-result-object v5

    invoke-static {}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;->m()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/alibaba/android/calendar/db/entry/EntryInstance;

    const-string/jumbo v8, "tb_instance_v2"

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "calendar_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "=? AND "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "folder_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "=?"

    aput-object v2, v0, v1

    .line 176
    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v0, 0x2

    new-array v10, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 3019
    iget-wide v2, v11, Lauj;->a:J

    .line 177
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v0

    const/4 v0, 0x1

    .line 3023
    iget-object v1, v11, Lauj;->b:Ljava/lang/String;

    .line 177
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v0

    .line 173
    invoke-virtual/range {v5 .. v10}, Lcom/alibaba/bee/DBManager;->delete(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 179
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[DataSourceCalendarImpl] deleteCalendarByCalendarIdAndFolderId calendarId="

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 4019
    iget-wide v2, v11, Lauj;->a:J

    .line 180
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", folderId="

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 4023
    iget-object v2, v11, Lauj;->b:Ljava/lang/String;

    .line 182
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 179
    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$2;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 185
    .end local v4    # "contentValues":Landroid/content/ContentValues;
    .end local v11    # "calendarDBQueryParam":Lauj;
    :catch_0
    move-exception v12

    .line 186
    .local v12, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v0, "deleteCalendarById failed"

    invoke-static {v0, v12}, Lawm;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 188
    .end local v12    # "e":Ljava/lang/RuntimeException;
    :cond_1
    return-void
.end method
