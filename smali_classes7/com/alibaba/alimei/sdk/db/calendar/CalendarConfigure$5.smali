.class final Lcom/alibaba/alimei/sdk/db/calendar/CalendarConfigure$5;
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
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMigrationUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    const-string/jumbo v0, "drop view_event and recreate it"

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
    .line 155
    :try_start_0
    const-string/jumbo v0, "drop view if exists view_events"

    .line 156
    .local v0, "sql":Ljava/lang/String;
    invoke-interface {p1, v0}, Lcom/alibaba/alimei/orm/IDatabase;->execSQL(Ljava/lang/String;)V

    .line 158
    const-class v3, Lcom/alibaba/alimei/sdk/db/calendar/entry/Views;

    invoke-static {v3}, Lcom/alibaba/alimei/orm/internal/ModelConvertor;->toSQLiteView(Ljava/lang/Class;)Lcom/alibaba/alimei/sqlite/SQLiteView;

    move-result-object v2

    .line 159
    .local v2, "view":Lcom/alibaba/alimei/sqlite/SQLiteView;
    invoke-static {v2}, Lcom/alibaba/alimei/orm/util/DDLSQLGenerator;->createViewStatement(Lcom/alibaba/alimei/sqlite/SQLiteView;)Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-interface {p1, v0}, Lcom/alibaba/alimei/orm/IDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .end local v0    # "sql":Ljava/lang/String;
    .end local v2    # "view":Lcom/alibaba/alimei/sqlite/SQLiteView;
    :goto_0
    return-void

    .line 161
    :catch_0
    move-exception v1

    .line 162
    .local v1, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alibaba/alimei/sdk/db/calendar/CalendarConfigure;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "drop and recreate view view_events fail"

    invoke-static {v3, v4, v1}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
