.class Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$GetPropertiesResponse;
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
    name = "GetPropertiesResponse"
.end annotation


# instance fields
.field public result:Ljava/util/List;
    .annotation runtime Lcom/taobao/weex/devtools/json/annotation/JsonProperty;
        required = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$PropertyDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$1;

    .prologue
    .line 478
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$GetPropertiesResponse;-><init>()V

    return-void
.end method
