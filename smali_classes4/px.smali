.class public final Lpx;
.super Ljava/lang/Object;
.source "MessageSummaryController.java"

# interfaces
.implements Lyb;


# static fields
.field private static d:Lpx;


# instance fields
.field public a:Z

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lpv;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/HashMap;
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
.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lpx;->b:Ljava/util/HashMap;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lpx;->c:Ljava/util/HashMap;

    .line 34
    iput-boolean v3, p0, Lpx;->a:Z

    .line 1051
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "basic_LoadMailBody"

    aput-object v2, v1, v3

    invoke-interface {v0, p0, v1}, Lya;->a(Lyb;[Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static declared-synchronized a()Lpx;
    .locals 2

    .prologue
    .line 39
    const-class v1, Lpx;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lpx;->d:Lpx;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lpx;

    invoke-direct {v0}, Lpx;-><init>()V

    sput-object v0, Lpx;->d:Lpx;

    .line 42
    :cond_0
    sget-object v0, Lpx;->d:Lpx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Lpv;)V
    .locals 2
    .param p1, "fetchMailSummaryModel"    # Lpv;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lpx;->a:Z

    if-eqz v1, :cond_0

    .line 64
    new-instance v0, Lcom/alibaba/alimei/adpater/task/cmmd/FetchMailEmlCommand;

    invoke-direct {v0, p1}, Lcom/alibaba/alimei/adpater/task/cmmd/FetchMailEmlCommand;-><init>(Lpv;)V

    .line 65
    .local v0, "command":Lcom/alibaba/alimei/adpater/task/cmmd/FetchMailEmlCommand;
    invoke-virtual {v0}, Lcom/alibaba/alimei/adpater/task/cmmd/FetchMailEmlCommand;->executeCommand()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .end local v0    # "command":Lcom/alibaba/alimei/adpater/task/cmmd/FetchMailEmlCommand;
    :goto_0
    monitor-exit p0

    return-void

    .line 67
    :cond_0
    :try_start_1
    new-instance v0, Lcom/alibaba/alimei/adpater/task/cmmd/FetchMailSummaryCommand;

    invoke-direct {v0, p1}, Lcom/alibaba/alimei/adpater/task/cmmd/FetchMailSummaryCommand;-><init>(Lpv;)V

    .line 68
    .local v0, "command":Lcom/alibaba/alimei/adpater/task/cmmd/FetchMailSummaryCommand;
    invoke-virtual {v0}, Lcom/alibaba/alimei/adpater/task/cmmd/FetchMailSummaryCommand;->executeCommand()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 63
    .end local v0    # "command":Lcom/alibaba/alimei/adpater/task/cmmd/FetchMailSummaryCommand;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final onEvent(Lyc;)V
    .locals 14
    .param p1, "eventMessage"    # Lyc;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 84
    iget-object v10, p1, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    if-eqz v10, :cond_0

    iget-object v10, p1, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-virtual {v10}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getApiError()Lcom/alibaba/alimei/framework/SDKError;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 85
    iget-object v10, p1, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-virtual {v10}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getApiError()Lcom/alibaba/alimei/framework/SDKError;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v9

    .line 86
    .local v9, "errCode":Ljava/lang/String;
    sget-object v10, Lcom/alibaba/alimei/framework/SDKError;->PARSE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    invoke-virtual {v10}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 88
    const-string/jumbo v10, "MessageSummaryController"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    iget-object v13, p1, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-virtual {v13}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-string/jumbo v13, " demote to use fetch eml"

    aput-object v13, v11, v12

    invoke-static {v11}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const-string/jumbo v10, "imap_fetch_body_by_part"

    iget-object v11, p1, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-virtual {v11}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v9, v11}, Lahc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v10, p1, Lyc;->g:Ljava/lang/Object;

    instance-of v10, v10, Ljava/util/Map;

    if-eqz v10, :cond_0

    .line 93
    iget-object v8, p1, Lyc;->g:Ljava/lang/Object;

    check-cast v8, Ljava/util/Map;

    .line 94
    .local v8, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    const-string/jumbo v10, "accountId"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_1

    const-string/jumbo v10, "accountId"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 95
    .local v2, "accountId":J
    :goto_0
    const-string/jumbo v10, "folderId"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_2

    const-string/jumbo v10, "folderId"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 96
    .local v6, "folderId":J
    :goto_1
    const-string/jumbo v10, "uid"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_3

    const-string/jumbo v10, "uid"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 98
    .local v4, "uid":J
    :goto_2
    iget-object v1, p1, Lyc;->f:Ljava/lang/String;

    .line 100
    .local v1, "accountName":Ljava/lang/String;
    new-instance v0, Lcom/alibaba/alimei/adpater/task/cmmd/FetchMailEmlCommand;

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/alimei/adpater/task/cmmd/FetchMailEmlCommand;-><init>(Ljava/lang/String;JJJ)V

    .line 101
    .local v0, "command":Lcom/alibaba/alimei/adpater/task/cmmd/FetchMailEmlCommand;
    invoke-virtual {v0}, Lcom/alibaba/alimei/adpater/task/cmmd/FetchMailEmlCommand;->executeCommand()V

    .line 105
    .end local v0    # "command":Lcom/alibaba/alimei/adpater/task/cmmd/FetchMailEmlCommand;
    .end local v1    # "accountName":Ljava/lang/String;
    .end local v2    # "accountId":J
    .end local v4    # "uid":J
    .end local v6    # "folderId":J
    .end local v8    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v9    # "errCode":Ljava/lang/String;
    :cond_0
    return-void

    .line 94
    .restart local v8    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v9    # "errCode":Ljava/lang/String;
    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_0

    .line 95
    .restart local v2    # "accountId":J
    :cond_2
    const-wide/16 v6, 0x0

    goto :goto_1

    .line 96
    .restart local v6    # "folderId":J
    :cond_3
    const-wide/16 v4, 0x0

    goto :goto_2
.end method
