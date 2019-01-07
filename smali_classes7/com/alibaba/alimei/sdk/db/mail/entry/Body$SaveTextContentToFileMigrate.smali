.class public Lcom/alibaba/alimei/sdk/db/mail/entry/Body$SaveTextContentToFileMigrate;
.super Ljava/lang/Object;
.source "Body.java"

# interfaces
.implements Lcom/alibaba/alimei/orm/migration/Migration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/sdk/db/mail/entry/Body;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SaveTextContentToFileMigrate"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMigrationUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const-string/jumbo v0, "add isSaveTextContentToFile column to body"

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
    .line 61
    :try_start_0
    new-instance v0, Lcom/alibaba/alimei/sqlite/SQLiteColumn;

    const-string/jumbo v1, "isSaveTextContentToFile"

    sget-object v2, Lcom/alibaba/alimei/sqlite/SQLiteDataType;->Boolean:Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    invoke-direct {v0, v1, v2}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;-><init>(Ljava/lang/String;Lcom/alibaba/alimei/sqlite/SQLiteDataType;)V

    .line 62
    .local v0, "column":Lcom/alibaba/alimei/sqlite/SQLiteColumn;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->setAutoIncrement(Z)V

    .line 63
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->setPrimaryKey(Z)V

    .line 64
    const-string/jumbo v1, "Body"

    invoke-static {p1, v0, v1}, Lcom/alibaba/alimei/orm/migration/MigrationExecutor;->addColumn(Lcom/alibaba/alimei/orm/IDatabase;Lcom/alibaba/alimei/sqlite/SQLiteColumn;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .end local v0    # "column":Lcom/alibaba/alimei/sqlite/SQLiteColumn;
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v1

    const-string/jumbo v1, "add isSaveTextContentToFile error"

    invoke-static {v1}, Lzb;->i(Ljava/lang/String;)I

    goto :goto_0
.end method
