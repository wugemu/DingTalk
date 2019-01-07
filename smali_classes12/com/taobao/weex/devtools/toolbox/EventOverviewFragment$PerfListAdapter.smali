.class Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$PerfListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "EventOverviewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerfListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$ItemHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private rootEvent:Lcom/taobao/weex/tracing/WXTracing$TraceEvent;

.field final synthetic this$0:Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment;Lcom/taobao/weex/tracing/WXTracing$TraceEvent;)V
    .locals 0
    .param p2, "rootEvent"    # Lcom/taobao/weex/tracing/WXTracing$TraceEvent;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$PerfListAdapter;->this$0:Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 64
    iput-object p2, p0, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$PerfListAdapter;->rootEvent:Lcom/taobao/weex/tracing/WXTracing$TraceEvent;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$PerfListAdapter;)Lcom/taobao/weex/tracing/WXTracing$TraceEvent;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$PerfListAdapter;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$PerfListAdapter;->rootEvent:Lcom/taobao/weex/tracing/WXTracing$TraceEvent;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$PerfListAdapter;->rootEvent:Lcom/taobao/weex/tracing/WXTracing$TraceEvent;

    iget-object v0, v0, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->subEvents:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 60
    check-cast p1, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$ItemHolder;

    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$PerfListAdapter;->onBindViewHolder(Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$ItemHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$ItemHolder;I)V
    .locals 10
    .param p1, "holder"    # Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$ItemHolder;
    .param p2, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 75
    iget-object v5, p0, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$PerfListAdapter;->rootEvent:Lcom/taobao/weex/tracing/WXTracing$TraceEvent;

    iget-object v5, v5, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->subEvents:Landroid/util/SparseArray;

    invoke-virtual {v5, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;

    .line 76
    .local v1, "event":Lcom/taobao/weex/tracing/WXTracing$TraceEvent;
    iget-object v5, p1, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$ItemHolder;->itemView:Landroid/view/View;

    new-instance v6, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$PerfListAdapter$1;

    invoke-direct {v6, p0, v1}, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$PerfListAdapter$1;-><init>(Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$PerfListAdapter;Lcom/taobao/weex/tracing/WXTracing$TraceEvent;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v5, v1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->subEvents:Landroid/util/SparseArray;

    if-nez v5, :cond_4

    .line 92
    iget-object v5, p1, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$ItemHolder;->info:Landroid/widget/ImageView;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 97
    :goto_0
    iget-wide v6, v1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->ts:J

    iget-object v5, p0, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$PerfListAdapter;->rootEvent:Lcom/taobao/weex/tracing/WXTracing$TraceEvent;

    iget-wide v8, v5, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->ts:J

    cmp-long v5, v6, v8

    if-gez v5, :cond_0

    .line 98
    iget-object v5, p0, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$PerfListAdapter;->rootEvent:Lcom/taobao/weex/tracing/WXTracing$TraceEvent;

    iget-wide v6, v1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->ts:J

    iput-wide v6, v5, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->ts:J

    .line 100
    :cond_0
    iget-object v5, p1, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$ItemHolder;->actionName:Landroid/widget/TextView;

    iget-object v6, v1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->fname:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v5, p1, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$ItemHolder;->actionDuration:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, v1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->duration:D

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v5, p1, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$ItemHolder;->duration:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 103
    .local v2, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v5, p1, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$ItemHolder;->itemView:Landroid/view/View;

    new-instance v6, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$PerfListAdapter$2;

    invoke-direct {v6, p0, v1, p1, v2}, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$PerfListAdapter$2;-><init>(Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$PerfListAdapter;Lcom/taobao/weex/tracing/WXTracing$TraceEvent;Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$ItemHolder;Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 114
    iget-object v5, v1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->ref:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 115
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v3

    .line 116
    .local v3, "renderManager":Lcom/taobao/weex/ui/WXRenderManager;
    iget-object v5, v1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->iid:Ljava/lang/String;

    iget-object v6, v1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->ref:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lcom/taobao/weex/ui/WXRenderManager;->getWXComponent(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    .line 117
    .local v0, "component":Lcom/taobao/weex/ui/component/WXComponent;
    if-eqz v0, :cond_3

    .line 118
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getComponentType()Ljava/lang/String;

    move-result-object v4

    .line 119
    .local v4, "type":Ljava/lang/String;
    iget-object v5, p1, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$ItemHolder;->compType:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "<"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getRealView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 121
    iget-object v5, p1, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$ItemHolder;->viewType:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getRealView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    :cond_1
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->isLazy()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 124
    iget-object v5, p1, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$ItemHolder;->compType:Landroid/widget/TextView;

    const-string/jumbo v6, " @lazy"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 126
    :cond_2
    iget-object v5, p1, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$ItemHolder;->compRef:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Ref: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    .end local v0    # "component":Lcom/taobao/weex/ui/component/WXComponent;
    .end local v3    # "renderManager":Lcom/taobao/weex/ui/WXRenderManager;
    .end local v4    # "type":Ljava/lang/String;
    :cond_3
    :goto_1
    return-void

    .line 94
    .end local v2    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_4
    iget-object v5, p1, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$ItemHolder;->info:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 129
    .restart local v2    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_5
    iget-object v5, p1, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$ItemHolder;->compType:Landroid/widget/TextView;

    const-string/jumbo v6, "-"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v5, p1, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$ItemHolder;->viewType:Landroid/widget/TextView;

    const-string/jumbo v6, "-"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v5, p1, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$ItemHolder;->compRef:Landroid/widget/TextView;

    const-string/jumbo v6, "-"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$PerfListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$ItemHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$ItemHolder;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 69
    new-instance v0, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$ItemHolder;

    iget-object v1, p0, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$PerfListAdapter;->this$0:Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/taobao/weex/inspector/R$layout;->item_trace_event_item:I

    const/4 v4, 0x0

    .line 70
    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment$ItemHolder;-><init>(Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment;Landroid/view/View;)V

    .line 69
    return-object v0
.end method
