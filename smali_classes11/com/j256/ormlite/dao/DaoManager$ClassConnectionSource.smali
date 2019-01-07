.class Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;
.super Ljava/lang/Object;
.source "DaoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/j256/ormlite/dao/DaoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ClassConnectionSource"
.end annotation


# instance fields
.field a:Lcom/j256/ormlite/support/ConnectionSource;

.field b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)V
    .locals 0
    .param p1, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 396
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    iput-object p1, p0, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;->a:Lcom/j256/ormlite/support/ConnectionSource;

    .line 398
    iput-object p2, p0, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;->b:Ljava/lang/Class;

    .line 399
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

    .line 409
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 418
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 412
    check-cast v0, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;

    .line 413
    .local v0, "other":Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;
    iget-object v2, p0, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;->b:Ljava/lang/Class;

    iget-object v3, v0, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;->b:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 415
    iget-object v2, p0, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;->a:Lcom/j256/ormlite/support/ConnectionSource;

    iget-object v3, v0, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;->a:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 418
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 403
    iget-object v1, p0, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;->b:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/lit8 v0, v1, 0x1f

    .line 404
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;->a:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 405
    return v0
.end method
