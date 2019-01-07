.class public Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcError;
.super Ljava/lang/Object;
.source "JsonRpcError.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UsingDefaultJsonDeserializer",
        "EmptyJsonPropertyUse"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcError$ErrorCode;
    }
.end annotation


# instance fields
.field public code:Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcError$ErrorCode;
    .annotation runtime Lcom/taobao/weex/devtools/json/annotation/JsonProperty;
        required = true
    .end annotation
.end field

.field public data:Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/json/annotation/JsonProperty;
    .end annotation
.end field

.field public message:Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/devtools/json/annotation/JsonProperty;
        required = true
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

.method public constructor <init>(Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcError$ErrorCode;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "code"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcError$ErrorCode;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "data"    # Lorg/json/JSONObject;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcError;->code:Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcError$ErrorCode;

    .line 37
    iput-object p2, p0, Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcError;->message:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcError;->data:Lorg/json/JSONObject;

    .line 39
    return-void
.end method
