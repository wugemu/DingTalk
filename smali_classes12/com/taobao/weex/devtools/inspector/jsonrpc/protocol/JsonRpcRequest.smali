.class public Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcRequest;
.super Ljava/lang/Object;
.source "JsonRpcRequest.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UsingDefaultJsonDeserializer",
        "EmptyJsonPropertyUse"
    }
.end annotation


# instance fields
.field public id:Ljava/lang/Long;
    .annotation runtime Lcom/taobao/weex/devtools/json/annotation/JsonProperty;
    .end annotation
.end field

.field public method:Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/devtools/json/annotation/JsonProperty;
        required = true
    .end annotation
.end field

.field public params:Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/json/annotation/JsonProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "params"    # Lorg/json/JSONObject;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcRequest;->id:Ljava/lang/Long;

    .line 37
    iput-object p2, p0, Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcRequest;->method:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcRequest;->params:Lorg/json/JSONObject;

    .line 39
    return-void
.end method
