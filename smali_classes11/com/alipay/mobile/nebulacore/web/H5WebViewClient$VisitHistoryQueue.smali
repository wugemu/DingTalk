.class Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$VisitHistoryQueue;
.super Ljava/util/LinkedList;
.source "H5WebViewClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VisitHistoryQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedList",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private mKeepSize:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "keepSize"    # I

    .prologue
    .line 1746
    .local p0, "this":Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$VisitHistoryQueue;, "Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$VisitHistoryQueue<TE;>;"
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    .line 1743
    const/4 v0, 0x5

    iput v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$VisitHistoryQueue;->mKeepSize:I

    .line 1747
    iput p1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$VisitHistoryQueue;->mKeepSize:I

    .line 1748
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1752
    .local p0, "this":Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$VisitHistoryQueue;, "Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$VisitHistoryQueue<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    invoke-super {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 1753
    .local v0, "result":Z
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$VisitHistoryQueue;->size()I

    move-result v1

    iget v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$VisitHistoryQueue;->mKeepSize:I

    if-le v1, v2, :cond_0

    .line 1754
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$VisitHistoryQueue;->removeFirst()Ljava/lang/Object;

    .line 1756
    :cond_0
    return v0
.end method
