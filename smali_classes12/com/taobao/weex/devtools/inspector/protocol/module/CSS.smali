.class public Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;
.super Ljava/lang/Object;
.source "CSS.java"

# interfaces
.implements Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsDomain;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$GetMatchedStylesForNodeResult;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$GetMatchedStylesForNodeRequest;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$GetComputedStyleForNodeResult;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$InheritedStyleEntry;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$GetComputedStyleForNodeRequest;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$PseudoIdMatches;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$CSSProperty;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$ShorthandEntry;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$CSSStyle;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$CSSRule;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$Selector;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$SourceRange;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$SelectorList;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$RuleMatch;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$CSSComputedStyleProperty;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$PeerManagerListener;
    }
.end annotation


# static fields
.field private static final sProperties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDocument:Lcom/taobao/weex/devtools/inspector/elements/Document;

.field private final mObjectMapper:Lcom/taobao/weex/devtools/json/ObjectMapper;

.field private final mPeerManager:Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 103
    sput-object v0, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;->sProperties:Ljava/util/HashMap;

    const-string/jumbo v1, "width"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;->sProperties:Ljava/util/HashMap;

    const-string/jumbo v1, "height"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;->sProperties:Ljava/util/HashMap;

    const-string/jumbo v1, "padding-left"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;->sProperties:Ljava/util/HashMap;

    const-string/jumbo v1, "padding-top"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;->sProperties:Ljava/util/HashMap;

    const-string/jumbo v1, "padding-right"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;->sProperties:Ljava/util/HashMap;

    const-string/jumbo v1, "padding-bottom"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;->sProperties:Ljava/util/HashMap;

    const-string/jumbo v1, "border-left-width"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;->sProperties:Ljava/util/HashMap;

    const-string/jumbo v1, "border-top-width"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;->sProperties:Ljava/util/HashMap;

    const-string/jumbo v1, "border-right-width"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;->sProperties:Ljava/util/HashMap;

    const-string/jumbo v1, "border-bottom-width"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;->sProperties:Ljava/util/HashMap;

    const-string/jumbo v1, "margin-left"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;->sProperties:Ljava/util/HashMap;

    const-string/jumbo v1, "margin-top"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;->sProperties:Ljava/util/HashMap;

    const-string/jumbo v1, "margin-right"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;->sProperties:Ljava/util/HashMap;

    const-string/jumbo v1, "margin-bottom"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;->sProperties:Ljava/util/HashMap;

    const-string/jumbo v1, "left"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;->sProperties:Ljava/util/HashMap;

    const-string/jumbo v1, "top"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;->sProperties:Ljava/util/HashMap;

    const-string/jumbo v1, "right"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;->sProperties:Ljava/util/HashMap;

    const-string/jumbo v1, "bottom"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/devtools/inspector/elements/Document;)V
    .locals 3
    .param p1, "document"    # Lcom/taobao/weex/devtools/inspector/elements/Document;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {p1}, Lcom/taobao/weex/devtools/common/Util;->throwIfNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/devtools/inspector/elements/Document;

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;->mDocument:Lcom/taobao/weex/devtools/inspector/elements/Document;

    .line 43
    new-instance v0, Lcom/taobao/weex/devtools/json/ObjectMapper;

    invoke-direct {v0}, Lcom/taobao/weex/devtools/json/ObjectMapper;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;->mObjectMapper:Lcom/taobao/weex/devtools/json/ObjectMapper;

    .line 44
    new-instance v0, Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;

    invoke-direct {v0}, Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;->mPeerManager:Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;

    .line 45
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;->mPeerManager:Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;

    new-instance v1, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$PeerManagerListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$PeerManagerListener;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$1;)V

    invoke-virtual {v0, v1}, Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;->setListener(Lcom/taobao/weex/devtools/inspector/helper/PeerRegistrationListener;)V

    .line 46
    return-void
.end method

.method static synthetic access$200(Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;)Lcom/taobao/weex/devtools/inspector/elements/Document;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;->mDocument:Lcom/taobao/weex/devtools/inspector/elements/Document;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;->sProperties:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;Ljava/util/List;Ljava/util/HashMap;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/HashMap;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;->mockStyleProperty(Ljava/util/List;Ljava/util/HashMap;)V

    return-void
.end method

.method private addStyleProperty(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$CSSComputedStyleProperty;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 134
    .local p1, "computedStyle":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$CSSComputedStyleProperty;>;"
    new-instance v0, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$CSSComputedStyleProperty;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$CSSComputedStyleProperty;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$1;)V

    .line 135
    .local v0, "property":Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$CSSComputedStyleProperty;
    iput-object p2, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$CSSComputedStyleProperty;->name:Ljava/lang/String;

    .line 136
    iput-object p3, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$CSSComputedStyleProperty;->value:Ljava/lang/String;

    .line 137
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    return-void
.end method

