.class Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$CSSProperty;
.super Ljava/lang/Object;
.source "CSS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CSSProperty"
.end annotation


# instance fields
.field public disabled:Ljava/lang/Boolean;
    .annotation runtime Lcom/taobao/weex/devtools/json/annotation/JsonProperty;
    .end annotation
.end field

.field public implicit:Ljava/lang/Boolean;
    .annotation runtime Lcom/taobao/weex/devtools/json/annotation/JsonProperty;
    .end annotation
.end field

.field public important:Ljava/lang/Boolean;
    .annotation runtime Lcom/taobao/weex/devtools/json/annotation/JsonProperty;
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/devtools/json/annotation/JsonProperty;
        required = true
    .end annotation
.end field

.field public parsedOk:Ljava/lang/Boolean;
    .annotation runtime Lcom/taobao/weex/devtools/json/annotation/JsonProperty;
    .end annotation
.end field

.field public range:Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$SourceRange;
    .annotation runtime Lcom/taobao/weex/devtools/json/annotation/JsonProperty;
    .end annotation
.end field

.field public text:Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/devtools/json/annotation/JsonProperty;
    .end annotation
.end field

.field public value:Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/devtools/json/annotation/JsonProperty;
        required = true
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$1;

    .prologue
    .line 301
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$CSSProperty;-><init>()V

    return-void
.end method