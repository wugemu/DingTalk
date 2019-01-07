.class public Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcV2SyncServiceImpl;
.super Lcom/alibaba/alimei/restfulapi/service/impl/BaseService;
.source "RpcV2SyncServiceImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/v2/service/RpcV2SyncService;


# static fields
.field private static final UPDATE_ITEM_FORMAT:Ljava/lang/String; = "{spaceId:\"%s\",items:%s}"


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;ZLjava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;
    .param p2, "asynchronous"    # Z
    .param p3, "accountName"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/alimei/restfulapi/service/impl/BaseService;-><init>(Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;ZLjava/lang/String;)V

    .line 35
    return-void
.end method


# virtual methods
.method public loadMoreProjectSpaces(Ljava/lang/String;ILjava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 4
    .param p1, "loadMoreId"    # Ljava/lang/String;
    .param p2, "windowSize"    # I
    .param p3, "projectId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/v2/response/SyncSpaceResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p4, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/v2/response/SyncSpaceResult;>;"
    const/4 v3, 0x0

    .line 166
    new-instance v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;

    invoke-direct {v1}, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;-><init>()V

    .line 167
    .local v1, "requestData":Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;
    const/4 v2, -0x1

    iput v2, v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->dataScope:I

    .line 168
    iput-object p3, v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->scopeId:Ljava/lang/String;

    .line 169
    iput-object v3, v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->spaceId:Ljava/lang/String;

    .line 170
    iput-object v3, v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->syncKey:Ljava/lang/String;

    .line 171
    iput p2, v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->windowSize:I

    .line 172
    iput-object p1, v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->loadMoreId:Ljava/lang/String;

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 174
    .local v0, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;>;"
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcV2SyncServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcV2SyncServiceImpl;->isAsynchronousService()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getV2SyncService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/v2/service/RpcV2SyncService;

    move-result-object v2

    new-instance v3, Lcom/alibaba/alimei/restfulapi/v2/parser/SyncSpaceResponseParser;

    invoke-direct {v3}, Lcom/alibaba/alimei/restfulapi/v2/parser/SyncSpaceResponseParser;-><init>()V

    invoke-interface {v2, v0, v3, p4}, Lcom/alibaba/alimei/restfulapi/v2/service/RpcV2SyncService;->syncItems(Ljava/util/List;Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v2

    return-object v2
.end method

.method public loadMoreUserSpaces(Ljava/lang/String;ILcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 4
    .param p1, "loadMoreId"    # Ljava/lang/String;
    .param p2, "windowSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/v2/response/SyncSpaceResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p3, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/v2/response/SyncSpaceResult;>;"
    const/4 v3, 0x0

    .line 132
    new-instance v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;

    invoke-direct {v1}, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;-><init>()V

    .line 133
    .local v1, "requestData":Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;
    const/4 v2, 0x0

    iput v2, v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->dataScope:I

    .line 134
    iput-object v3, v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->scopeId:Ljava/lang/String;

    .line 135
    iput-object v3, v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->spaceId:Ljava/lang/String;

    .line 136
    iput-object v3, v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->syncKey:Ljava/lang/String;

    .line 137
    iput p2, v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->windowSize:I

    .line 138
    iput-object p1, v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->loadMoreId:Ljava/lang/String;

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 140
    .local v0, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;>;"
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcV2SyncServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcV2SyncServiceImpl;->isAsynchronousService()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getV2SyncService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/v2/service/RpcV2SyncService;

    move-result-object v2

    new-instance v3, Lcom/alibaba/alimei/restfulapi/v2/parser/SyncSpaceResponseParser;

    invoke-direct {v3}, Lcom/alibaba/alimei/restfulapi/v2/parser/SyncSpaceResponseParser;-><init>()V

    invoke-interface {v2, v0, v3, p3}, Lcom/alibaba/alimei/restfulapi/v2/service/RpcV2SyncService;->syncItems(Ljava/util/List;Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v2

    return-object v2
.end method

.method public synProjectSpaces(Ljava/lang/String;ILjava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 4
    .param p1, "syncKey"    # Ljava/lang/String;
    .param p2, "windowSize"    # I
    .param p3, "projectId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/v2/response/SyncSpaceResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p4, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/v2/response/SyncSpaceResult;>;"
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 149
    new-instance v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;

    invoke-direct {v1}, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;-><init>()V

    .line 150
    .local v1, "requestData":Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;
    iput v2, v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->dataScope:I

    .line 151
    iput-object p3, v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->scopeId:Ljava/lang/String;

    .line 152
    iput-object v3, v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->spaceId:Ljava/lang/String;

    .line 153
    iput-object p1, v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->syncKey:Ljava/lang/String;

    .line 154
    iput p2, v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->windowSize:I

    .line 155
    iput-object v3, v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->loadMoreId:Ljava/lang/String;

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 157
    .local v0, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;>;"
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcV2SyncServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcV2SyncServiceImpl;->isAsynchronousService()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getV2SyncService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/v2/service/RpcV2SyncService;

    move-result-object v2

    new-instance v3, Lcom/alibaba/alimei/restfulapi/v2/parser/SyncSpaceResponseParser;

    invoke-direct {v3}, Lcom/alibaba/alimei/restfulapi/v2/parser/SyncSpaceResponseParser;-><init>()V

    invoke-interface {v2, v0, v3, p4}, Lcom/alibaba/alimei/restfulapi/v2/service/RpcV2SyncService;->syncItems(Ljava/util/List;Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v2

    return-object v2
.end method

.method public syncFolders(Ljava/lang/String;Ljava/lang/String;IILcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 4
    .param p1, "syncKey"    # Ljava/lang/String;
    .param p2, "spaceId"    # Ljava/lang/String;
    .param p3, "windowOffset"    # I
    .param p4, "windowSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/v2/response/SyncFoldersResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p5, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/v2/response/SyncFoldersResult;>;"
    const/4 v3, 0x0

    .line 183
    new-instance v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;

    invoke-direct {v1}, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;-><init>()V

    .line 184
    .local v1, "requestData":Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;
    const/16 v2, 0xb

    iput v2, v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->dataScope:I

    .line 185
    iput-object v3, v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->scopeId:Ljava/lang/String;

    .line 186
    iput-object p2, v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->spaceId:Ljava/lang/String;

    .line 187
    iput-object p1, v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->syncKey:Ljava/lang/String;

    .line 188
    iput p4, v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->windowSize:I

    .line 189
    iput-object v3, v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->loadMoreId:Ljava/lang/String;

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 191
    .local v0, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;>;"
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcV2SyncServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcV2SyncServiceImpl;->isAsynchronousService()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getV2SyncService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/v2/service/RpcV2SyncService;

    move-result-object v2

    new-instance v3, Lcom/alibaba/alimei/restfulapi/v2/parser/SyncFolderResponseParser;

    invoke-direct {v3}, Lcom/alibaba/alimei/restfulapi/v2/parser/SyncFolderResponseParser;-><init>()V

    invoke-interface {v2, v0, v3, p5}, Lcom/alibaba/alimei/restfulapi/v2/service/RpcV2SyncService;->syncItems(Ljava/util/List;Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v2

    return-object v2
.end method

.method public syncFolders(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 4
    .param p1, "syncKey"    # Ljava/lang/String;
    .param p2, "spaceId"    # Ljava/lang/String;
    .param p3, "parentFolderId"    # Ljava/lang/String;
    .param p4, "windowOffset"    # I
    .param p5, "windowSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/v2/response/SyncFoldersResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 200
    .local p6, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/v2/response/SyncFoldersResult;>;"
    new-instance v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;

    invoke-direct {v1}, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;-><init>()V

    .line 201
    .local v1, "requestData":Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;
    const/16 v2, 0x15

    iput v2, v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->dataScope:I

    .line 202
    iput-object p3, v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->scopeId:Ljava/lang/String;

    .line 203
    iput-object p2, v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->spaceId:Ljava/lang/String;

    .line 204
    iput-object p1, v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->syncKey:Ljava/lang/String;

    .line 205
    iput p5, v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->windowSize:I

    .line 206
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->loadMoreId:Ljava/lang/String;

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 208
    .local v0, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;>;"
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcV2SyncServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcV2SyncServiceImpl;->isAsynchronousService()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getV2SyncService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/v2/service/RpcV2SyncService;

    move-result-object v2

    new-instance v3, Lcom/alibaba/alimei/restfulapi/v2/parser/SyncFolderResponseParser;

    invoke-direct {v3}, Lcom/alibaba/alimei/restfulapi/v2/parser/SyncFolderResponseParser;-><init>()V

    invoke-interface {v2, v0, v3, p6}, Lcom/alibaba/alimei/restfulapi/v2/service/RpcV2SyncService;->syncItems(Ljava/util/List;Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v2

    return-object v2
.end method

.method public syncItems(Ljava/util/List;Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;",
            ">;",
            "Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser",
            "<+",
            "Lcom/alibaba/alimei/restfulapi/v2/response/V2SyncResult",
            "<+",
            "Lcom/alibaba/alimei/restfulapi/v2/data/ItemV2;",
            ">;>;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<+",
            "Lcom/alibaba/alimei/restfulapi/v2/response/V2SyncResult",
            "<+",
            "Lcom/alibaba/alimei/restfulapi/v2/data/ItemV2;",
            ">;>;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 42
    .local p1, "requestDatas":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;>;"
    .local p2, "parser":Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;, "Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser<+Lcom/alibaba/alimei/restfulapi/v2/response/V2SyncResult<+Lcom/alibaba/alimei/restfulapi/v2/data/ItemV2;>;>;"
    .local p3, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<+Lcom/alibaba/alimei/restfulapi/v2/response/V2SyncResult<+Lcom/alibaba/alimei/restfulapi/v2/data/ItemV2;>;>;"
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcV2SyncServiceImpl;->getAccessTokenAndCheckValid()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "accessToken":Ljava/lang/String;
    new-instance v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncItemsReqeustData;

    invoke-direct {v1}, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncItemsReqeustData;-><init>()V

    .line 44
    .local v1, "innerData":Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncItemsReqeustData;
    invoke-virtual {v1, p1}, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncItemsReqeustData;->setSync(Ljava/util/List;)V

    .line 45
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/GsonTools;->getGsonInstance()Lcom/google/gson/Gson;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, "jsonData":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->isLogI()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 47
    const-string/jumbo v5, "syncItems v2 syncData---->>>"

    invoke-static {v5}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->i(Ljava/lang/String;)I

    .line 48
    invoke-static {v2}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->i(Ljava/lang/String;)I

    .line 51
    :cond_0
    invoke-static {v0, v2}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder;->buildGeneralDataServiceRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    move-result-object v4

    .line 52
    .local v4, "serviceRequest":Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
    invoke-virtual {v4, v0}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;->setAccessToken(Ljava/lang/String;)V

    .line 54
    new-instance v3, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcV2SyncServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v5

    .line 55
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcV2SyncServiceImpl;->isAsynchronousService()Z

    move-result v6

    sget-object v7, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->METHOD_SYNC_ITEMS_V2:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    const/4 v8, 0x1

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;-><init>(Ljava/lang/String;ZLcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Z)V

    .line 56
    .local v3, "proxy":Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;
    invoke-virtual {v3, p2}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->setHttpResponseParser(Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;)V

    .line 57
    invoke-virtual {v3, v4, p3}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->doGet(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v5

    return-object v5
.end method

.method public syncSpaceByBizType(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 5
    .param p1, "bizType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/v2/response/SyncSpaceResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p2, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/v2/response/SyncSpaceResult;>;"
    const/4 v4, 0x0

    .line 114
    new-instance v2, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;

    invoke-direct {v2}, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;-><init>()V

    .line 115
    .local v2, "requestData":Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;
    const/4 v3, 0x0

    iput v3, v2, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->dataScope:I

    .line 116
    iput-object v4, v2, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->scopeId:Ljava/lang/String;

    .line 117
    iput-object v4, v2, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->spaceId:Ljava/lang/String;

    .line 118
    iput-object v4, v2, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->loadMoreId:Ljava/lang/String;

    .line 119
    new-instance v1, Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;

    invoke-direct {v1}, Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;-><init>()V

    .line 120
    .local v1, "queryParam":Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;
    invoke-virtual {v1, p1}, Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;->setBizType(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v2, v1}, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->setQueryParam(Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;)V

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 123
    .local v0, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;>;"
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcV2SyncServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcV2SyncServiceImpl;->isAsynchronousService()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getV2SyncService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/v2/service/RpcV2SyncService;

    move-result-object v3

    new-instance v4, Lcom/alibaba/alimei/restfulapi/v2/parser/SyncSpaceResponseParser;

    invoke-direct {v4}, Lcom/alibaba/alimei/restfulapi/v2/parser/SyncSpaceResponseParser;-><init>()V

    invoke-interface {v3, v0, v4, p2}, Lcom/alibaba/alimei/restfulapi/v2/service/RpcV2SyncService;->syncItems(Ljava/util/List;Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v3

    return-object v3
.end method

.method public syncUpdateItems(Ljava/util/List;Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;",
            ">;",
            "Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser",
            "<*>;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<*>;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 66
    .local p1, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;>;"
    .local p2, "parser":Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;, "Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser<*>;"
    .local p3, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<*>;"
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcV2SyncServiceImpl;->getAccessTokenAndCheckValid()Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "accessToken":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .local v7, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v9, "{update:["

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const/4 v3, 0x0

    .line 70
    .local v3, "i":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;

    .line 71
    .local v2, "data":Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;
    if-eqz v3, :cond_0

    .line 72
    const-string/jumbo v10, ","

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    :cond_0
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/GsonTools;->getGsonInstance()Lcom/google/gson/Gson;

    move-result-object v10

    iget-object v11, v2, Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;->items:Ljava/util/List;

    invoke-virtual {v10, v11}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 75
    .local v4, "itemsJson":Ljava/lang/String;
    const-string/jumbo v10, "{spaceId:\"%s\",items:%s}"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v2}, Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;->getSpaceId()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v4, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    add-int/lit8 v3, v3, 0x1

    .line 77
    goto :goto_0

    .line 78
    .end local v2    # "data":Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;
    .end local v4    # "itemsJson":Ljava/lang/String;
    :cond_1
    const-string/jumbo v9, "]}"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 82
    .local v5, "jsonData":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->isLogI()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 83
    const-string/jumbo v9, "syncUpdateItems v2 syncData---->>>"

    invoke-static {v9}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->i(Ljava/lang/String;)I

    .line 84
    invoke-static {v5}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->i(Ljava/lang/String;)I

    .line 87
    :cond_2
    invoke-static {v1, v5}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder;->buildGeneralDataServiceRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    move-result-object v8

    .line 88
    .local v8, "serviceRequest":Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
    invoke-virtual {v8, v1}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;->setAccessToken(Ljava/lang/String;)V

    .line 90
    new-instance v6, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcV2SyncServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v9

    .line 91
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcV2SyncServiceImpl;->isAsynchronousService()Z

    move-result v10

    sget-object v11, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->METHOD_UPDATE_ITEMS_V2:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    const/4 v12, 0x1

    invoke-direct {v6, v9, v10, v11, v12}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;-><init>(Ljava/lang/String;ZLcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Z)V

    .line 92
    .local v6, "proxy":Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;
    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->setHttpResponseParser(Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;)V

    .line 93
    move-object/from16 v0, p3

    invoke-virtual {v6, v8, v0}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->doPost(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v9

    return-object v9
.end method

.method public syncUserSpaces(Ljava/lang/String;ILcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 4
    .param p1, "syncKey"    # Ljava/lang/String;
    .param p2, "windowSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/v2/response/SyncSpaceResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p3, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/v2/response/SyncSpaceResult;>;"
    const/4 v3, 0x0

    .line 98
    new-instance v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;

    invoke-direct {v1}, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;-><init>()V

    .line 99
    .local v1, "requestData":Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;
    const/4 v2, 0x0

    iput v2, v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->dataScope:I

    .line 100
    iput-object v3, v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->scopeId:Ljava/lang/String;

    .line 101
    iput-object v3, v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->spaceId:Ljava/lang/String;

    .line 102
    iput-object p1, v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->syncKey:Ljava/lang/String;

    .line 103
    iput p2, v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->windowSize:I

    .line 104
    iput-object v3, v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->loadMoreId:Ljava/lang/String;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 106
    .local v0, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;>;"
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcV2SyncServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcV2SyncServiceImpl;->isAsynchronousService()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getV2SyncService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/v2/service/RpcV2SyncService;

    move-result-object v2

    new-instance v3, Lcom/alibaba/alimei/restfulapi/v2/parser/SyncSpaceResponseParser;

    invoke-direct {v3}, Lcom/alibaba/alimei/restfulapi/v2/parser/SyncSpaceResponseParser;-><init>()V

    invoke-interface {v2, v0, v3, p3}, Lcom/alibaba/alimei/restfulapi/v2/service/RpcV2SyncService;->syncItems(Ljava/util/List;Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v2

    return-object v2
.end method
