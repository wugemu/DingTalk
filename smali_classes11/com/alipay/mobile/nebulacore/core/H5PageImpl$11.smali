.class Lcom/alipay/mobile/nebulacore/core/H5PageImpl$11;
.super Ljava/lang/Object;
.source "H5PageImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->logNetworkUnFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

.field final synthetic val$networkData:Lcom/alipay/mobile/nebula/log/H5LogData;

.field final synthetic val$resourceInfoMap:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;Ljava/util/Map;Lcom/alipay/mobile/nebula/log/H5LogData;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .prologue
    .line 1055
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$11;->this$0:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$11;->val$resourceInfoMap:Ljava/util/Map;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$11;->val$networkData:Lcom/alipay/mobile/nebula/log/H5LogData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1058
    const-string/jumbo v3, ""

    .line 1059
    .local v3, "requestInfo":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1060
    .local v0, "currentTime":J
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$11;->val$resourceInfoMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1061
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alipay/mobile/nebulacore/web/ResourceInfo;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1062
    .local v4, "url":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;

    .line 1063
    .local v5, "value":Lcom/alipay/mobile/nebulacore/web/ResourceInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->purifyUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v5, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;->mStart:J

    sub-long v8, v0, v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1064
    goto :goto_0

    .line 1066
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alipay/mobile/nebulacore/web/ResourceInfo;>;"
    .end local v4    # "url":Ljava/lang/String;
    .end local v5    # "value":Lcom/alipay/mobile/nebulacore/web/ResourceInfo;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    const-string/jumbo v6, "|"

    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1067
    const/4 v6, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1069
    :cond_1
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$11;->val$networkData:Lcom/alipay/mobile/nebula/log/H5LogData;

    invoke-virtual {v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v6

    const-string/jumbo v7, "unfinishedUrls"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "["

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 1070
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$11;->val$networkData:Lcom/alipay/mobile/nebula/log/H5LogData;

    invoke-static {v6}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 1071
    return-void
.end method
