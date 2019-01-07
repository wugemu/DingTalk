.class Lcom/taobao/weex/devtools/trace/DomTracker$1;
.super Lcom/taobao/weex/devtools/trace/DomTracker$ObjectPool;
.source "DomTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/devtools/trace/DomTracker;-><init>(Lcom/taobao/weex/WXSDKInstance;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/weex/devtools/trace/DomTracker$ObjectPool",
        "<",
        "Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode",
        "<",
        "Lcom/taobao/weex/ui/component/WXComponent;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/devtools/trace/DomTracker;


# direct methods
.method constructor <init>(Lcom/taobao/weex/devtools/trace/DomTracker;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/devtools/trace/DomTracker;
    .param p2, "capacity"    # I

    .prologue
    .line 55
    iput-object p1, p0, Lcom/taobao/weex/devtools/trace/DomTracker$1;->this$0:Lcom/taobao/weex/devtools/trace/DomTracker;

    invoke-direct {p0, p2}, Lcom/taobao/weex/devtools/trace/DomTracker$ObjectPool;-><init>(I)V

    return-void
.end method


# virtual methods
.method newObject()Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode",
            "<",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 58
    new-instance v0, Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode;-><init>(Lcom/taobao/weex/devtools/trace/DomTracker$1;)V

    return-object v0
.end method

.method bridge synthetic newObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/taobao/weex/devtools/trace/DomTracker$1;->newObject()Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode;

    move-result-object v0

    return-object v0
.end method
