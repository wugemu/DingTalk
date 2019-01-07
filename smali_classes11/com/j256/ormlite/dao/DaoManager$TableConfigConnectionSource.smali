.class Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;
.super Ljava/lang/Object;
.source "DaoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/j256/ormlite/dao/DaoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TableConfigConnectionSource"
.end annotation


# instance fields
.field a:Lcom/j256/ormlite/support/ConnectionSource;

.field b:Lcom/j256/ormlite/table/DatabaseTableConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/table/DatabaseTableConfig",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)V
    .locals 0
    .param p1, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/table/DatabaseTableConfig",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 429
    .local p2, "tableConfig":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 430
    iput-object p1, p0, Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;->a:Lcom/j256/ormlite/support/ConnectionSource;

    .line 431
    iput-object p2, p0, Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;->b:Lcom/j256/ormlite/table/DatabaseTableConfig;

    .line 432
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 442
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 451
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 445
    check-cast v0, Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;

    .line 446
    .local v0, "other":Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;
    iget-object v2, p0, Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;->b:Lcom/j256/ormlite/table/DatabaseTableConfig;

    iget-object v3, v0, Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;->b:Lcom/j256/ormlite/table/DatabaseTableConfig;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 448
    iget-object v2, p0, Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;->a:Lcom/j256/ormlite/support/ConnectionSource;

    iget-object v3, v0, Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;->a:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 451
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 436
    iget-object v1, p0, Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;->b:Lcom/j256/ormlite/table/DatabaseTableConfig;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/lit8 v0, v1, 0x1f

    .line 437
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;->a:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 438
    return v0
.end method
