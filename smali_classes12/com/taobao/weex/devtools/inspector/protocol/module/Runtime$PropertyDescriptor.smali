.class Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$PropertyDescriptor;
.super Ljava/lang/Object;
.source "Runtime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PropertyDescriptor"
.end annotation


# instance fields
.field public final configurable:Z
    .annotation runtime Lcom/taobao/weex/devtools/json/annotation/JsonProperty;
        required = true
    .end annotation
.end field

.field public final enumerable:Z
    .annotation runtime Lcom/taobao/weex/devtools/json/annotation/JsonProperty;
        required = true
    .end annotation
.end field

.field public final isOwn:Z
    .annotation runtime Lcom/taobao/weex/devtools/json/annotation/JsonProperty;
        required = true
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/devtools/json/annotation/JsonProperty;
        required = true
    .end annotation
.end field

.field public value:Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$RemoteObject;
    .annotation runtime Lcom/taobao/weex/devtools/json/annotation/JsonProperty;
        required = true
    .end annotation
.end field

.field public final writable:Z
    .annotation runtime Lcom/taobao/weex/devtools/json/annotation/JsonProperty;
        required = true
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 534
    iput-boolean v1, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$PropertyDescriptor;->isOwn:Z

    .line 537
    iput-boolean v0, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$PropertyDescriptor;->configurable:Z

    .line 540
    iput-boolean v1, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$PropertyDescriptor;->enumerable:Z

    .line 543
    iput-boolean v0, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$PropertyDescriptor;->writable:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$1;

    .prologue
    .line 527
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$PropertyDescriptor;-><init>()V

    return-void
.end method
