.class Lcom/taobao/weex/devtools/adapter/WXTracingAdapter$2;
.super Ljava/lang/Object;
.source "WXTracingAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/devtools/adapter/WXTracingAdapter;->enableMonitor(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/devtools/adapter/WXTracingAdapter;

.field final synthetic val$instance:Lcom/taobao/weex/WXSDKInstance;

.field final synthetic val$instanceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taobao/weex/devtools/adapter/WXTracingAdapter;Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/devtools/adapter/WXTracingAdapter;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/taobao/weex/devtools/adapter/WXTracingAdapter$2;->this$0:Lcom/taobao/weex/devtools/adapter/WXTracingAdapter;

    iput-object p2, p0, Lcom/taobao/weex/devtools/adapter/WXTracingAdapter$2;->val$instance:Lcom/taobao/weex/WXSDKInstance;

    iput-object p3, p0, Lcom/taobao/weex/devtools/adapter/WXTracingAdapter$2;->val$instanceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 140
    iget-object v0, p0, Lcom/taobao/weex/devtools/adapter/WXTracingAdapter$2;->val$instance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getUIContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/devtools/adapter/WXTracingAdapter$2;->val$instanceId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/taobao/weex/devtools/toolbox/PerformanceActivity;->start(Landroid/content/Context;I)V

    .line 141
    return-void
.end method
