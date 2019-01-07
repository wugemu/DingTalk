.class Lcom/taobao/weex/devtools/toolbox/PerformanceActivity$3;
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
    .line 49
    iput-object p1, p0, Lcom/taobao/weex/devtools/toolbox/PerformanceActivity$3;->this$0:Lcom/taobao/weex/devtools/toolbox/PerformanceActivity;

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
    .line 52
    iget-object v0, p0, Lcom/taobao/weex/devtools/toolbox/PerformanceActivity$3;->this$0:Lcom/taobao/weex/devtools/toolbox/PerformanceActivity;

    new-instance v1, Lcom/taobao/weex/devtools/toolbox/EnvironmentFragment;

    invoke-direct {v1}, Lcom/taobao/weex/devtools/toolbox/EnvironmentFragment;-><init>()V

    invoke-static {v0, v1}, Lcom/taobao/weex/devtools/toolbox/PerformanceActivity;->access$000(Lcom/taobao/weex/devtools/toolbox/PerformanceActivity;Landroid/support/v4/app/Fragment;)V

    .line 53
    return-void
.end method
