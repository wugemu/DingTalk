.class final Lcom/alibaba/alimei/framework/db/FrameworkConfigure$1;
.super Ljava/lang/Object;
.source "FrameworkConfigure.java"

# interfaces
.implements Lcom/alibaba/alimei/orm/migration/Migration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/framework/db/FrameworkConfigure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMigrationUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string/jumbo v0, "Encrypt accessToken and refreshToken 1 times"

    return-object v0
.end method

.method public final up(Lcom/alibaba/alimei/orm/IDatabase;II)V
    .locals 12
    .param p1, "db"    # Lcom/alibaba/alimei/orm/IDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 39
    invoke-static {}, Lzh;->a()Ljava/lang/String;

    move-result-object v3

    .line 40
    .local v3, "key":Ljava/lang/String;
    new-instance v5, Lcom/alibaba/alimei/orm/query/Select;

    const-class v7, Lcom/alibaba/alimei/framework/db/HostAuth;

    const-string/jumbo v8, "almfwork.db"

    const-string/jumbo v9, "HostAuth"

    invoke-direct {v5, v7, v8, v9}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .local v5, "select":Lcom/alibaba/alimei/orm/query/Select;
    invoke-virtual {v5}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v2

    .line 42
    .local v2, "hostAuths":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/framework/db/HostAuth;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 56
    :cond_0
    return-void

    .line 46
    :cond_1
    new-instance v6, Lcom/alibaba/alimei/orm/query/Update;

    const-class v7, Lcom/alibaba/alimei/framework/db/HostAuth;

    const-string/jumbo v8, "almfwork.db"

    const-string/jumbo v9, "HostAuth"

    invoke-direct {v6, v7, v8, v9}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .local v6, "update":Lcom/alibaba/alimei/orm/query/Update;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/framework/db/HostAuth;

    .line 48
    .local v1, "auth":Lcom/alibaba/alimei/framework/db/HostAuth;
    iget-object v8, v1, Lcom/alibaba/alimei/framework/db/HostAuth;->accessToken:Ljava/lang/String;

    invoke-static {v8, v3}, Lzh;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "accessToken":Ljava/lang/String;
    iget-object v8, v1, Lcom/alibaba/alimei/framework/db/HostAuth;->refreshToken:Ljava/lang/String;

    invoke-static {v8, v3}, Lzh;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 50
    .local v4, "refreshToken":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/alibaba/alimei/orm/query/Update;->resetUpdate()V

    .line 51
    const-string/jumbo v8, "accessToken"

    invoke-virtual {v6, v8, v0}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    const-string/jumbo v8, "refreshToken"

    invoke-virtual {v6, v8, v4}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    const-string/jumbo v8, "_id"

    iget-wide v10, v1, Lcom/alibaba/alimei/framework/db/HostAuth;->mId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-virtual {v6}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    goto :goto_0
.end method
