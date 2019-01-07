.class public Lcom/alipay/android/app/cctemplate/rpc/TplTransportRpc;
.super Ljava/lang/Object;
.source "TplTransportRpc.java"

# interfaces
.implements Lcom/alipay/android/app/cctemplate/api/ITplTransport;


# instance fields
.field private mRpcService:Lcom/alipay/android/app/cctemplate/rpc/TplRpcService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private buildTpls(Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "tpls":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v6, 0x400

    .line 81
    if-nez p1, :cond_0

    .line 82
    const-string/jumbo v3, ""

    .line 95
    :goto_0
    return-object v3

    .line 85
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .local v1, "traceLog":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 87
    .local v0, "tpl":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "tplId="

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 89
    .local v2, "value":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v6, :cond_1

    .line 90
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 92
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, ",birdParams="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    const-string/jumbo v3, "|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 95
    .end local v0    # "tpl":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "value":Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private fetchTemplates_(Ljava/util/Map;Lcom/alipay/android/app/cctemplate/rpc/TplRpcService;)Ljava/util/List;
    .locals 12
    .param p2, "rpc"    # Lcom/alipay/android/app/cctemplate/rpc/TplRpcService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alipay/android/app/cctemplate/rpc/TplRpcService;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 47
    .local p1, "birdparams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v2, Lcom/alipay/android/app/cctemplate/rpc/model/TemplateReq;

    invoke-direct {v2}, Lcom/alipay/android/app/cctemplate/rpc/model/TemplateReq;-><init>()V

    .line 48
    .local v2, "req":Lcom/alipay/android/app/cctemplate/rpc/model/TemplateReq;
    invoke-static {}, Lcom/alipay/android/app/render/api/CashierRenderFactory;->create()Lcom/alipay/android/app/render/api/ext/BirdNestRender;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->getEngineVersion()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/alipay/android/app/cctemplate/rpc/model/TemplateReq;->tplVersion:Ljava/lang/String;

    .line 49
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v2, Lcom/alipay/android/app/cctemplate/rpc/model/TemplateReq;->templateReqModelList:Ljava/util/List;

    .line 50
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    .line 51
    .local v5, "tplSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 52
    .local v4, "tplReq":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Lcom/alipay/android/app/cctemplate/rpc/model/TemplateReqModel;

    invoke-direct {v1}, Lcom/alipay/android/app/cctemplate/rpc/model/TemplateReqModel;-><init>()V

    .line 53
    .local v1, "model":Lcom/alipay/android/app/cctemplate/rpc/model/TemplateReqModel;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v1, Lcom/alipay/android/app/cctemplate/rpc/model/TemplateReqModel;->tplId:Ljava/lang/String;

    .line 54
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v1, Lcom/alipay/android/app/cctemplate/rpc/model/TemplateReqModel;->birdParams:Ljava/lang/String;

    .line 55
    iget-object v6, v1, Lcom/alipay/android/app/cctemplate/rpc/model/TemplateReqModel;->birdParams:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, v1, Lcom/alipay/android/app/cctemplate/rpc/model/TemplateReqModel;->tplId:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, v1, Lcom/alipay/android/app/cctemplate/rpc/model/TemplateReqModel;->birdParams:Ljava/lang/String;

    iget-object v8, v1, Lcom/alipay/android/app/cctemplate/rpc/model/TemplateReqModel;->tplId:Ljava/lang/String;

    .line 56
    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 57
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v6

    const-string/jumbo v8, "template"

    const-string/jumbo v9, "TplRpcQueryTemplateBpErr"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "tplId:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v1, Lcom/alipay/android/app/cctemplate/rpc/model/TemplateReqModel;->tplId:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ",birdParams:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lcom/alipay/android/app/cctemplate/rpc/model/TemplateReqModel;->birdParams:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v8, v9, v10}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_0
    iget-object v6, v2, Lcom/alipay/android/app/cctemplate/rpc/model/TemplateReq;->templateReqModelList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    .end local v1    # "model":Lcom/alipay/android/app/cctemplate/rpc/model/TemplateReqModel;
    .end local v2    # "req":Lcom/alipay/android/app/cctemplate/rpc/model/TemplateReq;
    .end local v4    # "tplReq":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "tplSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v6

    const-string/jumbo v7, "template"

    const-string/jumbo v8, "TplRpcQueryTemplateEx"

    invoke-virtual {v6, v7, v8, v0}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    const/4 v6, 0x0

    :goto_2
    return-object v6

    .line 62
    .restart local v2    # "req":Lcom/alipay/android/app/cctemplate/rpc/model/TemplateReq;
    .restart local v5    # "tplSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_1
    :try_start_1
    invoke-interface {p2, v2}, Lcom/alipay/android/app/cctemplate/rpc/TplRpcService;->queryTemplate(Lcom/alipay/android/app/cctemplate/rpc/model/TemplateReq;)Lcom/alipay/android/app/cctemplate/rpc/model/TemplateRes;

    move-result-object v3

    .line 63
    .local v3, "res":Lcom/alipay/android/app/cctemplate/rpc/model/TemplateRes;
    iget-boolean v6, v3, Lcom/alipay/android/app/cctemplate/rpc/model/TemplateRes;->success:Z

    if-eqz v6, :cond_3

    .line 64
    iget-object v6, v3, Lcom/alipay/android/app/cctemplate/rpc/model/TemplateRes;->templateJsonList:Ljava/util/List;

    if-eqz v6, :cond_2

    iget-object v6, v3, Lcom/alipay/android/app/cctemplate/rpc/model/TemplateRes;->templateJsonList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 65
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v6

    const-string/jumbo v7, "TemplateTransportRpc::fetchTemplates_"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "templateJsonList size:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v3, Lcom/alipay/android/app/cctemplate/rpc/model/TemplateRes;->templateJsonList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v6, v3, Lcom/alipay/android/app/cctemplate/rpc/model/TemplateRes;->templateJsonList:Ljava/util/List;

    goto :goto_2

    .line 68
    :cond_2
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v6

    const-string/jumbo v7, "template"

    const-string/jumbo v8, "TplRpcQueryTemplateNull"

    invoke-direct {p0, p1}, Lcom/alipay/android/app/cctemplate/rpc/TplTransportRpc;->buildTpls(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 71
    :cond_3
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v6

    const-string/jumbo v7, "template"

    const-string/jumbo v8, "TplRpcQueryTemplateFail"

    invoke-direct {p0, p1}, Lcom/alipay/android/app/cctemplate/rpc/TplTransportRpc;->buildTpls(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private initializeRpcService()V
    .locals 6

    .prologue
    .line 35
    iget-object v1, p0, Lcom/alipay/android/app/cctemplate/rpc/TplTransportRpc;->mRpcService:Lcom/alipay/android/app/cctemplate/rpc/TplRpcService;

    if-nez v1, :cond_0

    .line 36
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v1

    const-string/jumbo v2, "TemplateTransportRpc::initializeRpcService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "rpc service init. start:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lcom/alipay/mobile/framework/b;->a()Lcom/alipay/mobile/framework/b;

    .line 38
    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 39
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/framework/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 40
    .local v0, "rpcService":Lcom/alipay/mobile/framework/service/common/RpcService;
    const-class v1, Lcom/alipay/android/app/cctemplate/rpc/TplRpcService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/app/cctemplate/rpc/TplRpcService;

    iput-object v1, p0, Lcom/alipay/android/app/cctemplate/rpc/TplTransportRpc;->mRpcService:Lcom/alipay/android/app/cctemplate/rpc/TplRpcService;

    .line 41
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v1

    const-string/jumbo v2, "TemplateTransportRpc::initializeRpcService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "rpc service init. end:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .end local v0    # "rpcService":Lcom/alipay/mobile/framework/service/common/RpcService;
    :cond_0
    return-void
.end method

.method private querySyncTpls_(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "birdParams"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 109
    new-instance v0, Lcom/alipay/mobiletms/common/service/facade/rpc/pb/Request;

    invoke-direct {v0}, Lcom/alipay/mobiletms/common/service/facade/rpc/pb/Request;-><init>()V

    .line 110
    .local v0, "req":Lcom/alipay/mobiletms/common/service/facade/rpc/pb/Request;
    iput-object p1, v0, Lcom/alipay/mobiletms/common/service/facade/rpc/pb/Request;->birdParams:Ljava/lang/String;

    .line 111
    iget-object v2, p0, Lcom/alipay/android/app/cctemplate/rpc/TplTransportRpc;->mRpcService:Lcom/alipay/android/app/cctemplate/rpc/TplRpcService;

    invoke-interface {v2, v0}, Lcom/alipay/android/app/cctemplate/rpc/TplRpcService;->querySyncTpls(Lcom/alipay/mobiletms/common/service/facade/rpc/pb/Request;)Lcom/alipay/mobiletms/common/service/facade/rpc/pb/Response;

    move-result-object v1

    .line 112
    .local v1, "resp":Lcom/alipay/mobiletms/common/service/facade/rpc/pb/Response;
    if-eqz v1, :cond_0

    .line 113
    iget-object v2, v1, Lcom/alipay/mobiletms/common/service/facade/rpc/pb/Response;->templateJsonList:Ljava/util/List;

    .line 115
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public fetchTemplates(Ljava/util/Map;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 26
    .local p1, "birdResponse":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/alipay/android/app/cctemplate/rpc/TplTransportRpc;->initializeRpcService()V

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 28
    .local v0, "start":Ljava/lang/Long;
    iget-object v2, p0, Lcom/alipay/android/app/cctemplate/rpc/TplTransportRpc;->mRpcService:Lcom/alipay/android/app/cctemplate/rpc/TplRpcService;

    invoke-direct {p0, p1, v2}, Lcom/alipay/android/app/cctemplate/rpc/TplTransportRpc;->fetchTemplates_(Ljava/util/Map;Lcom/alipay/android/app/cctemplate/rpc/TplRpcService;)Ljava/util/List;

    move-result-object v1

    .line 29
    .local v1, "templates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v2

    const-string/jumbo v3, "template"

    const-string/jumbo v4, "TplRpcQueryTemplateTime"

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 29
    invoke-virtual {v2, v3, v4, v5}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->tracePerf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 31
    return-object v1
.end method

.method public querySyncTpls(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p1, "birdParams"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/alipay/android/app/cctemplate/rpc/TplTransportRpc;->initializeRpcService()V

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 102
    .local v0, "start":Ljava/lang/Long;
    invoke-direct {p0, p1}, Lcom/alipay/android/app/cctemplate/rpc/TplTransportRpc;->querySyncTpls_(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 103
    .local v1, "templates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v2

    const-string/jumbo v3, "template"

    const-string/jumbo v4, "TplRpcSyncTplsTime"

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 103
    invoke-virtual {v2, v3, v4, v5}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->tracePerf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 105
    return-object v1
.end method
