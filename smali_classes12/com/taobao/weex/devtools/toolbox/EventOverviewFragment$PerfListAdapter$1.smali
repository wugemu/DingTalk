.class Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$PerfListAdapter$1;
.super Ljava/lang/Object;
.source "EventOverviewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$PerfListAdapter;->onBindViewHolder(Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$ItemHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$PerfListAdapter;

.field final synthetic val$event:Lcom/taobao/weex/tracing/WXTracing$TraceEvent;


# direct methods
.method constructor <init>(Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$PerfListAdapter;Lcom/taobao/weex/tracing/WXTracing$TraceEvent;)V
    .locals 0
    .param p1, "this$1"    # Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$PerfListAdapter;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$PerfListAdapter$1;->this$1:Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$PerfListAdapter;

    iput-object p2, p0, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$PerfListAdapter$1;->val$event:Lcom/taobao/weex/tracing/WXTracing$TraceEvent;

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
    .line 79
    iget-object v0, p0, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$PerfListAdapter$1;->val$event:Lcom/taobao/weex/tracing/WXTracing$TraceEvent;

    iget-object v0, v0, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->subEvents:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 88
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$PerfListAdapter$1;->this$1:Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$PerfListAdapter;

    iget-object v0, v0, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$PerfListAdapter;->this$0:Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment;

    invoke-virtual {v0}, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Lcn;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/taobao/weex/inspector/R$id;->fragment_container:I

    iget-object v2, p0, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$PerfListAdapter$1;->this$1:Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$PerfListAdapter;

    .line 85
    invoke-static {v2}, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$PerfListAdapter;->access$000(Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$PerfListAdapter;)Lcom/taobao/weex/tracing/WXTracing$TraceEvent;

    move-result-object v2

    iget v2, v2, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->traceId:I

    iget-object v3, p0, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$PerfListAdapter$1;->val$event:Lcom/taobao/weex/tracing/WXTracing$TraceEvent;

    iget v3, v3, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->traceId:I

    invoke-static {v2, v3}, Lcom/taobao/weex/devtools/toolbox/EventDetailFragment;->getFragment(II)Lcom/taobao/weex/devtools/toolbox/EventDetailFragment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const-class v1, Lcom/taobao/weex/devtools/toolbox/EventDetailFragment;

    .line 86
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->a(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->c()I

    goto :goto_0
.end method
