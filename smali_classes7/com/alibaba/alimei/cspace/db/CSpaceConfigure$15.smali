.class final Lcom/alibaba/alimei/cspace/db/CSpaceConfigure$15;
.super Ljava/lang/Object;
.source "CSpaceConfigure.java"

# interfaces
.implements Lcom/alibaba/alimei/orm/migration/Migration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/cspace/db/CSpaceConfigure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMigrationUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 415
    const-string/jumbo v0, "csapce_dentry_add_online_edit_un_finish_editor_count"

    return-object v0
.end method

.method public final up(Lcom/alibaba/alimei/orm/IDatabase;II)V
    .locals 4
    .param p1, "database"    # Lcom/alibaba/alimei/orm/IDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 406
    :try_start_0
    new-instance v1, Lcom/alibaba/alimei/sqlite/SQLiteColumn;

    const-string/jumbo v2, "un_finish_editor_count"

    sget-object v3, Lcom/alibaba/alimei/sqlite/SQLiteDataType;->Integer:Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    invoke-direct {v1, v2, v3}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;-><init>(Ljava/lang/String;Lcom/alibaba/alimei/sqlite/SQLiteDataType;)V

    const-string/jumbo v2, "cspace_dentry"

    invoke-static {p1, v1, v2}, Lcom/alibaba/alimei/orm/migration/MigrationExecutor;->addColumn(Lcom/alibaba/alimei/orm/IDatabase;Lcom/alibaba/alimei/sqlite/SQLiteColumn;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    :goto_0
    return-void

    .line 407
    :catch_0
    move-exception v0

    .line 408
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    .line 409
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "cspaceAddOnlineEditUnFinishEditorCount exception"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
