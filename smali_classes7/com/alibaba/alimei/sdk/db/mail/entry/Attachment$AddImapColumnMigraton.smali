.class public Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment$AddImapColumnMigraton;
.super Ljava/lang/Object;
.source "Attachment.java"

# interfaces
.implements Lcom/alibaba/alimei/orm/migration/Migration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddImapColumnMigraton"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMigrationUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    const-string/jumbo v0, "add_imap_column"

    return-object v0
.end method

.method public up(Lcom/alibaba/alimei/orm/IDatabase;II)V
    .locals 4
    .param p1, "db"    # Lcom/alibaba/alimei/orm/IDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 175
    :try_start_0
    new-instance v0, Lcom/alibaba/alimei/sqlite/SQLiteColumn;

    const-string/jumbo v2, "contentType"

    sget-object v3, Lcom/alibaba/alimei/sqlite/SQLiteDataType;->Text:Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    invoke-direct {v0, v2, v3}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;-><init>(Ljava/lang/String;Lcom/alibaba/alimei/sqlite/SQLiteDataType;)V

    .line 176
    .local v0, "columns1":Lcom/alibaba/alimei/sqlite/SQLiteColumn;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->setAutoIncrement(Z)V

    .line 177
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->setNullable(Z)V

    .line 178
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->setPrimaryKey(Z)V

    .line 179
    const-string/jumbo v2, "Attachment"

    invoke-static {p1, v0, v2}, Lcom/alibaba/alimei/orm/migration/MigrationExecutor;->addColumn(Lcom/alibaba/alimei/orm/IDatabase;Lcom/alibaba/alimei/sqlite/SQLiteColumn;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .end local v0    # "columns1":Lcom/alibaba/alimei/sqlite/SQLiteColumn;
    :goto_0
    :try_start_1
    new-instance v1, Lcom/alibaba/alimei/sqlite/SQLiteColumn;

    const-string/jumbo v2, "partId"

    sget-object v3, Lcom/alibaba/alimei/sqlite/SQLiteDataType;->Text:Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    invoke-direct {v1, v2, v3}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;-><init>(Ljava/lang/String;Lcom/alibaba/alimei/sqlite/SQLiteDataType;)V

    .line 185
    .local v1, "columns2":Lcom/alibaba/alimei/sqlite/SQLiteColumn;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->setAutoIncrement(Z)V

    .line 186
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->setNullable(Z)V

    .line 187
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->setPrimaryKey(Z)V

    .line 188
    const-string/jumbo v2, "Attachment"

    invoke-static {p1, v1, v2}, Lcom/alibaba/alimei/orm/migration/MigrationExecutor;->addColumn(Lcom/alibaba/alimei/orm/IDatabase;Lcom/alibaba/alimei/sqlite/SQLiteColumn;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 192
    .end local v1    # "columns2":Lcom/alibaba/alimei/sqlite/SQLiteColumn;
    :goto_1
    return-void

    .line 181
    :catch_0
    move-exception v2

    const-string/jumbo v2, "add originspaceId error"

    invoke-static {v2}, Lzb;->i(Ljava/lang/String;)I

    goto :goto_0

    .line 190
    :catch_1
    move-exception v2

    const-string/jumbo v2, "add originId error"

    invoke-static {v2}, Lzb;->i(Ljava/lang/String;)I

    goto :goto_1
.end method
