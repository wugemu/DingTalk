.class public Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcEvent;
.super Ljava/lang/Object;
.source "JsonRpcEvent.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UsingDefaultJsonDeserializer",
        "EmptyJsonPropertyUse"
    }
.end annotation


# instance fields
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
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "params"    # Lorg/json/JSONObject;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcEvent;->method:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcEvent;->params:Lorg/json/JSONObject;

    .line 34
    return-void
.end method
