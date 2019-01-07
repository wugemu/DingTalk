.class public Lcom/taobao/weex/devtools/inspector/jsonrpc/PendingRequest;
.super Ljava/lang/Object;
.source "PendingRequest.java"


# instance fields
.field public final callback:Lcom/taobao/weex/devtools/inspector/jsonrpc/PendingRequestCallback;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final requestId:J


# direct methods
.method public constructor <init>(JLcom/taobao/weex/devtools/inspector/jsonrpc/PendingRequestCallback;)V
    .locals 1
    .param p1, "requestId"    # J
    .param p3, "callback"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/PendingRequestCallback;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-wide p1, p0, Lcom/taobao/weex/devtools/inspector/jsonrpc/PendingRequest;->requestId:J

    .line 26
    iput-object p3, p0, Lcom/taobao/weex/devtools/inspector/jsonrpc/PendingRequest;->callback:Lcom/taobao/weex/devtools/inspector/jsonrpc/PendingRequestCallback;

    .line 27
    return-void
.end method
