.class Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$GetMatchedStylesForNodeResult;
.super Ljava/lang/Object;
.source "CSS.java"

# interfaces
.implements Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GetMatchedStylesForNodeResult"
.end annotation


# instance fields
.field public inherited:Ljava/util/List;
    .annotation runtime Lcom/taobao/weex/devtools/json/annotation/JsonProperty;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$InheritedStyleEntry;",
            ">;"
        }
    .end annotation
.end field

.field public matchedCSSRules:Ljava/util/List;
    .annotation runtime Lcom/taobao/weex/devtools/json/annotation/JsonProperty;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$RuleMatch;",
            ">;"
        }
    .end annotation
.end field

.field public pseudoElements:Ljava/util/List;
    .annotation runtime Lcom/taobao/weex/devtools/json/annotation/JsonProperty;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$PseudoIdMatches;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$1;

    .prologue
    .line 368
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$GetMatchedStylesForNodeResult;-><init>()V

    return-void
.end method
