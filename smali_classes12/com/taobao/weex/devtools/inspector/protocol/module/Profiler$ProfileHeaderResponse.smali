.class Lcom/taobao/weex/devtools/inspector/protocol/module/Profiler$ProfileHeaderResponse;
.super Ljava/lang/Object;
.source "Profiler.java"

# interfaces
.implements Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/inspector/protocol/module/Profiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProfileHeaderResponse"
.end annotation


# instance fields
.field public headers:Ljava/util/List;
    .annotation runtime Lcom/taobao/weex/devtools/json/annotation/JsonProperty;
        required = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/taobao/weex/devtools/inspector/protocol/module/Profiler$ProfileHeader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/weex/devtools/inspector/protocol/module/Profiler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/taobao/weex/devtools/inspector/protocol/module/Profiler$1;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/protocol/module/Profiler$ProfileHeaderResponse;-><init>()V

    return-void
.end method