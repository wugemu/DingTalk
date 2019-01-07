.class public Lra;
.super Ljava/lang/Object;
.source "FolderServerIdCache.java"


# static fields
.field private static volatile a:Lra;


# instance fields
.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lra;->b:Ljava/util/HashMap;

    return-void
.end method

.method public static a()Lra;
    .locals 2

    .prologue
    .line 18
    sget-object v0, Lra;->a:Lra;

    if-nez v0, :cond_1

    .line 19
    const-class v1, Lra;

    monitor-enter v1

    .line 20
    :try_start_0
    sget-object v0, Lra;->a:Lra;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lra;

    invoke-direct {v0}, Lra;-><init>()V

    sput-object v0, Lra;->a:Lra;

    .line 23
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :cond_1
    sget-object v0, Lra;->a:Lra;

    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(JJ)Ljava/lang/String;
    .locals 5
    .param p1, "accountId"    # J
    .param p3, "folderId"    # J

    .prologue
    .line 30
    iget-object v1, p0, Lra;->b:Ljava/util/HashMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 31
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryFolderById(JJ)Lcom/alibaba/alimei/sdk/model/FolderModel;

    move-result-object v0

    .line 32
    .local v0, "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    if-eqz v0, :cond_0

    .line 33
    iget-object v1, p0, Lra;->b:Ljava/util/HashMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->serverId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .end local v0    # "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    :cond_0
    iget-object v1, p0, Lra;->b:Ljava/util/HashMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method
