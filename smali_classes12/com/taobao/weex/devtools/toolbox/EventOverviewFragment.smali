.class public Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment;
.super Landroid/support/v4/app/Fragment;
.source "EventOverviewFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$ItemHolder;,
        Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$PerfListAdapter;
    }
.end annotation


# instance fields
.field private list:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 34
    return-void
.end method

.method public static getInstance(I)Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment;
    .locals 3
    .param p0, "instanceId"    # I

    .prologue
    .line 37
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 38
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "instanceId"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 39
    new-instance v1, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment;

    invoke-direct {v1}, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment;-><init>()V

    .line 40
    .local v1, "fragment":Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment;
    invoke-virtual {v1, v0}, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment;->setArguments(Landroid/os/Bundle;)V

    .line 41
    return-object v1
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, -0x1

    .line 47
    sget v3, Lcom/taobao/weex/inspector/R$layout;->fragment_event_overview:I

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 48
    .local v2, "root":Landroid/view/View;
    invoke-virtual {p0}, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "instanceId"

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 49
    .local v1, "instanceId":I
    sget v3, Lcom/taobao/weex/inspector/R$id;->perf_list:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView;

    iput-object v3, p0, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment;->list:Landroid/support/v7/widget/RecyclerView;

    .line 50
    iget-object v3, p0, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment;->list:Landroid/support/v7/widget/RecyclerView;

    new-instance v4, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 51
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKManager;->getTracingAdapter()Lcom/taobao/weex/adapter/ITracingAdapter;

    move-result-object v0

    .line 52
    .local v0, "adapter":Lcom/taobao/weex/adapter/ITracingAdapter;
    if-eqz v0, :cond_0

    instance-of v3, v0, Lcom/taobao/weex/devtools/adapter/WXTracingAdapter;

    if-eqz v3, :cond_0

    .line 53
    if-eq v1, v6, :cond_0

    .line 54
    iget-object v3, p0, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment;->list:Landroid/support/v7/widget/RecyclerView;

    new-instance v4, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$PerfListAdapter;

    check-cast v0, Lcom/taobao/weex/devtools/adapter/WXTracingAdapter;

    .end local v0    # "adapter":Lcom/taobao/weex/adapter/ITracingAdapter;
    invoke-virtual {v0, v1}, Lcom/taobao/weex/devtools/adapter/WXTracingAdapter;->getTraceEventByInstanceId(I)Lcom/taobao/weex/tracing/WXTracing$TraceEvent;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$PerfListAdapter;-><init>(Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment;Lcom/taobao/weex/tracing/WXTracing$TraceEvent;)V

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 57
    :cond_0
    return-object v2
.end method
