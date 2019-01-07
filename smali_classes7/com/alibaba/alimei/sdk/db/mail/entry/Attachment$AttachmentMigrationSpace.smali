.class public Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment$AttachmentMigrationSpace;
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
    name = "AttachmentMigrationSpace"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMigrationUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    const-string/jumbo v0, "att20140521103101"

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
    .line 118
    :try_start_0
    new-instance v0, Lcom/alibaba/alimei/sqlite/SQLiteColumn;

    const-string/jumbo v2, "originSpaceId"

    sget-object v3, Lcom/alibaba/alimei/sqlite/SQLiteDataType;->Text:Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    invoke-direct {v0, v2, v3}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;-><init>(Ljava/lang/String;Lcom/alibaba/alimei/sqlite/SQLiteDataType;)V

    .line 119
    .local v0, "columns1":Lcom/alibaba/alimei/sqlite/SQLiteColumn;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->setAutoIncrement(Z)V

    .line 120
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->setNullable(Z)V

    .line 121
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->setPrimaryKey(Z)V

    .line 122
    const-string/jumbo v2, "Attachment"

    invoke-static {p1, v0, v2}, Lcom/alibaba/alimei/orm/migration/MigrationExecutor;->addColumn(Lcom/alibaba/alimei/orm/IDatabase;Lcom/alibaba/alimei/sqlite/SQLiteColumn;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .end local v0    # "columns1":Lcom/alibaba/alimei/sqlite/SQLiteColumn;
    :goto_0
    :try_start_1
    new-instance v1, Lcom/alibaba/alimei/sqlite/SQLiteColumn;

    const-string/jumbo v2, "originId"

    sget-object v3, Lcom/alibaba/alimei/sqlite/SQLiteDataType;->Text:Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    invoke-direct {v1, v2, v3}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;-><init>(Ljava/lang/String;Lcom/alibaba/alimei/sqlite/SQLiteDataType;)V

    .line 128
    .local v1, "columns2":Lcom/alibaba/alimei/sqlite/SQLiteColumn;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->setAutoIncrement(Z)V

    .line 129
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->setNullable(Z)V

    .line 130
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->setPrimaryKey(Z)V

    .line 131
    const-string/jumbo v2, "Attachment"

    invoke-static {p1, v1, v2}, Lcom/alibaba/alimei/orm/migration/MigrationExecutor;->addColumn(Lcom/alibaba/alimei/orm/IDatabase;Lcom/alibaba/alimei/sqlite/SQLiteColumn;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 136
    .end local v1    # "columns2":Lcom/alibaba/alimei/sqlite/SQLiteColumn;
    :goto_1
    :try_start_2
    new-instance v1, Lcom/alibaba/alimei/sqlite/SQLiteColumn;

    const-string/jumbo v2, "originToken"

    sget-object v3, Lcom/alibaba/alimei/sqlite/SQLiteDataType;->Text:Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    invoke-direct {v1, v2, v3}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;-><init>(Ljava/lang/String;Lcom/alibaba/alimei/sqlite/SQLiteDataType;)V

    .line 137
    .restart local v1    # "columns2":Lcom/alibaba/alimei/sqlite/SQLiteColumn;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->setAutoIncrement(Z)V

    .line 138
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->setNullable(Z)V

    .line 139
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->setPrimaryKey(Z)V

    .line 140
    const-string/jumbo v2, "Attachment"

    invoke-static {p1, v1, v2}, Lcom/alibaba/alimei/orm/migration/MigrationExecutor;->addColumn(Lcom/alibaba/alimei/orm/IDatabase;Lcom/alibaba/alimei/sqlite/SQLiteColumn;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 145
    .end local v1    # "columns2":Lcom/alibaba/alimei/sqlite/SQLiteColumn;
    :goto_2
    :try_start_3
    new-instance v1, Lcom/alibaba/alimei/sqlite/SQLiteColumn;

    const-string/jumbo v2, "oid"

    sget-object v3, Lcom/alibaba/alimei/sqlite/SQLiteDataType;->Text:Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    invoke-direct {v1, v2, v3}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;-><init>(Ljava/lang/String;Lcom/alibaba/alimei/sqlite/SQLiteDataType;)V

    .line 146
    .restart local v1    # "columns2":Lcom/alibaba/alimei/sqlite/SQLiteColumn;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->setAutoIncrement(Z)V

    .line 147
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->setNullable(Z)V

    .line 148
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->setPrimaryKey(Z)V

    .line 149
    const-string/jumbo v2, "Attachment"

    invoke-static {p1, v1, v2}, Lcom/alibaba/alimei/orm/migration/MigrationExecutor;->addColumn(Lcom/alibaba/alimei/orm/IDatabase;Lcom/alibaba/alimei/sqlite/SQLiteColumn;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 154
    .end local v1    # "columns2":Lcom/alibaba/alimei/sqlite/SQLiteColumn;
    :goto_3
    :try_start_4
    new-instance v1, Lcom/alibaba/alimei/sqlite/SQLiteColumn;

    const-string/jumbo v2, "originAccount"

    sget-object v3, Lcom/alibaba/alimei/sqlite/SQLiteDataType;->Text:Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    invoke-direct {v1, v2, v3}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;-><init>(Ljava/lang/String;Lcom/alibaba/alimei/sqlite/SQLiteDataType;)V

    .line 155
    .restart local v1    # "columns2":Lcom/alibaba/alimei/sqlite/SQLiteColumn;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->setAutoIncrement(Z)V

    .line 156
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->setNullable(Z)V

    .line 157
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->setPrimaryKey(Z)V

    .line 158
    const-string/jumbo v2, "Attachment"

    invoke-static {p1, v1, v2}, Lcom/alibaba/alimei/orm/migration/MigrationExecutor;->addColumn(Lcom/alibaba/alimei/orm/IDatabase;Lcom/alibaba/alimei/sqlite/SQLiteColumn;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    .line 162
    .end local v1    # "columns2":Lcom/alibaba/alimei/sqlite/SQLiteColumn;
    :goto_4
    return-void

    .line 124
    :catch_0
    move-exception v2

    const-string/jumbo v2, "add originspaceId error"

    invoke-static {v2}, Lzb;->i(Ljava/lang/String;)I

    goto :goto_0

    .line 133
    :catch_1
    move-exception v2

    const-string/jumbo v2, "add originId error"

    invoke-static {v2}, Lzb;->i(Ljava/lang/String;)I

    goto :goto_1

    .line 142
    :catch_2
    move-exception v2

    const-string/jumbo v2, "add originId error"

    invoke-static {v2}, Lzb;->i(Ljava/lang/String;)I

    goto :goto_2

    .line 151
    :catch_3
    move-exception v2

    const-string/jumbo v2, "add oid error"

    invoke-static {v2}, Lzb;->i(Ljava/lang/String;)I

    goto :goto_3

    .line 160
    :catch_4
    move-exception v2

    const-string/jumbo v2, "add originAccount error"

    invoke-static {v2}, Lzb;->i(Ljava/lang/String;)I

    goto :goto_4
.end method
