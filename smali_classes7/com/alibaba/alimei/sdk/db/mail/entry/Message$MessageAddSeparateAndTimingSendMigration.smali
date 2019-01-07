.class public Lcom/alibaba/alimei/sdk/db/mail/entry/Message$MessageAddSeparateAndTimingSendMigration;
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
    name = "MessageAddSeparateAndTimingSendMigration"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMigrationUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 638
    const-string/jumbo v0, "add_separate_timing_send_20180322"

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
    .line 617
    :try_start_0
    const-string/jumbo v2, "add separate send, timing send start"

    invoke-static {v2}, Lzb;->i(Ljava/lang/String;)I

    .line 618
    new-instance v0, Lcom/alibaba/alimei/sqlite/SQLiteColumn;

    const-string/jumbo v2, "separated_send"

    sget-object v3, Lcom/alibaba/alimei/sqlite/SQLiteDataType;->Boolean:Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    invoke-direct {v0, v2, v3}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;-><init>(Ljava/lang/String;Lcom/alibaba/alimei/sqlite/SQLiteDataType;)V

    .line 619
    .local v0, "column1":Lcom/alibaba/alimei/sqlite/SQLiteColumn;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->setAutoIncrement(Z)V

    .line 620
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->setNullable(Z)V

    .line 621
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->setPrimaryKey(Z)V

    .line 622
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->setDefaultValue(Ljava/lang/Object;)V

    .line 623
    new-instance v1, Lcom/alibaba/alimei/sqlite/SQLiteColumn;

    const-string/jumbo v2, "timing_send"

    sget-object v3, Lcom/alibaba/alimei/sqlite/SQLiteDataType;->Text:Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    invoke-direct {v1, v2, v3}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;-><init>(Ljava/lang/String;Lcom/alibaba/alimei/sqlite/SQLiteDataType;)V

    .line 624
    .local v1, "column2":Lcom/alibaba/alimei/sqlite/SQLiteColumn;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->setAutoIncrement(Z)V

    .line 625
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->setNullable(Z)V

    .line 626
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->setPrimaryKey(Z)V

    .line 627
    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->setDefaultValue(Ljava/lang/Object;)V

    .line 628
    const-string/jumbo v2, "Message"

    invoke-static {p1, v0, v2}, Lcom/alibaba/alimei/orm/migration/MigrationExecutor;->addColumn(Lcom/alibaba/alimei/orm/IDatabase;Lcom/alibaba/alimei/sqlite/SQLiteColumn;Ljava/lang/String;)V

    .line 629
    const-string/jumbo v2, "Message"

    invoke-static {p1, v1, v2}, Lcom/alibaba/alimei/orm/migration/MigrationExecutor;->addColumn(Lcom/alibaba/alimei/orm/IDatabase;Lcom/alibaba/alimei/sqlite/SQLiteColumn;Ljava/lang/String;)V

    .line 630
    const-string/jumbo v2, "add separate send, timing send end"

    invoke-static {v2}, Lzb;->i(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 634
    .end local v0    # "column1":Lcom/alibaba/alimei/sqlite/SQLiteColumn;
    .end local v1    # "column2":Lcom/alibaba/alimei/sqlite/SQLiteColumn;
    :goto_0
    return-void

    .line 632
    :catch_0
    move-exception v2

    const-string/jumbo v2, "add separate send, timing send error"

    invoke-static {v2}, Lzb;->i(Ljava/lang/String;)I

    goto :goto_0
.end method
