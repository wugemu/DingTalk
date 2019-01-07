.class public Lcom/alibaba/alimei/sdk/db/mail/entry/Message$MessageAddCalenarPartMigration;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Lcom/alibaba/alimei/orm/migration/Migration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageAddCalenarPartMigration"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 576
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMigrationUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 608
    const-string/jumbo v0, "add_calendar_part_20180112"

    return-object v0
.end method

.method public up(Lcom/alibaba/alimei/orm/IDatabase;II)V
    .locals 5
    .param p1, "db"    # Lcom/alibaba/alimei/orm/IDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 581
    :try_start_0
    const-string/jumbo v3, "add imap calendar part start"

    invoke-static {v3}, Lzb;->i(Ljava/lang/String;)I

    .line 582
    new-instance v0, Lcom/alibaba/alimei/sqlite/SQLiteColumn;

    const-string/jumbo v3, "calendar_part_id"

    sget-object v4, Lcom/alibaba/alimei/sqlite/SQLiteDataType;->Text:Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    invoke-direct {v0, v3, v4}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;-><init>(Ljava/lang/String;Lcom/alibaba/alimei/sqlite/SQLiteDataType;)V

    .line 583
    .local v0, "column1":Lcom/alibaba/alimei/sqlite/SQLiteColumn;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->setAutoIncrement(Z)V

    .line 584
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->setNullable(Z)V

    .line 585
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->setPrimaryKey(Z)V

    .line 586
    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->setDefaultValue(Ljava/lang/Object;)V

    .line 587
    new-instance v1, Lcom/alibaba/alimei/sqlite/SQLiteColumn;

    const-string/jumbo v3, "calendar_encoding"

    sget-object v4, Lcom/alibaba/alimei/sqlite/SQLiteDataType;->Text:Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    invoke-direct {v1, v3, v4}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;-><init>(Ljava/lang/String;Lcom/alibaba/alimei/sqlite/SQLiteDataType;)V

    .line 588
    .local v1, "column2":Lcom/alibaba/alimei/sqlite/SQLiteColumn;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->setAutoIncrement(Z)V

    .line 589
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->setNullable(Z)V

    .line 590
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->setPrimaryKey(Z)V

    .line 591
    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->setDefaultValue(Ljava/lang/Object;)V

    .line 592
    new-instance v2, Lcom/alibaba/alimei/sqlite/SQLiteColumn;

    const-string/jumbo v3, "calendar_content_type"

    sget-object v4, Lcom/alibaba/alimei/sqlite/SQLiteDataType;->Text:Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    invoke-direct {v2, v3, v4}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;-><init>(Ljava/lang/String;Lcom/alibaba/alimei/sqlite/SQLiteDataType;)V

    .line 593
    .local v2, "column3":Lcom/alibaba/alimei/sqlite/SQLiteColumn;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->setAutoIncrement(Z)V

    .line 594
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->setNullable(Z)V

    .line 595
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->setPrimaryKey(Z)V

    .line 596
    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->setDefaultValue(Ljava/lang/Object;)V

    .line 597
    const-string/jumbo v3, "Message"

    invoke-static {p1, v0, v3}, Lcom/alibaba/alimei/orm/migration/MigrationExecutor;->addColumn(Lcom/alibaba/alimei/orm/IDatabase;Lcom/alibaba/alimei/sqlite/SQLiteColumn;Ljava/lang/String;)V

    .line 598
    const-string/jumbo v3, "Message"

    invoke-static {p1, v1, v3}, Lcom/alibaba/alimei/orm/migration/MigrationExecutor;->addColumn(Lcom/alibaba/alimei/orm/IDatabase;Lcom/alibaba/alimei/sqlite/SQLiteColumn;Ljava/lang/String;)V

    .line 599
    const-string/jumbo v3, "Message"

    invoke-static {p1, v2, v3}, Lcom/alibaba/alimei/orm/migration/MigrationExecutor;->addColumn(Lcom/alibaba/alimei/orm/IDatabase;Lcom/alibaba/alimei/sqlite/SQLiteColumn;Ljava/lang/String;)V

    .line 600
    const-string/jumbo v3, "add imap calendar part end"

    invoke-static {v3}, Lzb;->i(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 604
    .end local v0    # "column1":Lcom/alibaba/alimei/sqlite/SQLiteColumn;
    .end local v1    # "column2":Lcom/alibaba/alimei/sqlite/SQLiteColumn;
    .end local v2    # "column3":Lcom/alibaba/alimei/sqlite/SQLiteColumn;
    :goto_0
    return-void

    .line 602
    :catch_0
    move-exception v3

    const-string/jumbo v3, "add imap calendar part column error"

    invoke-static {v3}, Lzb;->i(Ljava/lang/String;)I

    goto :goto_0
.end method
