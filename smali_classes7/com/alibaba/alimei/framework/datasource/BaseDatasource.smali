.class public abstract Lcom/alibaba/alimei/framework/datasource/BaseDatasource;
.super Ljava/lang/Object;
.source "BaseDatasource.java"

# interfaces
.implements Lcom/alibaba/alimei/framework/datasource/IDatasource;


# instance fields
.field private mIDatabase:Lcom/alibaba/alimei/orm/IDatabase;

.field private mLocker:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/framework/datasource/BaseDatasource;->mLocker:Ljava/lang/Object;

    .line 14
    return-void
.end method

.method public static final getBooleanIntValue(Z)I
    .locals 1
    .param p0, "value"    # Z

    .prologue
    .line 17
    if-eqz p0, :cond_0

    .line 18
    const/4 v0, 0x1

    .line 20
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final getIntBooleanValue(I)Z
    .locals 1
    .param p0, "value"    # I

    .prologue
    const/4 v0, 0x1

    .line 24
    if-ne v0, p0, :cond_0

    .line 27
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final nvl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "object"    # Ljava/lang/String;

    .prologue
    .line 31
    if-nez p0, :cond_0

    .line 32
    const-string/jumbo p0, ""

    .line 34
    .end local p0    # "object":Ljava/lang/String;
    :cond_0
    return-object p0
.end method


# virtual methods
.method public beginTransaction()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public endTransaction()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public abstract getDatabaseName()Ljava/lang/String;
.end method

.method public getDefaultDatabase()Lcom/alibaba/alimei/orm/IDatabase;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 39
    iget-object v1, p0, Lcom/alibaba/alimei/framework/datasource/BaseDatasource;->mLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/alimei/framework/datasource/BaseDatasource;->mIDatabase:Lcom/alibaba/alimei/orm/IDatabase;

    if-nez v0, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/alibaba/alimei/framework/datasource/BaseDatasource;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/alimei/orm/AlimeiOrm;->getDatabase(Ljava/lang/String;)Lcom/alibaba/alimei/orm/IDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/framework/datasource/BaseDatasource;->mIDatabase:Lcom/alibaba/alimei/orm/IDatabase;

    .line 43
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    iget-object v0, p0, Lcom/alibaba/alimei/framework/datasource/BaseDatasource;->mIDatabase:Lcom/alibaba/alimei/orm/IDatabase;

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public inTransaction()Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public setTransactionSuccessful()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method
