.class Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$RuleMatch;
.super Ljava/lang/Object;
.source "CSS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RuleMatch"
.end annotation


# instance fields
.field public matchingSelectors:Ljava/util/List;
    .annotation runtime Lcom/taobao/weex/devtools/json/annotation/JsonProperty;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public rule:Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$CSSRule;
    .annotation runtime Lcom/taobao/weex/devtools/json/annotation/JsonProperty;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$1;

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$RuleMatch;-><init>()V

    return-void
.end method