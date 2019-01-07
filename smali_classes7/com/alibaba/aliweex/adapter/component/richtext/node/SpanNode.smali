.class Lcom/alibaba/aliweex/adapter/component/richtext/node/SpanNode;
.super Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;
.source "SpanNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/aliweex/adapter/component/richtext/node/SpanNode$SpanNodeCreator;
    }
.end annotation


# static fields
.field public static final NODE_TYPE:Ljava/lang/String; = "span"


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "instanceId"    # Ljava/lang/String;
    .param p3, "componentRef"    # Ljava/lang/String;

    .prologue
    .line 227
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/aliweex/adapter/component/richtext/node/SpanNode$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Lcom/alibaba/aliweex/adapter/component/richtext/node/SpanNode$1;

    .prologue
    .line 214
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/aliweex/adapter/component/richtext/node/SpanNode;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected isInternalNode()Z
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 232
    iget-object v0, p0, Lcom/alibaba/aliweex/adapter/component/richtext/node/SpanNode;->attr:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/aliweex/adapter/component/richtext/node/SpanNode;->attr:Ljava/util/Map;

    const-string/jumbo v1, "value"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 233
    :cond_0
    const-string/jumbo v0, ""

    .line 235
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/aliweex/adapter/component/richtext/node/SpanNode;->attr:Ljava/util/Map;

    const-string/jumbo v1, "value"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected updateSpans(Landroid/text/SpannableStringBuilder;I)V
    .locals 4
    .param p1, "spannableStringBuilder"    # Landroid/text/SpannableStringBuilder;
    .param p2, "level"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 246
    invoke-super {p0, p1, p2}, Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;->updateSpans(Landroid/text/SpannableStringBuilder;I)V

    .line 247
    new-instance v0, Lcom/taobao/weex/dom/TextDecorationSpan;

    iget-object v1, p0, Lcom/alibaba/aliweex/adapter/component/richtext/node/SpanNode;->style:Ljava/util/Map;

    invoke-static {v1}, Lcom/taobao/weex/dom/WXStyle;->getTextDecoration(Ljava/util/Map;)Lcom/taobao/weex/ui/component/WXTextDecoration;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/taobao/weex/dom/TextDecorationSpan;-><init>(Lcom/taobao/weex/ui/component/WXTextDecoration;)V

    const/4 v1, 0x0

    .line 248
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-static {p2}, Lcom/alibaba/aliweex/adapter/component/richtext/node/SpanNode;->createSpanFlag(I)I

    move-result v3

    .line 247
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 249
    return-void
.end method
