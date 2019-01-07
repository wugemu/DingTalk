.class Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$8;
.super Ljava/lang/Object;
.source "DOM.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->findViewByLocation(II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;

.field final synthetic val$resultNodeIds:Lcom/taobao/weex/devtools/common/ArrayListAccumulator;

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;IILcom/taobao/weex/devtools/common/ArrayListAccumulator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;

    .prologue
    .line 291
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$8;->this$0:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;

    iput p2, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$8;->val$x:I

    iput p3, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$8;->val$y:I

    iput-object p4, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$8;->val$resultNodeIds:Lcom/taobao/weex/devtools/common/ArrayListAccumulator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 294
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$8;->this$0:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;

    invoke-static {v0}, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->access$300(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;)Lcom/taobao/weex/devtools/inspector/elements/Document;

    move-result-object v0

    iget v1, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$8;->val$x:I

    iget v2, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$8;->val$y:I

    iget-object v3, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$8;->val$resultNodeIds:Lcom/taobao/weex/devtools/common/ArrayListAccumulator;

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/devtools/inspector/elements/Document;->findMatchingElements(IILcom/taobao/weex/devtools/common/Accumulator;)V

    .line 295
    return-void
.end method
