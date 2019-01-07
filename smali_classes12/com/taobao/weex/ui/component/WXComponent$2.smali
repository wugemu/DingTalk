.class Lcom/taobao/weex/ui/component/WXComponent$2;
.super Lcom/taobao/weex/bridge/EventResult;
.source "WXComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXComponent;->fireEventWait(Ljava/lang/String;Ljava/util/Map;)Lcom/taobao/weex/bridge/EventResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXComponent;

.field final synthetic val$waitLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXComponent;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/ui/component/WXComponent;

    .prologue
    .line 511
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent$2;, "Lcom/taobao/weex/ui/component/WXComponent$2;"
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent$2;->this$0:Lcom/taobao/weex/ui/component/WXComponent;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/WXComponent$2;->val$waitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Lcom/taobao/weex/bridge/EventResult;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Ljava/lang/Object;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 514
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent$2;, "Lcom/taobao/weex/ui/component/WXComponent$2;"
    invoke-super {p0, p1}, Lcom/taobao/weex/bridge/EventResult;->onCallback(Ljava/lang/Object;)V

    .line 515
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent$2;->val$waitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 516
    return-void
.end method
