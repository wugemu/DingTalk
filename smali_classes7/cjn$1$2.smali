.class final Lcjn$1$2;
.super Ljava/lang/Object;
.source "DynamicSoManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcjn$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcjn$1;


# direct methods
.method constructor <init>(Lcjn$1;)V
    .locals 0
    .param p1, "this$1"    # Lcjn$1;

    .prologue
    .line 289
    iput-object p1, p0, Lcjn$1$2;->a:Lcjn$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v8, 0x1

    .line 292
    const-string/jumbo v0, "dynamic_so"

    const-string/jumbo v1, "checkDynamicSo"

    const-string/jumbo v2, "start download"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-static {}, Lcjm;->a()Lcjm;

    move-result-object v1

    iget-object v0, p0, Lcjn$1$2;->a:Lcjn$1;

    iget-object v2, v0, Lcjn$1;->a:Lcjl;

    new-instance v3, Lcjn$1$2$1;

    invoke-direct {v3, p0}, Lcjn$1$2$1;-><init>(Lcjn$1$2;)V

    .line 1043
    if-nez v2, :cond_0

    .line 1044
    const-string/jumbo v0, "dynamic_so"

    const-string/jumbo v1, "download"

    const-string/jumbo v2, "dynamicSo is null"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    const/4 v0, 0x0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lcig$j;->dt_dynamic_so_error_msg_params_error:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    :goto_0
    return-void

    .line 1050
    :cond_0
    const-string/jumbo v0, "dynamic_so"

    const-string/jumbo v4, "download"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "start download url:"

    aput-object v7, v5, v6

    .line 2051
    iget-object v6, v2, Lcjl;->c:Ljava/lang/String;

    .line 1050
    aput-object v6, v5, v8

    const/4 v6, 0x2

    const-string/jumbo v7, " path:"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 2063
    iget-object v7, v2, Lcjl;->f:Ljava/lang/String;

    .line 1050
    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string/jumbo v7, " hash:"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    .line 3043
    iget-object v7, v2, Lcjl;->b:Ljava/lang/String;

    .line 1050
    aput-object v7, v5, v6

    invoke-static {v5}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    iget-object v0, v1, Lcjm;->a:Ljava/util/Map;

    .line 3063
    iget-object v4, v2, Lcjl;->f:Ljava/lang/String;

    .line 1051
    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcjm;->a:Ljava/util/Map;

    .line 4063
    iget-object v4, v2, Lcjl;->f:Ljava/lang/String;

    .line 1051
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1052
    const-string/jumbo v0, "dynamic_so"

    const-string/jumbo v4, "download"

    const-string/jumbo v5, "download is doing and add callback to list"

    invoke-static {v0, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    iget-object v0, v1, Lcjm;->a:Ljava/util/Map;

    .line 5063
    iget-object v1, v2, Lcjl;->f:Ljava/lang/String;

    .line 1053
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1055
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1058
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1060
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1062
    iget-object v3, v1, Lcjm;->a:Ljava/util/Map;

    .line 6063
    iget-object v4, v2, Lcjl;->f:Ljava/lang/String;

    .line 1062
    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1063
    const-string/jumbo v0, "REQUEST"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/request/Request;

    .line 7051
    iget-object v3, v2, Lcjl;->c:Ljava/lang/String;

    .line 1064
    invoke-interface {v0, v3}, Lcom/alibaba/doraemon/request/Request;->setRequestUrl(Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    .line 1065
    const-string/jumbo v3, "User-Agent"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->b()Lchy;

    move-result-object v4

    invoke-virtual {v4}, Lchy;->getWKUserAgent()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/alibaba/doraemon/request/Request;->setRequestParam(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    .line 1066
    const-class v3, Lcjm;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/alibaba/doraemon/request/Request;->setPerfTag(Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    .line 1067
    invoke-interface {v0, v8}, Lcom/alibaba/doraemon/request/Request;->setCacheable(Z)Lcom/alibaba/doraemon/request/Request;

    .line 1068
    invoke-interface {v0}, Lcom/alibaba/doraemon/request/Request;->markHugeDownload()Lcom/alibaba/doraemon/request/Request;

    .line 1069
    new-instance v3, Lcjm$1;

    invoke-direct {v3, v1, v2}, Lcjm$1;-><init>(Lcjm;Lcjl;)V

    invoke-interface {v0, v3}, Lcom/alibaba/doraemon/request/Request;->setResponseReceiver(Lcom/alibaba/doraemon/request/ResponseReceiver;)Lcom/alibaba/doraemon/request/Request;

    .line 1165
    const-string/jumbo v1, "dynamic_so"

    const-string/jumbo v2, "download"

    const-string/jumbo v3, "start download request"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    invoke-interface {v0}, Lcom/alibaba/doraemon/request/Request;->start()V

    goto/16 :goto_0
.end method
