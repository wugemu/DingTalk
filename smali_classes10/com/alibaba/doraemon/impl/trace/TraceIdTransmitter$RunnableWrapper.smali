.class public Lcom/alibaba/doraemon/impl/trace/TraceIdTransmitter$RunnableWrapper;
.super Ljava/lang/Object;
.source "TraceIdTransmitter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/trace/TraceIdTransmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RunnableWrapper"
.end annotation


# instance fields
.field private mRealRunnable:Ljava/lang/Runnable;

.field private mTraceId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/trace/TraceIdTransmitter$RunnableWrapper;->mRealRunnable:Ljava/lang/Runnable;

    .line 129
    invoke-static {}, Lcom/alibaba/doraemon/impl/trace/TraceId;->getThreadTraceId()Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, "traceId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 131
    iput-object v1, p0, Lcom/alibaba/doraemon/impl/trace/TraceIdTransmitter$RunnableWrapper;->mTraceId:Ljava/lang/String;

    .line 132
    const-string/jumbo v2, "r"

    invoke-static {v1, v2}, Lcom/alibaba/doraemon/impl/trace/TraceId;->getTraceIdRef(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/impl/trace/TraceIdReference;

    move-result-object v0

    .line 133
    .local v0, "ref":Lcom/alibaba/doraemon/impl/trace/TraceIdReference;
    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/trace/TraceIdReference;->incTransferRef()V

    .line 135
    .end local v0    # "ref":Lcom/alibaba/doraemon/impl/trace/TraceIdReference;
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 139
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/trace/TraceIdTransmitter$RunnableWrapper;->mRealRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 140
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/trace/TraceIdTransmitter$RunnableWrapper;->mTraceId:Ljava/lang/String;

    const-string/jumbo v2, "r"

    invoke-static {v1, v2}, Lcom/alibaba/doraemon/impl/trace/TraceId;->getTraceIdRef(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/impl/trace/TraceIdReference;

    move-result-object v0

    .line 141
    .local v0, "ref":Lcom/alibaba/doraemon/impl/trace/TraceIdReference;
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/trace/TraceIdTransmitter$RunnableWrapper;->mTraceId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 142
    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/trace/TraceIdReference;->decTransferRef()V

    .line 144
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/trace/TraceIdReference;->getTraceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/trace/TraceId;->setThreadTraceId(Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/trace/TraceIdTransmitter$RunnableWrapper;->mRealRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 146
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/trace/TraceId;->setThreadTraceId(Ljava/lang/String;)V

    .line 148
    .end local v0    # "ref":Lcom/alibaba/doraemon/impl/trace/TraceIdReference;
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/trace/TraceIdTransmitter$RunnableWrapper;->mRealRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
