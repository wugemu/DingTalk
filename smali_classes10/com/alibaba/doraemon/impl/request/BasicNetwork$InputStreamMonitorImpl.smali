.class public Lcom/alibaba/doraemon/impl/request/BasicNetwork$InputStreamMonitorImpl;
.super Ljava/lang/Object;
.source "BasicNetwork.java"

# interfaces
.implements Lcom/alibaba/doraemon/impl/request/InputStreamWrapper$InputStreamMonitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/request/BasicNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputStreamMonitorImpl"
.end annotation


# instance fields
.field private mDownloadSize:I

.field private mReadCount:J

.field private mRequest:Lcom/alibaba/doraemon/impl/request/VolleyRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/doraemon/impl/request/VolleyRequest",
            "<*>;"
        }
    .end annotation
.end field

.field private mTotalCount:J


# direct methods
.method constructor <init>(JJLcom/alibaba/doraemon/impl/request/VolleyRequest;)V
    .locals 1
    .param p1, "readCount"    # J
    .param p3, "totalCount"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcom/alibaba/doraemon/impl/request/VolleyRequest",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 705
    .local p5, "request":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 706
    iput-wide p1, p0, Lcom/alibaba/doraemon/impl/request/BasicNetwork$InputStreamMonitorImpl;->mReadCount:J

    .line 707
    iput-wide p3, p0, Lcom/alibaba/doraemon/impl/request/BasicNetwork$InputStreamMonitorImpl;->mTotalCount:J

    .line 708
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/doraemon/impl/request/BasicNetwork$InputStreamMonitorImpl;->mDownloadSize:I

    .line 709
    iput-object p5, p0, Lcom/alibaba/doraemon/impl/request/BasicNetwork$InputStreamMonitorImpl;->mRequest:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    .line 710
    return-void
.end method


# virtual methods
.method public getDownloadSize()I
    .locals 1

    .prologue
    .line 724
    iget v0, p0, Lcom/alibaba/doraemon/impl/request/BasicNetwork$InputStreamMonitorImpl;->mDownloadSize:I

    return v0
.end method

.method public onReadCount(I)V
    .locals 6
    .param p1, "size"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 714
    if-lez p1, :cond_0

    .line 715
    iget v0, p0, Lcom/alibaba/doraemon/impl/request/BasicNetwork$InputStreamMonitorImpl;->mDownloadSize:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alibaba/doraemon/impl/request/BasicNetwork$InputStreamMonitorImpl;->mDownloadSize:I

    .line 716
    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/request/BasicNetwork$InputStreamMonitorImpl;->mReadCount:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/doraemon/impl/request/BasicNetwork$InputStreamMonitorImpl;->mReadCount:J

    .line 717
    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/request/BasicNetwork$InputStreamMonitorImpl;->mReadCount:J

    iget-wide v2, p0, Lcom/alibaba/doraemon/impl/request/BasicNetwork$InputStreamMonitorImpl;->mTotalCount:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/BasicNetwork$InputStreamMonitorImpl;->mRequest:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    iget-wide v2, p0, Lcom/alibaba/doraemon/impl/request/BasicNetwork$InputStreamMonitorImpl;->mTotalCount:J

    iget-wide v4, p0, Lcom/alibaba/doraemon/impl/request/BasicNetwork$InputStreamMonitorImpl;->mReadCount:J

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->deliverProgress(JJ)V

    .line 721
    :cond_0
    return-void
.end method
