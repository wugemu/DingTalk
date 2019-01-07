.class Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ExecutionContextCreatedParams;
.super Ljava/lang/Object;
.source "Page.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/inspector/protocol/module/Page;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ExecutionContextCreatedParams"
.end annotation


# instance fields
.field public context:Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ExecutionContextDescription;
    .annotation runtime Lcom/taobao/weex/devtools/json/annotation/JsonProperty;
        required = true
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/weex/devtools/inspector/protocol/module/Page$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/taobao/weex/devtools/inspector/protocol/module/Page$1;

    .prologue
    .line 354
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ExecutionContextCreatedParams;-><init>()V

    return-void
.end method
