.class Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$PerfListAdapter$2;
.super Ljava/lang/Object;
.source "EventOverviewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$holder:Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$ItemHolder;

.field final synthetic val$lp:Landroid/view/ViewGroup$MarginLayoutParams;


# direct methods
.method constructor <init>(Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$PerfListAdapter;Lcom/taobao/weex/tracing/WXTracing$TraceEvent;Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$ItemHolder;Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0
    .param p1, "this$1"    # Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$PerfListAdapter;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$PerfListAdapter$2;->this$1:Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$PerfListAdapter;

    iput-object p2, p0, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$PerfListAdapter$2;->val$event:Lcom/taobao/weex/tracing/WXTracing$TraceEvent;

    iput-object p3, p0, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$PerfListAdapter$2;->val$holder:Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$ItemHolder;

    iput-object p4, p0, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$PerfListAdapter$2;->val$lp:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 106
    iget-object v4, p0, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$PerfListAdapter$2;->val$event:Lcom/taobao/weex/tracing/WXTracing$TraceEvent;

    iget-wide v4, v4, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->ts:J

    iget-object v6, p0, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$PerfListAdapter$2;->this$1:Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$PerfListAdapter;

    invoke-static {v6}, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$PerfListAdapter;->access$000(Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$PerfListAdapter;)Lcom/taobao/weex/tracing/WXTracing$TraceEvent;

    move-result-object v6

    iget-wide v6, v6, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->ts:J

    sub-long v0, v4, v6

    .line 107
    .local v0, "gap":J
    long-to-double v4, v0

    iget-object v6, p0, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$PerfListAdapter$2;->this$1:Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$PerfListAdapter;

    invoke-static {v6}, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$PerfListAdapter;->access$000(Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$PerfListAdapter;)Lcom/taobao/weex/tracing/WXTracing$TraceEvent;

    move-result-object v6

    iget-wide v6, v6, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->duration:D

    div-double/2addr v4, v6

    iget-object v6, p0, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$PerfListAdapter$2;->val$holder:Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$ItemHolder;

    invoke-virtual {v6}, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$ItemHolder;->getItemWidth()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-int v2, v4

    .line 108
    .local v2, "margin":I
    iget-object v4, p0, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$PerfListAdapter$2;->val$event:Lcom/taobao/weex/tracing/WXTracing$TraceEvent;

    iget-wide v4, v4, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->duration:D

    iget-object v6, p0, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$PerfListAdapter$2;->this$1:Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$PerfListAdapter;

    invoke-static {v6}, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$PerfListAdapter;->access$000(Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$PerfListAdapter;)Lcom/taobao/weex/tracing/WXTracing$TraceEvent;

    move-result-object v6

    iget-wide v6, v6, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->duration:D

    div-double/2addr v4, v6

    iget-object v6, p0, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$PerfListAdapter$2;->val$holder:Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$ItemHolder;

    invoke-virtual {v6}, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$ItemHolder;->getItemWidth()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-int v3, v4

    .line 109
    .local v3, "width":I
    iget-object v4, p0, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$PerfListAdapter$2;->val$lp:Landroid/view/ViewGroup$MarginLayoutParams;

    iput v3, v4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 110
    iget-object v4, p0, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$PerfListAdapter$2;->val$lp:Landroid/view/ViewGroup$MarginLayoutParams;

    iput v2, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 111
    iget-object v4, p0, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$PerfListAdapter$2;->val$holder:Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$ItemHolder;

    iget-object v4, v4, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$ItemHolder;->duration:Landroid/view/View;

    iget-object v5, p0, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$PerfListAdapter$2;->val$lp:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    return-void
.end method
