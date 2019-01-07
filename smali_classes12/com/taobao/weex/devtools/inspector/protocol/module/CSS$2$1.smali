.class Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$2$1;
.super Ljava/lang/Object;
.source "CSS.java"

# interfaces
.implements Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$2;


# direct methods
.method constructor <init>(Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$2;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$2$1;->this$1:Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public store(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "isDefault"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 175
    if-nez p3, :cond_0

    .line 176
    new-instance v0, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$CSSProperty;

    invoke-direct {v0, v3}, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$CSSProperty;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$1;)V

    .line 177
    .local v0, "property":Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$CSSProperty;
    const-string/jumbo v2, "v-"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 178
    iput-object p1, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$CSSProperty;->name:Ljava/lang/String;

    .line 179
    iput-object p2, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$CSSProperty;->value:Ljava/lang/String;

    .line 180
    iget-object v2, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$2$1;->this$1:Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$2;

    iget-object v2, v2, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$2;->val$localMatch:Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$RuleMatch;

    iget-object v2, v2, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$RuleMatch;->rule:Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$CSSRule;

    iget-object v2, v2, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$CSSRule;->style:Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$CSSStyle;

    iget-object v2, v2, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$CSSStyle;->cssProperties:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    .end local v0    # "property":Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$CSSProperty;
    :cond_0
    :goto_0
    return-void

    .line 182
    .restart local v0    # "property":Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$CSSProperty;
    :cond_1
    invoke-static {}, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->isNativeMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 183
    new-instance v1, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$CSSProperty;

    invoke-direct {v1, v3}, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$CSSProperty;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$1;)V

    .line 184
    .local v1, "virtualProperty":Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$CSSProperty;
    iput-object p1, v1, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$CSSProperty;->name:Ljava/lang/String;

    .line 185
    iput-object p2, v1, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$CSSProperty;->value:Ljava/lang/String;

    .line 186
    iget-object v2, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$2$1;->this$1:Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$2;

    iget-object v2, v2, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$2;->val$virtualMatch:Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$RuleMatch;

    iget-object v2, v2, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$RuleMatch;->rule:Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$CSSRule;

    iget-object v2, v2, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$CSSRule;->style:Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$CSSStyle;

    iget-object v2, v2, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$CSSStyle;->cssProperties:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
