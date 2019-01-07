.class final Lcom/alibaba/alimei/orm/internal/m;
.super Ljava/lang/Object;
.source "DbMigrationDao.java"


# instance fields
.field private I:Lcom/alibaba/alimei/orm/IDatabase;


# direct methods
.method public constructor <init>(Lcom/alibaba/alimei/orm/IDatabase;)V
    .locals 0
    .param p1, "db"    # Lcom/alibaba/alimei/orm/IDatabase;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/alibaba/alimei/orm/internal/m;->I:Lcom/alibaba/alimei/orm/IDatabase;

    .line 17
    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/alimei/orm/migration/DbMigration;)V
    .locals 4
    .param p1, "migration"    # Lcom/alibaba/alimei/orm/migration/DbMigration;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 35
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 36
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v1, "migration"

    iget-object v2, p1, Lcom/alibaba/alimei/orm/migration/DbMigration;->migration:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v1, p0, Lcom/alibaba/alimei/orm/internal/m;->I:Lcom/alibaba/alimei/orm/IDatabase;

    const-string/jumbo v2, "db_migrations"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/alimei/orm/IDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 38
    return-void
.end method

.method public final c(Ljava/lang/String;)Lcom/alibaba/alimei/orm/migration/DbMigration;
    .locals 12
    .param p1, "migration"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v11, 0x0

    .line 20
    iget-object v0, p0, Lcom/alibaba/alimei/orm/internal/m;->I:Lcom/alibaba/alimei/orm/IDatabase;

    const-string/jumbo v1, "db_migrations"

    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v3, "migration"

    aput-object v3, v2, v11

    const-string/jumbo v3, "migration = ?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v11

    const-string/jumbo v8, "0, 1"

    move-object v6, v5

    move-object v7, v5

    invoke-interface/range {v0 .. v8}, Lcom/alibaba/alimei/orm/IDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 23
    .local v9, "c":Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 24
    .local v10, "dbMigration":Lcom/alibaba/alimei/orm/migration/DbMigration;
    if-eqz v9, :cond_1

    .line 25
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    new-instance v10, Lcom/alibaba/alimei/orm/migration/DbMigration;

    .end local v10    # "dbMigration":Lcom/alibaba/alimei/orm/migration/DbMigration;
    invoke-direct {v10}, Lcom/alibaba/alimei/orm/migration/DbMigration;-><init>()V

    .line 27
    .restart local v10    # "dbMigration":Lcom/alibaba/alimei/orm/migration/DbMigration;
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/alibaba/alimei/orm/migration/DbMigration;->migration:Ljava/lang/String;

    .line 29
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 31
    :cond_1
    return-object v10
.end method
