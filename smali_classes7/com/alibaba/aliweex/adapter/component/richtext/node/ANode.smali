.class Lcom/alibaba/aliweex/adapter/component/richtext/node/ANode;
.super Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;
.source "ANode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/aliweex/adapter/component/richtext/node/ANode$ANodeCreator;
    }
.end annotation


# static fields
.field public static final HREF:Ljava/lang/String; = "href"

.field public static final NODE_TYPE:Ljava/lang/String; = "a"


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "instanceId"    # Ljava/lang/String;
    .param p3, "componentRef"    # Ljava/lang/String;

    .prologue
    .line 226
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/aliweex/adapter/component/richtext/node/ANode$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Lcom/alibaba/aliweex/adapter/component/richtext/node/ANode$1;

    .prologue
    .line 212
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/aliweex/adapter/component/richtext/node/ANode;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected isInternalNode()Z
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    const-string/jumbo v0, ""

    return-object v0
.end method

.method protected updateSpans(Landroid/text/SpannableStringBuilder;I)V
    .locals 4
    .param p1, "spannableStringBuilder"    # Landroid/text/SpannableStringBuilder;
    .param p2, "level"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 241
    invoke-super {p0, p1, p2}, Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;->updateSpans(Landroid/text/SpannableStringBuilder;I)V

    .line 242
    iget-object v1, p0, Lcom/alibaba/aliweex/adapter/component/richtext/node/ANode;->attr:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/aliweex/adapter/component/richtext/node/ANode;->attr:Ljava/util/Map;

    const-string/jumbo v2, "href"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    new-instance v0, Lcom/alibaba/aliweex/adapter/component/richtext/span/ASpan;

    iget-object v1, p0, Lcom/alibaba/aliweex/adapter/component/richtext/node/ANode;->mInstanceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/aliweex/adapter/component/richtext/node/ANode;->attr:Ljava/util/Map;

    const-string/jumbo v3, "href"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/aliweex/adapter/component/richtext/span/ASpan;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .local v0, "aSpan":Lcom/alibaba/aliweex/adapter/component/richtext/span/ASpan;
    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 245
    invoke-static {p2}, Lcom/alibaba/aliweex/adapter/component/richtext/node/ANode;->createSpanFlag(I)I

    move-result v3

    .line 244
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 247
    .end local v0    # "aSpan":Lcom/alibaba/aliweex/adapter/component/richtext/span/ASpan;
    :cond_0
    return-void
.end method
