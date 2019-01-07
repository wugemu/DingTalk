.class final Lcom/alibaba/weex/plugin/gcanvas/bubble/weex/WXBubbleComponent$2;
.super Ljava/lang/Object;
.source "WXBubbleComponent.java"

# interfaces
.implements Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/weex/plugin/gcanvas/bubble/weex/WXBubbleComponent;->registerCallback(Lcom/taobao/weex/bridge/JSCallback;Lcom/taobao/weex/bridge/JSCallback;Lcom/taobao/weex/bridge/JSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/weex/bridge/JSCallback;

.field final synthetic b:Lcom/alibaba/weex/plugin/gcanvas/bubble/weex/WXBubbleComponent;


# direct methods
.method constructor <init>(Lcom/alibaba/weex/plugin/gcanvas/bubble/weex/WXBubbleComponent;Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/weex/plugin/gcanvas/bubble/weex/WXBubbleComponent;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/weex/WXBubbleComponent$2;->b:Lcom/alibaba/weex/plugin/gcanvas/bubble/weex/WXBubbleComponent;

    iput-object p2, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/weex/WXBubbleComponent$2;->a:Lcom/taobao/weex/bridge/JSCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(I)V
    .locals 3
    .param p1, "id"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 224
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 225
    .local v0, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "bubbleId"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v1, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/weex/WXBubbleComponent$2;->a:Lcom/taobao/weex/bridge/JSCallback;

    invoke-interface {v1, v0}, Lcom/taobao/weex/bridge/JSCallback;->invokeAndKeepAlive(Ljava/lang/Object;)V

    .line 227
    return-void
.end method
