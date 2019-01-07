.class public final Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox$LastVisitTimeMigration;
.super Ljava/lang/Object;
.source "Mailbox.java"

# interfaces
.implements Lcom/alibaba/alimei/orm/migration/Migration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LastVisitTimeMigration"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMigrationUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    const-string/jumbo v0, "add mailbox column lastVisitTime"

    return-object v0
.end method

.method public final up(Lcom/alibaba/alimei/orm/IDatabase;II)V
    .locals 6
    .param p1, "db"    # Lcom/alibaba/alimei/orm/IDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 195
    :try_start_0
    new-instance v3, Lcom/alibaba/alimei/sqlite/SQLiteColumn;

    const-string/jumbo v4, "lastVisitTime"

    sget-object v5, Lcom/alibaba/alimei/sqlite/SQLiteDataType;->Long:Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    invoke-direct {v3, v4, v5}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;-><init>(Ljava/lang/String;Lcom/alibaba/alimei/sqlite/SQLiteDataType;)V

    const-string/jumbo v4, "Mailbox"

    invoke-static {p1, v3, v4}, Lcom/alibaba/alimei/orm/migration/MigrationExecutor;->addColumn(Lcom/alibaba/alimei/orm/IDatabase;Lcom/alibaba/alimei/sqlite/SQLiteColumn;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_0
    :try_start_1
    new-instance v2, Lcom/alibaba/alimei/orm/query/Update;

    const-class v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    const-string/jumbo v4, "EmailProvider.db"

    const-string/jumbo v5, "Mailbox"

    invoke-direct {v2, v3, v4, v5}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .local v2, "update":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v3, "lastVisitTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 205
    invoke-virtual {v2}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    move-result v0

    .line 206
    .local v0, "count":I
    const-string/jumbo v3, "Mailbox"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "update last visit time count: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 210
    .end local v0    # "count":I
    .end local v2    # "update":Lcom/alibaba/alimei/orm/query/Update;
    :goto_1
    return-void

    .line 199
    :catch_0
    move-exception v3

    const-string/jumbo v3, "add mailbox column last visit time error"

    invoke-static {v3}, Lzb;->i(Ljava/lang/String;)I

    goto :goto_0

    .line 207
    :catch_1
    move-exception v1

    .line 208
    .local v1, "tr":Ljava/lang/Throwable;
    const-string/jumbo v3, "Mailbox"

    const-string/jumbo v4, "update last visit time error"

    invoke-static {v3, v4, v1}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
