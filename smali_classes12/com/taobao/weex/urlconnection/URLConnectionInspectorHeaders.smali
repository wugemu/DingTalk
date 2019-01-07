.class Lcom/taobao/weex/urlconnection/URLConnectionInspectorHeaders;
.super Ljava/lang/Object;
.source "URLConnectionInspectorHeaders.java"

# interfaces
.implements Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorHeaders;


# instance fields
.field private final mHeaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
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
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p1, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/taobao/weex/urlconnection/URLConnectionInspectorHeaders;->mHeaders:Ljava/util/ArrayList;

    .line 23
    return-void
.end method


# virtual methods
.method public firstHeaderValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/taobao/weex/urlconnection/URLConnectionInspectorHeaders;->headerCount()I

    move-result v0

    .line 43
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 44
    invoke-virtual {p0, v1}, Lcom/taobao/weex/urlconnection/URLConnectionInspectorHeaders;->headerName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    invoke-virtual {p0, v1}, Lcom/taobao/weex/urlconnection/URLConnectionInspectorHeaders;->headerValue(I)Ljava/lang/String;

    move-result-object v2

    .line 48
    :goto_1
    return-object v2

    .line 43
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 48
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public headerCount()I
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/taobao/weex/urlconnection/URLConnectionInspectorHeaders;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public headerName(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 32
    iget-object v0, p0, Lcom/taobao/weex/urlconnection/URLConnectionInspectorHeaders;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

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
    .line 37
    iget-object v0, p0, Lcom/taobao/weex/urlconnection/URLConnectionInspectorHeaders;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
