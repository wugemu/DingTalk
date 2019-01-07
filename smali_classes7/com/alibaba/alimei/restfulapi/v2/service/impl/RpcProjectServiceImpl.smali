.class public Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl;
.super Lcom/alibaba/alimei/restfulapi/service/impl/BaseService;
.source "RpcProjectServiceImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/v2/service/RpcProjectService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;
    }
.end annotation


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
.method public addProject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 6
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "projectName"    # Ljava/lang/String;
    .param p3, "projectDesc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/v2/response/ProjectResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p4, "members":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/v2/response/ProjectResult;>;"
    const/4 v5, 0x1

    .line 143
    new-instance v2, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;

    invoke-direct {v2}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;-><init>()V

    .line 144
    .local v2, "project":Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;
    const/16 v4, 0x64

    invoke-virtual {v2, v4}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;->setAction(I)V

    .line 145
    invoke-static {v2, p2}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;->access$002(Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;Ljava/lang/String;)Ljava/lang/String;

    .line 146
    invoke-static {v2, p3}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;->access$102(Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;Ljava/lang/String;)Ljava/lang/String;

    .line 147
    invoke-static {v2, p4}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;->access$202(Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;Ljava/util/List;)Ljava/util/List;

    .line 149
    new-instance v3, Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;

    invoke-direct {v3}, Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;-><init>()V

    .line 150
    .local v3, "requestData":Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;
    iput-object p1, v3, Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;->spaceId:Ljava/lang/String;

    .line 151
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 152
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;>;"
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    iput-object v1, v3, Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;->items:Ljava/util/List;

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 156
    .local v0, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;>;"
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl;->isAsynchronousService()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getV2SyncService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/v2/service/RpcV2SyncService;

    move-result-object v4

    new-instance v5, Lcom/alibaba/alimei/restfulapi/v2/parser/ProjectUpdateResponseParser;

    invoke-direct {v5}, Lcom/alibaba/alimei/restfulapi/v2/parser/ProjectUpdateResponseParser;-><init>()V

    invoke-interface {v4, v0, v5, p5}, Lcom/alibaba/alimei/restfulapi/v2/service/RpcV2SyncService;->syncUpdateItems(Ljava/util/List;Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v4

    return-object v4
.end method

.method public addProjectMembers(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 6
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "projectId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/v2/response/ProjectMemberResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p3, "members":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/v2/response/ProjectMemberResult;>;"
    const/4 v5, 0x1

    .line 213
    new-instance v2, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;

    invoke-direct {v2}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;-><init>()V

    .line 214
    .local v2, "project":Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;
    const/16 v4, 0x68

    invoke-virtual {v2, v4}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;->setAction(I)V

    .line 215
    invoke-static {v2, p2}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;->access$302(Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;Ljava/lang/String;)Ljava/lang/String;

    .line 216
    invoke-static {v2, p3}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;->access$202(Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;Ljava/util/List;)Ljava/util/List;

    .line 218
    new-instance v3, Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;

    invoke-direct {v3}, Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;-><init>()V

    .line 219
    .local v3, "requestData":Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;
    iput-object p1, v3, Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;->spaceId:Ljava/lang/String;

    .line 220
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 221
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;>;"
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    iput-object v1, v3, Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;->items:Ljava/util/List;

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 225
    .local v0, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;>;"
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl;->isAsynchronousService()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getV2SyncService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/v2/service/RpcV2SyncService;

    move-result-object v4

    new-instance v5, Lcom/alibaba/alimei/restfulapi/v2/parser/ProjectMemberUpdateResponseParser;

    invoke-direct {v5}, Lcom/alibaba/alimei/restfulapi/v2/parser/ProjectMemberUpdateResponseParser;-><init>()V

    invoke-interface {v4, v0, v5, p4}, Lcom/alibaba/alimei/restfulapi/v2/service/RpcV2SyncService;->syncUpdateItems(Ljava/util/List;Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v4

    return-object v4
.end method

.method public deleteProjectMembers(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 6
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "projectId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/v2/response/ProjectMemberResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p3, "members":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/v2/response/ProjectMemberResult;>;"
    const/4 v5, 0x1

    .line 234
    new-instance v2, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;

    invoke-direct {v2}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;-><init>()V

    .line 235
    .local v2, "project":Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;
    const/16 v4, 0x69

    invoke-virtual {v2, v4}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;->setAction(I)V

    .line 236
    invoke-static {v2, p2}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;->access$302(Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;Ljava/lang/String;)Ljava/lang/String;

    .line 237
    invoke-static {v2, p3}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;->access$202(Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;Ljava/util/List;)Ljava/util/List;

    .line 239
    new-instance v3, Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;

    invoke-direct {v3}, Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;-><init>()V

    .line 240
    .local v3, "requestData":Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;
    iput-object p1, v3, Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;->spaceId:Ljava/lang/String;

    .line 241
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 242
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;>;"
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    iput-object v1, v3, Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;->items:Ljava/util/List;

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 246
    .local v0, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;>;"
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl;->isAsynchronousService()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getV2SyncService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/v2/service/RpcV2SyncService;

    move-result-object v4

    new-instance v5, Lcom/alibaba/alimei/restfulapi/v2/parser/ProjectMemberUpdateResponseParser;

    invoke-direct {v5}, Lcom/alibaba/alimei/restfulapi/v2/parser/ProjectMemberUpdateResponseParser;-><init>()V

    invoke-interface {v4, v0, v5, p4}, Lcom/alibaba/alimei/restfulapi/v2/service/RpcV2SyncService;->syncUpdateItems(Ljava/util/List;Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v4

    return-object v4
.end method

.method public focusProject(Ljava/lang/String;Ljava/lang/String;ZLcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 6
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "projectId"    # Ljava/lang/String;
    .param p3, "isFocus"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/v2/response/ProjectResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p4, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/v2/response/ProjectResult;>;"
    const/4 v5, 0x1

    .line 189
    new-instance v2, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;

    invoke-direct {v2}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;-><init>()V

    .line 190
    .local v2, "project":Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;
    if-eqz p3, :cond_0

    .line 191
    const/16 v4, 0x66

    invoke-virtual {v2, v4}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;->setAction(I)V

    .line 195
    :goto_0
    invoke-static {v2, p2}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;->access$302(Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;Ljava/lang/String;)Ljava/lang/String;

    .line 197
    new-instance v3, Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;

    invoke-direct {v3}, Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;-><init>()V

    .line 198
    .local v3, "requestData":Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;
    iput-object p1, v3, Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;->spaceId:Ljava/lang/String;

    .line 199
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 200
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;>;"
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    iput-object v1, v3, Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;->items:Ljava/util/List;

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 204
    .local v0, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;>;"
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl;->isAsynchronousService()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getV2SyncService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/v2/service/RpcV2SyncService;

    move-result-object v4

    new-instance v5, Lcom/alibaba/alimei/restfulapi/v2/parser/ProjectUpdateResponseParser;

    invoke-direct {v5}, Lcom/alibaba/alimei/restfulapi/v2/parser/ProjectUpdateResponseParser;-><init>()V

    invoke-interface {v4, v0, v5, p4}, Lcom/alibaba/alimei/restfulapi/v2/service/RpcV2SyncService;->syncUpdateItems(Ljava/util/List;Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v4

    return-object v4

    .line 193
    .end local v0    # "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;>;"
    .end local v1    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;>;"
    .end local v3    # "requestData":Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;
    :cond_0
    const/16 v4, 0x67

    invoke-virtual {v2, v4}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;->setAction(I)V

    goto :goto_0
.end method

.method public loadMoreProjectMembers(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 4
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "loadMoreId"    # Ljava/lang/String;
    .param p3, "projectId"    # Ljava/lang/String;
    .param p4, "windowSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/v2/response/SyncProjectMembersResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 92
    .local p5, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/v2/response/SyncProjectMembersResult;>;"
    new-instance v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;

    invoke-direct {v1}, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;-><init>()V

    .line 93
    .local v1, "requestData":Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;
    const/16 v2, 0x33

    iput v2, v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->dataScope:I

    .line 94
    iput-object p3, v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->scopeId:Ljava/lang/String;

    .line 95
    iput-object p1, v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->spaceId:Ljava/lang/String;

    .line 96
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->syncKey:Ljava/lang/String;

    .line 97
    iput p4, v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->windowSize:I

    .line 98
    iput-object p2, v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->loadMoreId:Ljava/lang/String;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 100
    .local v0, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;>;"
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl;->isAsynchronousService()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getV2SyncService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/v2/service/RpcV2SyncService;

    move-result-object v2

    new-instance v3, Lcom/alibaba/alimei/restfulapi/v2/parser/SyncProjectMembersResponseParser;

    invoke-direct {v3}, Lcom/alibaba/alimei/restfulapi/v2/parser/SyncProjectMembersResponseParser;-><init>()V

    invoke-interface {v2, v0, v3, p5}, Lcom/alibaba/alimei/restfulapi/v2/service/RpcV2SyncService;->syncItems(Ljava/util/List;Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v2

    return-object v2
.end method

.method public loadMoreProjects(Ljava/lang/String;Ljava/lang/String;ILcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 4
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "loadMoreId"    # Ljava/lang/String;
    .param p3, "windowSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/v2/response/SyncProjectResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p4, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/v2/response/SyncProjectResult;>;"
    const/4 v3, 0x0

    .line 56
    new-instance v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;

    invoke-direct {v1}, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;-><init>()V

    .line 57
    .local v1, "requestData":Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;
    const/16 v2, 0x32

    iput v2, v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->dataScope:I

    .line 58
    iput-object v3, v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->scopeId:Ljava/lang/String;

    .line 59
    iput-object p1, v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->spaceId:Ljava/lang/String;

    .line 60
    iput-object v3, v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->syncKey:Ljava/lang/String;

    .line 61
    iput p3, v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->windowSize:I

    .line 62
    iput-object p2, v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->loadMoreId:Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 64
    .local v0, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;>;"
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl;->isAsynchronousService()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getV2SyncService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/v2/service/RpcV2SyncService;

    move-result-object v2

    new-instance v3, Lcom/alibaba/alimei/restfulapi/v2/parser/SyncProjectResponseParser;

    invoke-direct {v3}, Lcom/alibaba/alimei/restfulapi/v2/parser/SyncProjectResponseParser;-><init>()V

    invoke-interface {v2, v0, v3, p4}, Lcom/alibaba/alimei/restfulapi/v2/service/RpcV2SyncService;->syncItems(Ljava/util/List;Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v2

    return-object v2
.end method

.method public quitProject(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 6
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "projectId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/v2/response/ProjectResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p3, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/v2/response/ProjectResult;>;"
    const/4 v5, 0x1

    .line 255
    new-instance v2, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;

    invoke-direct {v2}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;-><init>()V

    .line 256
    .local v2, "project":Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;
    const/16 v4, 0x6a

    invoke-virtual {v2, v4}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;->setAction(I)V

    .line 257
    invoke-static {v2, p2}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;->access$302(Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;Ljava/lang/String;)Ljava/lang/String;

    .line 259
    new-instance v3, Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;

    invoke-direct {v3}, Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;-><init>()V

    .line 260
    .local v3, "requestData":Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;
    iput-object p1, v3, Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;->spaceId:Ljava/lang/String;

    .line 261
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 262
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;>;"
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    iput-object v1, v3, Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;->items:Ljava/util/List;

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 266
    .local v0, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;>;"
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl;->isAsynchronousService()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getV2SyncService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/v2/service/RpcV2SyncService;

    move-result-object v4

    new-instance v5, Lcom/alibaba/alimei/restfulapi/v2/parser/ProjectUpdateResponseParser;

    invoke-direct {v5}, Lcom/alibaba/alimei/restfulapi/v2/parser/ProjectUpdateResponseParser;-><init>()V

    invoke-interface {v4, v0, v5, p3}, Lcom/alibaba/alimei/restfulapi/v2/service/RpcV2SyncService;->syncUpdateItems(Ljava/util/List;Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v4

    return-object v4
.end method

.method public syncProjectMembers(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 4
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "syncKey"    # Ljava/lang/String;
    .param p3, "projectId"    # Ljava/lang/String;
    .param p4, "windowSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/v2/response/SyncProjectMembersResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 74
    .local p5, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/v2/response/SyncProjectMembersResult;>;"
    new-instance v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;

    invoke-direct {v1}, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;-><init>()V

    .line 75
    .local v1, "requestData":Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;
    const/16 v2, 0x33

    iput v2, v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->dataScope:I

    .line 76
    iput-object p3, v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->scopeId:Ljava/lang/String;

    .line 77
    iput-object p1, v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->spaceId:Ljava/lang/String;

    .line 78
    iput-object p2, v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->syncKey:Ljava/lang/String;

    .line 79
    iput p4, v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->windowSize:I

    .line 80
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->loadMoreId:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 82
    .local v0, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;>;"
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl;->isAsynchronousService()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getV2SyncService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/v2/service/RpcV2SyncService;

    move-result-object v2

    new-instance v3, Lcom/alibaba/alimei/restfulapi/v2/parser/SyncProjectMembersResponseParser;

    invoke-direct {v3}, Lcom/alibaba/alimei/restfulapi/v2/parser/SyncProjectMembersResponseParser;-><init>()V

    invoke-interface {v2, v0, v3, p5}, Lcom/alibaba/alimei/restfulapi/v2/service/RpcV2SyncService;->syncItems(Ljava/util/List;Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v2

    return-object v2
.end method

.method public syncProjects(Ljava/lang/String;Ljava/lang/String;ILcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 4
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "syncKey"    # Ljava/lang/String;
    .param p3, "windowSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/v2/response/SyncProjectResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 40
    .local p4, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/v2/response/SyncProjectResult;>;"
    new-instance v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;

    invoke-direct {v1}, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;-><init>()V

    .line 41
    .local v1, "requestData":Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;
    const/16 v2, 0x32

    iput v2, v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->dataScope:I

    .line 42
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->scopeId:Ljava/lang/String;

    .line 43
    iput-object p1, v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->spaceId:Ljava/lang/String;

    .line 44
    iput-object p2, v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->syncKey:Ljava/lang/String;

    .line 45
    iput p3, v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->windowSize:I

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 47
    .local v0, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;>;"
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl;->isAsynchronousService()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getV2SyncService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/v2/service/RpcV2SyncService;

    move-result-object v2

    new-instance v3, Lcom/alibaba/alimei/restfulapi/v2/parser/SyncProjectResponseParser;

    invoke-direct {v3}, Lcom/alibaba/alimei/restfulapi/v2/parser/SyncProjectResponseParser;-><init>()V

    invoke-interface {v2, v0, v3, p4}, Lcom/alibaba/alimei/restfulapi/v2/service/RpcV2SyncService;->syncItems(Ljava/util/List;Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v2

    return-object v2
.end method

.method public updateProject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 6
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "projectId"    # Ljava/lang/String;
    .param p3, "projectName"    # Ljava/lang/String;
    .param p4, "projectDesc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/v2/response/ProjectResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p5, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/v2/response/ProjectResult;>;"
    const/4 v5, 0x1

    .line 167
    new-instance v2, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;

    invoke-direct {v2}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;-><init>()V

    .line 168
    .local v2, "project":Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;
    const/16 v4, 0x65

    invoke-virtual {v2, v4}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;->setAction(I)V

    .line 169
    invoke-static {v2, p2}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;->access$302(Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;Ljava/lang/String;)Ljava/lang/String;

    .line 170
    invoke-static {v2, p3}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;->access$002(Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;Ljava/lang/String;)Ljava/lang/String;

    .line 171
    invoke-static {v2, p4}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;->access$102(Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;Ljava/lang/String;)Ljava/lang/String;

    .line 173
    new-instance v3, Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;

    invoke-direct {v3}, Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;-><init>()V

    .line 174
    .local v3, "requestData":Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;
    iput-object p1, v3, Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;->spaceId:Ljava/lang/String;

    .line 175
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 176
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;>;"
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    iput-object v1, v3, Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;->items:Ljava/util/List;

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 180
    .local v0, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;>;"
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl;->isAsynchronousService()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getV2SyncService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/v2/service/RpcV2SyncService;

    move-result-object v4

    new-instance v5, Lcom/alibaba/alimei/restfulapi/v2/parser/ProjectUpdateResponseParser;

    invoke-direct {v5}, Lcom/alibaba/alimei/restfulapi/v2/parser/ProjectUpdateResponseParser;-><init>()V

    invoke-interface {v4, v0, v5, p5}, Lcom/alibaba/alimei/restfulapi/v2/service/RpcV2SyncService;->syncUpdateItems(Ljava/util/List;Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v4

    return-object v4
.end method
