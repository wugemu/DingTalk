.class Lcom/taobao/weex/devtools/inspector/network/utils/RequestConverter$GeneralRequest;
.super Ljava/lang/Object;
.source "RequestConverter.java"

# interfaces
.implements Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/inspector/network/utils/RequestConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GeneralRequest"
.end annotation


# instance fields
.field private data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field headers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/utils/RequestConverter$GeneralRequest;->headers:Ljava/util/List;

    .line 27
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/network/utils/RequestConverter$GeneralRequest;->data:Ljava/util/Map;

    .line 28
    const-string/jumbo v0, "headers"

    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/network/utils/RequestConverter$GeneralRequest;->headers:Ljava/util/List;

    invoke-static {p1, v0, v1}, Lcom/taobao/weex/devtools/inspector/network/utils/ExtractUtil;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/utils/RequestConverter$GeneralRequest;->headers:Ljava/util/List;

    .line 29
    return-void
.end method


# virtual methods
.method public body()[B
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 50
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/network/utils/RequestConverter$GeneralRequest;->data:Ljava/util/Map;

    const-string/jumbo v2, "body"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 52
    .local v0, "body":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "byte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    check-cast v0, [B

    .end local v0    # "body":Ljava/lang/Object;
    check-cast v0, [B

    .line 60
    :goto_0
    return-object v0

    .line 55
    .restart local v0    # "body":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 56
    check-cast v0, Ljava/lang/String;

    .end local v0    # "body":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0

    .line 60
    .restart local v0    # "body":Ljava/lang/Object;
    :cond_1
    const/4 v1, 0x0

    new-array v0, v1, [B

    goto :goto_0
.end method

.method public firstHeaderValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 91
    iget-object v2, p0, Lcom/taobao/weex/devtools/inspector/network/utils/RequestConverter$GeneralRequest;->headers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 92
    .local v1, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 96
    .end local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public friendlyName()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 70
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/utils/RequestConverter$GeneralRequest;->data:Ljava/util/Map;

    const-string/jumbo v1, "friendlyName"

    const-string/jumbo v2, "None"

    invoke-static {v0, v1, v2}, Lcom/taobao/weex/devtools/inspector/network/utils/ExtractUtil;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public friendlyNameExtra()Ljava/lang/Integer;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 34
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/utils/RequestConverter$GeneralRequest;->data:Ljava/util/Map;

    const-string/jumbo v1, "friendlyNameExtra"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/taobao/weex/devtools/inspector/network/utils/ExtractUtil;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public headerCount()I
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/utils/RequestConverter$GeneralRequest;->headers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public headerName(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/utils/RequestConverter$GeneralRequest;->headers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public headerValue(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 85
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/utils/RequestConverter$GeneralRequest;->headers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public id()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 65
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/utils/RequestConverter$GeneralRequest;->data:Ljava/util/Map;

    const-string/jumbo v1, "requestId"

    const-string/jumbo v2, "-1"

    invoke-static {v0, v1, v2}, Lcom/taobao/weex/devtools/inspector/network/utils/ExtractUtil;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public method()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 44
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/utils/RequestConverter$GeneralRequest;->data:Ljava/util/Map;

    const-string/jumbo v1, "method"

    const-string/jumbo v2, "GET"

    invoke-static {v0, v1, v2}, Lcom/taobao/weex/devtools/inspector/network/utils/ExtractUtil;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public url()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 39
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/utils/RequestConverter$GeneralRequest;->data:Ljava/util/Map;

    const-string/jumbo v1, "url"

    const-string/jumbo v2, "unknown"

    invoke-static {v0, v1, v2}, Lcom/taobao/weex/devtools/inspector/network/utils/ExtractUtil;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
