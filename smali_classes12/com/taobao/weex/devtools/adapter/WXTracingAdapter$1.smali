.class Lcom/taobao/weex/devtools/adapter/WXTracingAdapter$1;
.super Ljava/lang/Object;
.source "WXTracingAdapter.java"

# interfaces
.implements Lcom/taobao/weex/WXSDKManager$InstanceLifeCycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/devtools/adapter/WXTracingAdapter;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/devtools/adapter/WXTracingAdapter;


# direct methods
.method constructor <init>(Lcom/taobao/weex/devtools/adapter/WXTracingAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/devtools/adapter/WXTracingAdapter;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/taobao/weex/devtools/adapter/WXTracingAdapter$1;->this$0:Lcom/taobao/weex/devtools/adapter/WXTracingAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInstanceCreated(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 50
    return-void
.end method

.method public onInstanceDestroyed(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 41
    iget-object v0, p0, Lcom/taobao/weex/devtools/adapter/WXTracingAdapter$1;->this$0:Lcom/taobao/weex/devtools/adapter/WXTracingAdapter;

    invoke-static {v0}, Lcom/taobao/weex/devtools/adapter/WXTracingAdapter;->access$000(Lcom/taobao/weex/devtools/adapter/WXTracingAdapter;)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    const-string/jumbo v0, "WXTracingAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Destroy trace events with instance id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/taobao/weex/devtools/adapter/WXTracingAdapter$1;->this$0:Lcom/taobao/weex/devtools/adapter/WXTracingAdapter;

    invoke-static {v0}, Lcom/taobao/weex/devtools/adapter/WXTracingAdapter;->access$000(Lcom/taobao/weex/devtools/adapter/WXTracingAdapter;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 45
    :cond_0
    return-void
.end method
