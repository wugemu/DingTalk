.class public Lcom/alibaba/alimei/orm/internal/l;
.super Ljava/lang/Object;
.source "AlimeiMigrate4Droid.java"


# instance fields
.field private final D:Lcom/alibaba/alimei/orm/IDatabase;

.field private final E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/orm/migration/Migration;",
            ">;"
        }
    .end annotation
.end field

.field private final F:Lcom/alibaba/alimei/orm/internal/m;

.field private final G:I

.field private final H:I


# direct methods
.method private constructor <init>(Lcom/alibaba/alimei/orm/IDatabase;Ljava/util/List;II)V
    .locals 1
    .param p1, "db"    # Lcom/alibaba/alimei/orm/IDatabase;
    .param p3, "oldVersion"    # I
    .param p4, "newVersion"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/orm/IDatabase;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/orm/migration/Migration;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p2, "migrations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/orm/migration/Migration;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/orm/internal/l;->E:Ljava/util/List;

    .line 33
    iput-object p1, p0, Lcom/alibaba/alimei/orm/internal/l;->D:Lcom/alibaba/alimei/orm/IDatabase;

    .line 34
    iget-object v0, p0, Lcom/alibaba/alimei/orm/internal/l;->E:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 35
    iput p3, p0, Lcom/alibaba/alimei/orm/internal/l;->G:I

    .line 36
    iput p4, p0, Lcom/alibaba/alimei/orm/internal/l;->H:I

    .line 37
    new-instance v0, Lcom/alibaba/alimei/orm/internal/m;

    invoke-direct {v0, p1}, Lcom/alibaba/alimei/orm/internal/m;-><init>(Lcom/alibaba/alimei/orm/IDatabase;)V

    iput-object v0, p0, Lcom/alibaba/alimei/orm/internal/l;->F:Lcom/alibaba/alimei/orm/internal/m;

    .line 38
    return-void
.end method

.method public static a(Lcom/alibaba/alimei/orm/IDatabase;Ljava/util/List;ZIIZ)V
    .locals 2
    .param p0, "db"    # Lcom/alibaba/alimei/orm/IDatabase;
    .param p2, "isUp"    # Z
    .param p3, "oldVersion"    # I
    .param p4, "newVersion"    # I
    .param p5, "needMigrate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/orm/IDatabase;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/orm/migration/Migration;",
            ">;ZIIZ)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p1, "migrations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/orm/migration/Migration;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 28
    :cond_0
    :goto_0
    return-void

    .line 26
    :cond_1
    new-instance v0, Lcom/alibaba/alimei/orm/internal/l;

    invoke-direct {v0, p0, p1, p3, p4}, Lcom/alibaba/alimei/orm/internal/l;-><init>(Lcom/alibaba/alimei/orm/IDatabase;Ljava/util/List;II)V

    .line 27
    .local v0, "migration4Droid":Lcom/alibaba/alimei/orm/internal/l;
    invoke-direct {v0, p2, p3, p4, p5}, Lcom/alibaba/alimei/orm/internal/l;->a(ZIIZ)V

    goto :goto_0
.end method

.method private a(Lcom/alibaba/alimei/orm/migration/Migration;)V
    .locals 2
    .param p1, "m"    # Lcom/alibaba/alimei/orm/migration/Migration;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 83
    new-instance v0, Lcom/alibaba/alimei/orm/migration/DbMigration;

    invoke-direct {v0}, Lcom/alibaba/alimei/orm/migration/DbMigration;-><init>()V

    .line 84
    .local v0, "mig":Lcom/alibaba/alimei/orm/migration/DbMigration;
    invoke-interface {p1}, Lcom/alibaba/alimei/orm/migration/Migration;->getMigrationUUID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/orm/migration/DbMigration;->migration:Ljava/lang/String;

    .line 85
    iget-object v1, p0, Lcom/alibaba/alimei/orm/internal/l;->F:Lcom/alibaba/alimei/orm/internal/m;

    invoke-virtual {v1, v0}, Lcom/alibaba/alimei/orm/internal/m;->a(Lcom/alibaba/alimei/orm/migration/DbMigration;)V

    .line 86
    return-void
.end method

