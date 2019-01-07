.class Lcom/alibaba/aliweex/adapter/component/richtext/node/ImgNode$ImgNodeCreator;
.super Ljava/lang/Object;
.source "ImgNode.java"

# interfaces
.implements Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNodeCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/aliweex/adapter/component/richtext/node/ImgNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImgNodeCreator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNodeCreator",
        "<",
        "Lcom/alibaba/aliweex/adapter/component/richtext/node/ImgNode;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createRichTextNode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/aliweex/adapter/component/richtext/node/ImgNode;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "instanceId"    # Ljava/lang/String;
    .param p3, "componentRef"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 234
    new-instance v0, Lcom/alibaba/aliweex/adapter/component/richtext/node/ImgNode;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/alibaba/aliweex/adapter/component/richtext/node/ImgNode;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/aliweex/adapter/component/richtext/node/ImgNode$1;)V

    return-object v0
.end method

.method public bridge synthetic createRichTextNode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;
    .locals 1

    .prologue
    .line 230
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/aliweex/adapter/component/richtext/node/ImgNode$ImgNodeCreator;->createRichTextNode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/aliweex/adapter/component/richtext/node/ImgNode;

    move-result-object v0

    return-object v0
.end method
