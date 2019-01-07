.class public Lcom/alibaba/alimei/restfulapi/utils/ARFStatUtils;
.super Ljava/lang/Object;
.source "ARFStatUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static register()V
    .locals 4

    .prologue
    const/4 v2, 0x5

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    .local v0, "dimenList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    .local v1, "mearsureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v2, "path"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    const-string/jumbo v2, "errCode"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    const-string/jumbo v2, "errMsg"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    const-string/jumbo v2, "content_length"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    const-string/jumbo v2, "rpc_cost"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    const-string/jumbo v2, "handle_cost"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    const-string/jumbo v2, "success_count"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    const-string/jumbo v2, "CMail"

    const-string/jumbo v3, "OKHttp"

    invoke-static {v2, v3, v0, v1}, Lcom/alibaba/alimei/restfulapi/tracker/RpcTrackerWriter;->registerMonitorPointDynamic(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 29
    const-string/jumbo v2, "CMail"

    const-string/jumbo v3, "httpClient"

    invoke-static {v2, v3, v0, v1}, Lcom/alibaba/alimei/restfulapi/tracker/RpcTrackerWriter;->registerMonitorPointDynamic(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 30
    const-string/jumbo v2, "CMail"

    const-string/jumbo v3, "lwp"

    invoke-static {v2, v3, v0, v1}, Lcom/alibaba/alimei/restfulapi/tracker/RpcTrackerWriter;->registerMonitorPointDynamic(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 31
    return-void
.end method
