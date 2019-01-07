.class Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$EvaluateResponse;
.super Ljava/lang/Object;
.source "Runtime.java"

# interfaces
.implements Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EvaluateResponse"
.end annotation


# instance fields
.field public exceptionDetails:Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$ExceptionDetails;
    .annotation runtime Lcom/taobao/weex/devtools/json/annotation/JsonProperty;
    .end annotation
.end field

.field public result:Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$RemoteObject;
    .annotation runtime Lcom/taobao/weex/devtools/json/annotation/JsonProperty;
        required = true
    .end annotation
.end field

.field public wasThrown:Z
    .annotation runtime Lcom/taobao/weex/devtools/json/annotation/JsonProperty;
        required = true
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$1;

    .prologue
    .line 491
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$EvaluateResponse;-><init>()V

    return-void
.end method
