.class Lcom/alibaba/doraemon/impl/request/SmallFileDLHandler$1;
.super Ljava/lang/Object;
.source "SmallFileDLHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/request/SmallFileDLHandler;->finishSegment(Lcom/alibaba/doraemon/impl/request/ResponseDelivery;Lcom/alibaba/doraemon/impl/request/VolleyRequest;Lcom/alibaba/doraemon/lwp/LWPFileSegment;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/request/SmallFileDLHandler;

.field final synthetic val$fileSegment:Lcom/alibaba/doraemon/lwp/LWPFileSegment;

.field final synthetic val$inputStream:Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;

.field final synthetic val$request:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

.field final synthetic val$size:I


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/request/SmallFileDLHandler;Lcom/alibaba/doraemon/lwp/LWPFileSegment;Lcom/alibaba/doraemon/impl/request/VolleyRequest;Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/request/SmallFileDLHandler;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/request/SmallFileDLHandler$1;->this$0:Lcom/alibaba/doraemon/impl/request/SmallFileDLHandler;

    iput-object p2, p0, Lcom/alibaba/doraemon/impl/request/SmallFileDLHandler$1;->val$fileSegment:Lcom/alibaba/doraemon/lwp/LWPFileSegment;

    iput-object p3, p0, Lcom/alibaba/doraemon/impl/request/SmallFileDLHandler$1;->val$request:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    iput-object p4, p0, Lcom/alibaba/doraemon/impl/request/SmallFileDLHandler$1;->val$inputStream:Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;

    iput p5, p0, Lcom/alibaba/doraemon/impl/request/SmallFileDLHandler$1;->val$size:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 93
    .local v0, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "content-length"

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/request/SmallFileDLHandler$1;->val$fileSegment:Lcom/alibaba/doraemon/lwp/LWPFileSegment;

    invoke-interface {v3}, Lcom/alibaba/doraemon/lwp/LWPFileSegment;->getTotalLength()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/SmallFileDLHandler$1;->this$0:Lcom/alibaba/doraemon/impl/request/SmallFileDLHandler;

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/request/SmallFileDLHandler$1;->val$request:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/impl/request/SmallFileDLHandler;->getCacheClient(Lcom/alibaba/doraemon/impl/request/VolleyRequest;)Lcom/alibaba/doraemon/request/CacheClient;

    move-result-object v1

    .line 95
    .local v1, "cacheClient":Lcom/alibaba/doraemon/request/CacheClient;
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/SmallFileDLHandler$1;->val$request:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    invoke-virtual {v2}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getRequest()Lcom/alibaba/doraemon/request/Request;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/request/SmallFileDLHandler$1;->val$inputStream:Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;

    iget v4, p0, Lcom/alibaba/doraemon/impl/request/SmallFileDLHandler$1;->val$size:I

    int-to-long v4, v4

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->map2JSONString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/doraemon/request/CacheClient;->onSaveData(Lcom/alibaba/doraemon/request/Request;Ljava/io/InputStream;J[B)Z

    .line 96
    return-void
.end method
