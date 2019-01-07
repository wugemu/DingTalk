.class final Lcom/alibaba/alimei/sdk/db/calendar/CalendarConfigure$6;
.super Ljava/lang/Object;
.source "CalendarConfigure.java"

# interfaces
.implements Lcom/alibaba/alimei/orm/migration/Migration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/sdk/db/calendar/CalendarConfigure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMigrationUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    const-string/jumbo v0, "drop view_event and recreate it 2"

    return-object v0
.end method

.method public final up(Lcom/alibaba/alimei/orm/IDatabase;II)V
    .locals 5
    .param p1, "db"    # Lcom/alibaba/alimei/orm/IDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 177
    :try_start_0
    const-string/jumbo v0, "drop view if exists view_events"

    .line 178
    .local v0, "sql":Ljava/lang/String;
    invoke-interface {p1, v0}, Lcom/alibaba/alimei/orm/IDatabase;->execSQL(Ljava/lang/String;)V

    .line 180
    const-class v3, Lcom/alibaba/alimei/sdk/db/calendar/entry/Views;

    invoke-static {v3}, Lcom/alibaba/alimei/orm/internal/ModelConvertor;->toSQLiteView(Ljava/lang/Class;)Lcom/alibaba/alimei/sqlite/SQLiteView;

    move-result-object v2

    .line 181
    .local v2, "view":Lcom/alibaba/alimei/sqlite/SQLiteView;
    invoke-static {v2}, Lcom/alibaba/alimei/orm/util/DDLSQLGenerator;->createViewStatement(Lcom/alibaba/alimei/sqlite/SQLiteView;)Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-interface {p1, v0}, Lcom/alibaba/alimei/orm/IDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    .end local v0    # "sql":Ljava/lang/String;
    .end local v2    # "view":Lcom/alibaba/alimei/sqlite/SQLiteView;
    :goto_0
    :try_start_1
    const-string/jumbo v0, "delete from Calendars"

    .line 189
    .restart local v0    # "sql":Ljava/lang/String;
    invoke-interface {p1, v0}, Lcom/alibaba/alimei/orm/IDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 193
    .end local v0    # "sql":Ljava/lang/String;
    :goto_1
    return-void

    .line 183
    :catch_0
    move-exception v1

    .line 184
    .local v1, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alibaba/alimei/sdk/db/calendar/CalendarConfigure;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "drop and recreate view view_events fail 2"

    invoke-static {v3, v4, v1}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 190
    .end local v1    # "tr":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 191
    .restart local v1    # "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alibaba/alimei/sdk/db/calendar/CalendarConfigure;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "delete calendar data fail"

    invoke-static {v3, v4, v1}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
