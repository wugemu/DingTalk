.class Lcom/alibaba/aliweex/adapter/component/richtext/node/SpanNode$SpanNodeCreator;
.super Ljava/lang/Object;
.source "SpanNode.java"

# interfaces
.implements Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNodeCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/aliweex/adapter/component/richtext/node/SpanNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SpanNodeCreator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNodeCreator",
        "<",
        "Lcom/alibaba/aliweex/adapter/component/richtext/node/SpanNode;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createRichTextNode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;
    .locals 1

    .prologue
    .line 216
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/aliweex/adapter/component/richtext/node/SpanNode$SpanNodeCreator;->createRichTextNode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/aliweex/adapter/component/richtext/node/SpanNode;

    move-result-object v0

    return-object v0
.end method

.method public createRichTextNode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/aliweex/adapter/component/richtext/node/SpanNode;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "instanceId"    # Ljava/lang/String;
    .param p3, "componentRef"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 220
    new-instance v0, Lcom/alibaba/aliweex/adapter/component/richtext/node/SpanNode;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/alibaba/aliweex/adapter/component/richtext/node/SpanNode;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/aliweex/adapter/component/richtext/node/SpanNode$1;)V

    return-object v0
.end method
