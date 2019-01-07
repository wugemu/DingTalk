.class Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$1$1;
.super Ljava/lang/Object;
.source "CSS.java"

# interfaces
.implements Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$1;


# direct methods
.method constructor <init>(Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$1;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$1$1;->this$1:Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public store(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "isDefault"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 84
    if-nez p3, :cond_0

    .line 85
    new-instance v0, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$CSSComputedStyleProperty;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$CSSComputedStyleProperty;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$1;)V

    .line 86
    .local v0, "property":Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$CSSComputedStyleProperty;
    const-string/jumbo v1, "v-"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    iput-object p1, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$CSSComputedStyleProperty;->name:Ljava/lang/String;

    .line 88
    iput-object p2, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$CSSComputedStyleProperty;->value:Ljava/lang/String;

    .line 89
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$1$1;->this$1:Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$1;

    iget-object v1, v1, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$1;->val$result:Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$GetComputedStyleForNodeResult;

    iget-object v1, v1, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$GetComputedStyleForNodeResult;->computedStyle:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    .end local v0    # "property":Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$CSSComputedStyleProperty;
    :cond_0
    return-void
.end method
