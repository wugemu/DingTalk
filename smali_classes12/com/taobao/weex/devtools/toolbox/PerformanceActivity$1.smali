.class Lcom/taobao/weex/devtools/toolbox/PerformanceActivity$1;
.super Ljava/lang/Object;
.source "PerformanceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/devtools/toolbox/PerformanceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/devtools/toolbox/PerformanceActivity;


# direct methods
.method constructor <init>(Lcom/taobao/weex/devtools/toolbox/PerformanceActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/devtools/toolbox/PerformanceActivity;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/taobao/weex/devtools/toolbox/PerformanceActivity$1;->this$0:Lcom/taobao/weex/devtools/toolbox/PerformanceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 38
    iget-object v0, p0, Lcom/taobao/weex/devtools/toolbox/PerformanceActivity$1;->this$0:Lcom/taobao/weex/devtools/toolbox/PerformanceActivity;

    iget-object v1, p0, Lcom/taobao/weex/devtools/toolbox/PerformanceActivity$1;->this$0:Lcom/taobao/weex/devtools/toolbox/PerformanceActivity;

    invoke-virtual {v1}, Lcom/taobao/weex/devtools/toolbox/PerformanceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "instanceId"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment;->getInstance(I)Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/weex/devtools/toolbox/PerformanceActivity;->access$000(Lcom/taobao/weex/devtools/toolbox/PerformanceActivity;Landroid/support/v4/app/Fragment;)V

    .line 39
    return-void
.end method
