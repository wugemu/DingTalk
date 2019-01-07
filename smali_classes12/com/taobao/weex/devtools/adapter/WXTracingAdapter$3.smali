.class Lcom/taobao/weex/devtools/adapter/WXTracingAdapter$3;
.super Ljava/lang/Object;
.source "WXTracingAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/devtools/adapter/WXTracingAdapter;->sendTracingData(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/devtools/adapter/WXTracingAdapter;

.field final synthetic val$instanceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taobao/weex/devtools/adapter/WXTracingAdapter;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/devtools/adapter/WXTracingAdapter;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/taobao/weex/devtools/adapter/WXTracingAdapter$3;->this$0:Lcom/taobao/weex/devtools/adapter/WXTracingAdapter;

    iput-object p2, p0, Lcom/taobao/weex/devtools/adapter/WXTracingAdapter$3;->val$instanceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 170
    iget-object v0, p0, Lcom/taobao/weex/devtools/adapter/WXTracingAdapter$3;->this$0:Lcom/taobao/weex/devtools/adapter/WXTracingAdapter;

    iget-object v1, p0, Lcom/taobao/weex/devtools/adapter/WXTracingAdapter$3;->val$instanceId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/weex/devtools/adapter/WXTracingAdapter;->access$100(Lcom/taobao/weex/devtools/adapter/WXTracingAdapter;Ljava/lang/String;)V

    .line 171
    return-void
.end method
