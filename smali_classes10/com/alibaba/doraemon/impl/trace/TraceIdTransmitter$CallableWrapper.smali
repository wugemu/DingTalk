.class public Lcom/alibaba/doraemon/impl/trace/TraceIdTransmitter$CallableWrapper;
.super Ljava/lang/Object;
.source "TraceIdTransmitter.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/trace/TraceIdTransmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallableWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private mRealCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<*>;"
        }
    .end annotation
.end field

.field private mTraceId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/trace/TraceIdTransmitter$CallableWrapper;->mRealCallable:Ljava/util/concurrent/Callable;

    .line 161
    invoke-static {}, Lcom/alibaba/doraemon/impl/trace/TraceId;->getThreadTraceId()Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "traceId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 163
    iput-object v1, p0, Lcom/alibaba/doraemon/impl/trace/TraceIdTransmitter$CallableWrapper;->mTraceId:Ljava/lang/String;

    .line 164
    const-string/jumbo v2, "r"

    invoke-static {v1, v2}, Lcom/alibaba/doraemon/impl/trace/TraceId;->getTraceIdRef(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/impl/trace/TraceIdReference;

    move-result-object v0

    .line 165
    .local v0, "ref":Lcom/alibaba/doraemon/impl/trace/TraceIdReference;
    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/trace/TraceIdReference;->incTransferRef()V

    .line 167
    .end local v0    # "ref":Lcom/alibaba/doraemon/impl/trace/TraceIdReference;
    :cond_0
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 171
    const/4 v1, 0x0

    .line 172
    .local v1, "ret":Ljava/lang/Object;
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/trace/TraceIdTransmitter$CallableWrapper;->mRealCallable:Ljava/util/concurrent/Callable;

    if-eqz v2, :cond_1

    .line 173
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/trace/TraceIdTransmitter$CallableWrapper;->mTraceId:Ljava/lang/String;

    const-string/jumbo v3, "r"

    invoke-static {v2, v3}, Lcom/alibaba/doraemon/impl/trace/TraceId;->getTraceIdRef(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/impl/trace/TraceIdReference;

    move-result-object v0

    .line 174
    .local v0, "ref":Lcom/alibaba/doraemon/impl/trace/TraceIdReference;
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/trace/TraceIdTransmitter$CallableWrapper;->mTraceId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 175
    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/trace/TraceIdReference;->decTransferRef()V

    .line 177
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/trace/TraceIdReference;->getTraceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/trace/TraceId;->setThreadTraceId(Ljava/lang/String;)V

    .line 178
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/trace/TraceIdTransmitter$CallableWrapper;->mRealCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    .line 179
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/trace/TraceId;->setThreadTraceId(Ljava/lang/String;)V

    .line 181
    .end local v0    # "ref":Lcom/alibaba/doraemon/impl/trace/TraceIdReference;
    .end local v1    # "ret":Ljava/lang/Object;
    :cond_1
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/trace/TraceIdTransmitter$CallableWrapper;->mRealCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