.method private a(Lcom/alibaba/alimei/orm/migration/Migration;ZZ)V
    .locals 5
    .param p1, "m"    # Lcom/alibaba/alimei/orm/migration/Migration;
    .param p2, "up"    # Z
    .param p3, "needMigrate"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 49
    const/4 v2, 0x1

    .line 51
    .local v2, "isContinue":Z
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/alimei/orm/internal/l;->F:Lcom/alibaba/alimei/orm/internal/m;

    invoke-interface {p1}, Lcom/alibaba/alimei/orm/migration/Migration;->getMigrationUUID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/alimei/orm/internal/m;->c(Ljava/lang/String;)Lcom/alibaba/alimei/orm/migration/DbMigration;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    .line 55
    :goto_0
    if-nez v2, :cond_1

    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " with uuid[ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lcom/alibaba/alimei/orm/migration/Migration;->getMigrationUUID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] has been executed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/alimei/orm/util/OrmLogger;->d(Ljava/lang/String;)V

    .line 79
    :goto_1
    return-void

    .line 51
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 60
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " with uuid[ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lcom/alibaba/alimei/orm/migration/Migration;->getMigrationUUID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] will be migrate"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/alimei/orm/util/OrmLogger;->d(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/alibaba/alimei/orm/internal/l;->D:Lcom/alibaba/alimei/orm/IDatabase;

    .line 63
    .local v0, "db":Lcom/alibaba/alimei/orm/IDatabase;
    invoke-interface {v0}, Lcom/alibaba/alimei/orm/IDatabase;->beginTransaction()V

    .line 65
    if-eqz p2, :cond_3

    .line 66
    if-eqz p3, :cond_2

    .line 67
    :try_start_1
    iget v3, p0, Lcom/alibaba/alimei/orm/internal/l;->G:I

    iget v4, p0, Lcom/alibaba/alimei/orm/internal/l;->H:I

    invoke-interface {p1, v0, v3, v4}, Lcom/alibaba/alimei/orm/migration/Migration;->up(Lcom/alibaba/alimei/orm/IDatabase;II)V

    .line 69
    :cond_2
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/orm/internal/l;->a(Lcom/alibaba/alimei/orm/migration/Migration;)V

    .line 74
    :cond_3
    invoke-interface {v0}, Lcom/alibaba/alimei/orm/IDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    invoke-interface {v0}, Lcom/alibaba/alimei/orm/IDatabase;->endTransaction()V

    goto :goto_1

    .line 75
    :catch_0
    move-exception v1

    .line 76
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Exception when migrating "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/alibaba/alimei/orm/util/OrmLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    invoke-interface {v0}, Lcom/alibaba/alimei/orm/IDatabase;->endTransaction()V

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-interface {v0}, Lcom/alibaba/alimei/orm/IDatabase;->endTransaction()V

    throw v3

    .end local v0    # "db":Lcom/alibaba/alimei/orm/IDatabase;
    :catch_1
    move-exception v3

    goto/16 :goto_0
.end method

.method private a(ZIIZ)V
    .locals 4
    .param p1, "isUp"    # Z
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I
    .param p4, "needMigrate"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 95
    new-instance v2, Lcom/alibaba/alimei/orm/internal/n;

    invoke-direct {v2}, Lcom/alibaba/alimei/orm/internal/n;-><init>()V

    invoke-direct {p0, v2, v3, v3}, Lcom/alibaba/alimei/orm/internal/l;->a(Lcom/alibaba/alimei/orm/migration/Migration;ZZ)V

    .line 96
    iget-object v1, p0, Lcom/alibaba/alimei/orm/internal/l;->E:Ljava/util/List;

    .line 97
    .local v1, "ms":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/orm/migration/Migration;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/orm/migration/Migration;

    .line 98
    .local v0, "m":Lcom/alibaba/alimei/orm/migration/Migration;
    if-eqz v0, :cond_0

    .line 102
    invoke-direct {p0, v0, p1, p4}, Lcom/alibaba/alimei/orm/internal/l;->a(Lcom/alibaba/alimei/orm/migration/Migration;ZZ)V

    goto :goto_0

    .line 104
    .end local v0    # "m":Lcom/alibaba/alimei/orm/migration/Migration;
    :cond_1
    return-void
.end method
