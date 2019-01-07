.class Lcom/taobao/weex/devtools/inspector/network/utils/ResponseConverter$GeneralResponse;
.super Ljava/lang/Object;
.source "ResponseConverter.java"

# interfaces
.implements Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$TimingInspectorResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/inspector/network/utils/ResponseConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GeneralResponse"
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
    .line 27
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/utils/ResponseConverter$GeneralResponse;->headers:Ljava/util/List;

    .line 28
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/network/utils/ResponseConverter$GeneralResponse;->data:Ljava/util/Map;

    .line 29
    const-string/jumbo v0, "headers"

    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/network/utils/ResponseConverter$GeneralResponse;->headers:Ljava/util/List;

    invoke-static {p1, v0, v1}, Lcom/taobao/weex/devtools/inspector/network/utils/ExtractUtil;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/utils/ResponseConverter$GeneralResponse;->headers:Ljava/util/List;

    .line 30
    return-void
.end method

.method private optValue(Ljava/util/Map;Ljava/lang/String;)D
    .locals 4
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")D"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-wide/16 v2, 0x0

    .line 124
    :try_start_0
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 125
    .local v0, "val":Ljava/lang/Object;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    .end local v0    # "val":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-wide v2

    .line 128
    .restart local v0    # "val":Ljava/lang/Object;
    :cond_1
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 130
    .end local v0    # "val":Ljava/lang/Object;
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public connectionId()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 44
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/utils/ResponseConverter$GeneralResponse;->data:Ljava/util/Map;

    const-string/jumbo v1, "connectionId"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/taobao/weex/devtools/inspector/network/utils/ExtractUtil;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public connectionReused()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 39
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/utils/ResponseConverter$GeneralResponse;->data:Ljava/util/Map;

    const-string/jumbo v1, "connectionReused"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/taobao/weex/devtools/inspector/network/utils/ExtractUtil;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
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
    .line 85
    iget-object v2, p0, Lcom/taobao/weex/devtools/inspector/network/utils/ResponseConverter$GeneralResponse;->headers:Ljava/util/List;

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

    .line 86
    .local v1, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 90
    .end local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public fromDiskCache()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 49
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/utils/ResponseConverter$GeneralResponse;->data:Ljava/util/Map;

    const-string/jumbo v1, "fromDiskCache"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/taobao/weex/devtools/inspector/network/utils/ExtractUtil;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public headerCount()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/utils/ResponseConverter$GeneralResponse;->headers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public headerName(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/utils/ResponseConverter$GeneralResponse;->headers:Ljava/util/List;

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
    .line 79
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/utils/ResponseConverter$GeneralResponse;->headers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public reasonPhrase()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 64
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/utils/ResponseConverter$GeneralResponse;->data:Ljava/util/Map;

    const-string/jumbo v1, "reasonPhrase"

    const-string/jumbo v2, "OK"

    invoke-static {v0, v1, v2}, Lcom/taobao/weex/devtools/inspector/network/utils/ExtractUtil;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public requestId()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 54
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/utils/ResponseConverter$GeneralResponse;->data:Ljava/util/Map;

    const-string/jumbo v1, "requestId"

    const-string/jumbo v2, "-1"

    invoke-static {v0, v1, v2}, Lcom/taobao/weex/devtools/inspector/network/utils/ExtractUtil;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public resourceTiming()Lcom/taobao/weex/devtools/inspector/network/Timing;
    .locals 8
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    const-wide/16 v6, 0x0

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 97
    .local v0, "statisticData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/taobao/weex/devtools/inspector/network/utils/ResponseConverter$GeneralResponse;->data:Ljava/util/Map;

    const-string/jumbo v4, "timing"

    invoke-static {v3, v4, v0}, Lcom/taobao/weex/devtools/inspector/network/utils/ExtractUtil;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "statisticData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    check-cast v0, Ljava/util/Map;

    .line 98
    .restart local v0    # "statisticData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 117
    :goto_0
    return-object v1

    .line 101
    :cond_0
    new-instance v1, Lcom/taobao/weex/devtools/inspector/network/Timing;

    invoke-direct {v1}, Lcom/taobao/weex/devtools/inspector/network/Timing;-><init>()V

    .line 102
    .local v1, "timing":Lcom/taobao/weex/devtools/inspector/network/Timing;
    const-string/jumbo v3, "requestTime"

    invoke-direct {p0, v0, v3}, Lcom/taobao/weex/devtools/inspector/network/utils/ResponseConverter$GeneralResponse;->optValue(Ljava/util/Map;Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, v1, Lcom/taobao/weex/devtools/inspector/network/Timing;->requestTime:D

    .line 103
    iget-wide v4, v1, Lcom/taobao/weex/devtools/inspector/network/Timing;->requestTime:D

    cmpl-double v3, v4, v6

    if-nez v3, :cond_1

    move-object v1, v2

    .line 104
    goto :goto_0

    .line 106
    :cond_1
    const-string/jumbo v2, "sendBeforeTime"

    invoke-direct {p0, v0, v2}, Lcom/taobao/weex/devtools/inspector/network/utils/ResponseConverter$GeneralResponse;->optValue(Ljava/util/Map;Ljava/lang/String;)D

    move-result-wide v2

    const-string/jumbo v4, "waitingTime"

    invoke-direct {p0, v0, v4}, Lcom/taobao/weex/devtools/inspector/network/utils/ResponseConverter$GeneralResponse;->optValue(Ljava/util/Map;Ljava/lang/String;)D

    move-result-wide v4

    add-double/2addr v2, v4

    iput-wide v2, v1, Lcom/taobao/weex/devtools/inspector/network/Timing;->proxyStart:D

    .line 107
    iget-wide v2, v1, Lcom/taobao/weex/devtools/inspector/network/Timing;->proxyStart:D

    add-double/2addr v2, v6

    iput-wide v2, v1, Lcom/taobao/weex/devtools/inspector/network/Timing;->proxyEnd:D

    .line 108
    iget-wide v2, v1, Lcom/taobao/weex/devtools/inspector/network/Timing;->proxyEnd:D

    add-double/2addr v2, v6

    iput-wide v2, v1, Lcom/taobao/weex/devtools/inspector/network/Timing;->dnsStart:D

    .line 109
    iget-wide v2, v1, Lcom/taobao/weex/devtools/inspector/network/Timing;->dnsStart:D

    add-double/2addr v2, v6

    iput-wide v2, v1, Lcom/taobao/weex/devtools/inspector/network/Timing;->dnsEnd:D

    .line 110
    iget-wide v2, v1, Lcom/taobao/weex/devtools/inspector/network/Timing;->dnsEnd:D

    add-double/2addr v2, v6

    iput-wide v2, v1, Lcom/taobao/weex/devtools/inspector/network/Timing;->connectStart:D

    .line 111
    iget-wide v2, v1, Lcom/taobao/weex/devtools/inspector/network/Timing;->connectStart:D

    add-double/2addr v2, v6

    iput-wide v2, v1, Lcom/taobao/weex/devtools/inspector/network/Timing;->sslStart:D

    .line 112
    iget-wide v2, v1, Lcom/taobao/weex/devtools/inspector/network/Timing;->sslStart:D

    add-double/2addr v2, v6

    iput-wide v2, v1, Lcom/taobao/weex/devtools/inspector/network/Timing;->sendEnd:D

    .line 113
    iget-wide v2, v1, Lcom/taobao/weex/devtools/inspector/network/Timing;->connectStart:D

    const-string/jumbo v4, "firstDataTime"

    invoke-direct {p0, v0, v4}, Lcom/taobao/weex/devtools/inspector/network/utils/ResponseConverter$GeneralResponse;->optValue(Ljava/util/Map;Ljava/lang/String;)D

    move-result-wide v4

    add-double/2addr v2, v4

    iput-wide v2, v1, Lcom/taobao/weex/devtools/inspector/network/Timing;->connectEnd:D

    .line 114
    iget-wide v2, v1, Lcom/taobao/weex/devtools/inspector/network/Timing;->connectEnd:D

    add-double/2addr v2, v6

    iput-wide v2, v1, Lcom/taobao/weex/devtools/inspector/network/Timing;->sendStart:D

    .line 115
    iget-wide v2, v1, Lcom/taobao/weex/devtools/inspector/network/Timing;->sendStart:D

    const-string/jumbo v4, "sendDataTime"

    invoke-direct {p0, v0, v4}, Lcom/taobao/weex/devtools/inspector/network/utils/ResponseConverter$GeneralResponse;->optValue(Ljava/util/Map;Ljava/lang/String;)D

    move-result-wide v4

    add-double/2addr v2, v4

    iput-wide v2, v1, Lcom/taobao/weex/devtools/inspector/network/Timing;->sendEnd:D

    .line 116
    iget-wide v2, v1, Lcom/taobao/weex/devtools/inspector/network/Timing;->sendEnd:D

    const-string/jumbo v4, "serverRT"

    invoke-direct {p0, v0, v4}, Lcom/taobao/weex/devtools/inspector/network/utils/ResponseConverter$GeneralResponse;->optValue(Ljava/util/Map;Ljava/lang/String;)D

    move-result-wide v4

    add-double/2addr v2, v4

    const-string/jumbo v4, "recDataTime"

    invoke-direct {p0, v0, v4}, Lcom/taobao/weex/devtools/inspector/network/utils/ResponseConverter$GeneralResponse;->optValue(Ljava/util/Map;Ljava/lang/String;)D

    move-result-wide v4

    add-double/2addr v2, v4

    iput-wide v2, v1, Lcom/taobao/weex/devtools/inspector/network/Timing;->receiveHeadersEnd:D

    goto :goto_0
.end method

.method public statusCode()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 59
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/utils/ResponseConverter$GeneralResponse;->data:Ljava/util/Map;

    const-string/jumbo v1, "statusCode"

    const/16 v2, 0xc8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/taobao/weex/devtools/inspector/network/utils/ExtractUtil;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public url()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 34
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/utils/ResponseConverter$GeneralResponse;->data:Ljava/util/Map;

    const-string/jumbo v1, "url"

    const-string/jumbo v2, "unknown"

    invoke-static {v0, v1, v2}, Lcom/taobao/weex/devtools/inspector/network/utils/ExtractUtil;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
