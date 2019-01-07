.class public Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync$ExtendMigration;
.super Ljava/lang/Object;
.source "MessageSync.java"

# interfaces
.implements Lcom/alibaba/alimei/orm/migration/Migration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtendMigration"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMigrationUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    const-string/jumbo v0, "MailConfigure: add column extend_data"

    return-object v0
.end method

.method public up(Lcom/alibaba/alimei/orm/IDatabase;II)V
    .locals 3
    .param p1, "iDatabase"    # Lcom/alibaba/alimei/orm/IDatabase;
    .param p2, "i"    # I
    .param p3, "i1"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 110
    :try_start_0
    new-instance v0, Lcom/alibaba/alimei/sqlite/SQLiteColumn;

    const-string/jumbo v1, "extend_data"

    sget-object v2, Lcom/alibaba/alimei/sqlite/SQLiteDataType;->Text:Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    invoke-direct {v0, v1, v2}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;-><init>(Ljava/lang/String;Lcom/alibaba/alimei/sqlite/SQLiteDataType;)V

    const-string/jumbo v1, "SyncMsg"

    invoke-static {p1, v0, v1}, Lcom/alibaba/alimei/orm/migration/MigrationExecutor;->addColumn(Lcom/alibaba/alimei/orm/IDatabase;Lcom/alibaba/alimei/sqlite/SQLiteColumn;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    const-string/jumbo v0, "add MessageSync column extend_data error"

    invoke-static {v0}, Lzb;->e(Ljava/lang/String;)I

    goto :goto_0
.end method