.method private initMatch(Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$RuleMatch;Ljava/lang/String;)V
    .locals 5
    .param p1, "match"    # Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$RuleMatch;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 380
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/taobao/weex/devtools/common/ListUtil;->newImmutableList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p1, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$RuleMatch;->matchingSelectors:Ljava/util/List;

    .line 382
    new-instance v1, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$Selector;

    invoke-direct {v1, v4}, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$Selector;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$1;)V

    .line 383
    .local v1, "selector":Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$Selector;
    iput-object p2, v1, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$Selector;->text:Ljava/lang/String;

    .line 385
    new-instance v0, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$CSSRule;

    invoke-direct {v0, v4}, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$CSSRule;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$1;)V

    .line 387
    .local v0, "rule":Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$CSSRule;
    sget-object v2, Lcom/taobao/weex/devtools/inspector/elements/Origin;->REGULAR:Lcom/taobao/weex/devtools/inspector/elements/Origin;

    iput-object v2, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$CSSRule;->origin:Lcom/taobao/weex/devtools/inspector/elements/Origin;

    .line 388
    new-instance v2, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$SelectorList;

    invoke-direct {v2, v4}, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$SelectorList;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$1;)V

    iput-object v2, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$CSSRule;->selectorList:Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$SelectorList;

    .line 390
    iget-object v2, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$CSSRule;->selectorList:Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$SelectorList;

    invoke-static {v1}, Lcom/taobao/weex/devtools/common/ListUtil;->newImmutableList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$SelectorList;->selectors:Ljava/util/List;

    .line 392
    new-instance v2, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$CSSStyle;

    invoke-direct {v2, v4}, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$CSSStyle;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$1;)V

    iput-object v2, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$CSSRule;->style:Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$CSSStyle;

    .line 393
    iget-object v2, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$CSSRule;->style:Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$CSSStyle;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$CSSStyle;->cssProperties:Ljava/util/List;

    .line 395
    iput-object v0, p1, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$RuleMatch;->rule:Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$CSSRule;

    .line 397
    iget-object v2, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$CSSRule;->style:Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$CSSStyle;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$CSSStyle;->shorthandEntries:Ljava/util/List;

    .line 398
    return-void
.end method

.method private mockStyleProperty(Ljava/util/List;Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$CSSComputedStyleProperty;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 128
    .local p1, "computedStyle":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$CSSComputedStyleProperty;>;"
    .local p2, "properties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 129
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, p1, v1, v2}, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;->addStyleProperty(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 131
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method public disable(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    .prologue
    .line 54
    return-void
.end method

.method public enable(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    .prologue
    .line 50
    return-void
.end method

.method public getComputedStyleForNode(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcResult;
    .locals 4
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 58
    iget-object v2, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;->mObjectMapper:Lcom/taobao/weex/devtools/json/ObjectMapper;

    const-class v3, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$GetComputedStyleForNodeRequest;

    invoke-virtual {v2, p2, v3}, Lcom/taobao/weex/devtools/json/ObjectMapper;->convertValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$GetComputedStyleForNodeRequest;

    .line 62
    .local v0, "request":Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$GetComputedStyleForNodeRequest;
    new-instance v1, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$GetComputedStyleForNodeResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$GetComputedStyleForNodeResult;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$1;)V

    .line 63
    .local v1, "result":Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$GetComputedStyleForNodeResult;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$GetComputedStyleForNodeResult;->computedStyle:Ljava/util/List;

    .line 65
    iget-object v2, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;->mDocument:Lcom/taobao/weex/devtools/inspector/elements/Document;

    new-instance v3, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$1;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$GetComputedStyleForNodeRequest;Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$GetComputedStyleForNodeResult;)V

    invoke-virtual {v2, v3}, Lcom/taobao/weex/devtools/inspector/elements/Document;->postAndWait(Ljava/lang/Runnable;)V

    .line 97
    return-object v1
.end method

.method public getMatchedStylesForNode(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcResult;
    .locals 8
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 142
    iget-object v5, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;->mObjectMapper:Lcom/taobao/weex/devtools/json/ObjectMapper;

    const-class v6, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$GetMatchedStylesForNodeRequest;

    invoke-virtual {v5, p2, v6}, Lcom/taobao/weex/devtools/json/ObjectMapper;->convertValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$GetMatchedStylesForNodeRequest;

    .line 146
    .local v2, "request":Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$GetMatchedStylesForNodeRequest;
    new-instance v3, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$GetMatchedStylesForNodeResult;

    invoke-direct {v3, v7}, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$GetMatchedStylesForNodeResult;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$1;)V

    .line 147
    .local v3, "result":Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$GetMatchedStylesForNodeResult;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v1, "matches":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$RuleMatch;>;"
    new-instance v0, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$RuleMatch;

    invoke-direct {v0, v7}, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$RuleMatch;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$1;)V

    .line 149
    .local v0, "localMatch":Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$RuleMatch;
    const-string/jumbo v5, "local"

    invoke-direct {p0, v0, v5}, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;->initMatch(Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$RuleMatch;Ljava/lang/String;)V

    .line 150
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance v4, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$RuleMatch;

    invoke-direct {v4, v7}, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$RuleMatch;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$1;)V

    .line 152
    .local v4, "virtualMatch":Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$RuleMatch;
    invoke-static {}, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->isNativeMode()Z

    move-result v5

    if-nez v5, :cond_0

    .line 153
    const-string/jumbo v5, "virtual"

    invoke-direct {p0, v4, v5}, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;->initMatch(Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$RuleMatch;Ljava/lang/String;)V

    .line 154
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    :cond_0
    iput-object v1, v3, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$GetMatchedStylesForNodeResult;->matchedCSSRules:Ljava/util/List;

    .line 159
    iget-object v5, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;->mDocument:Lcom/taobao/weex/devtools/inspector/elements/Document;

    new-instance v6, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$2;

    invoke-direct {v6, p0, v2, v0, v4}, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$2;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$GetMatchedStylesForNodeRequest;Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$RuleMatch;Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$RuleMatch;)V

    invoke-virtual {v5, v6}, Lcom/taobao/weex/devtools/inspector/elements/Document;->postAndWait(Ljava/lang/Runnable;)V

    .line 195
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    iput-object v5, v3, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$GetMatchedStylesForNodeResult;->inherited:Ljava/util/List;

    .line 196
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    iput-object v5, v3, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$GetMatchedStylesForNodeResult;->pseudoElements:Ljava/util/List;

    .line 198
    return-object v3
.end method
