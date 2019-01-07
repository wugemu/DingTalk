.class final Lcom/alibaba/alimei/contact/db/ContactConfigure$2;
.super Ljava/lang/Object;
.source "ContactConfigure.java"

# interfaces
.implements Lcom/alibaba/alimei/orm/migration/Migration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/contact/db/ContactConfigure;->addMiniDatabaseTables(Lcom/alibaba/alimei/orm/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMigrationUUID()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Contact20171107"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final up(Lcom/alibaba/alimei/orm/IDatabase;II)V
    .locals 3
    .param p1, "db"    # Lcom/alibaba/alimei/orm/IDatabase;
    .param p2, "i"    # I
    .param p3, "i1"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 81
    :try_start_0
    new-instance v0, Lcom/alibaba/alimei/sqlite/SQLiteColumn;

    const-string/jumbo v1, "def_sender_mail"

    sget-object v2, Lcom/alibaba/alimei/sqlite/SQLiteDataType;->Text:Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    invoke-direct {v0, v1, v2}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;-><init>(Ljava/lang/String;Lcom/alibaba/alimei/sqlite/SQLiteDataType;)V

    const-string/jumbo v1, "contacts"

    invoke-static {p1, v0, v1}, Lcom/alibaba/alimei/orm/migration/MigrationExecutor;->addColumn(Lcom/alibaba/alimei/orm/IDatabase;Lcom/alibaba/alimei/sqlite/SQLiteColumn;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    :try_start_1
    new-instance v0, Lcom/alibaba/alimei/sqlite/SQLiteColumn;

    const-string/jumbo v1, "def_sender_name"

    sget-object v2, Lcom/alibaba/alimei/sqlite/SQLiteDataType;->Text:Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    invoke-direct {v0, v1, v2}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;-><init>(Ljava/lang/String;Lcom/alibaba/alimei/sqlite/SQLiteDataType;)V

    const-string/jumbo v1, "contacts"

    invoke-static {p1, v0, v1}, Lcom/alibaba/alimei/orm/migration/MigrationExecutor;->addColumn(Lcom/alibaba/alimei/orm/IDatabase;Lcom/alibaba/alimei/sqlite/SQLiteColumn;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 95
    :goto_1
    return-void

    .line 85
    :catch_0
    move-exception v0

    const-string/jumbo v0, "add default send mail column error"

    invoke-static {v0}, Lzb;->i(Ljava/lang/String;)I

    goto :goto_0

    .line 93
    :catch_1
    move-exception v0

    const-string/jumbo v0, "add default send NAME column error"

    invoke-static {v0}, Lzb;->i(Ljava/lang/String;)I

    goto :goto_1
.end method
