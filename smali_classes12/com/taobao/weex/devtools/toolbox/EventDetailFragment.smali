.class public Lcom/taobao/weex/devtools/toolbox/EventDetailFragment;
.super Landroid/support/v4/app/Fragment;
.source "EventDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/devtools/toolbox/EventDetailFragment$EventView;
    }
.end annotation


# instance fields
.field private eventName:Landroid/widget/TextView;

.field private eventPayload:Landroid/widget/TextView;

.field private rootEvent:Lcom/taobao/weex/tracing/WXTracing$TraceEvent;

.field private rootView:Landroid/view/View;

.field private subEvents:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 41
    return-void
.end method

.method public static getFragment(II)Lcom/taobao/weex/devtools/toolbox/EventDetailFragment;
    .locals 3
    .param p0, "instanceId"    # I
    .param p1, "traceId"    # I

    .prologue
    .line 44
    new-instance v1, Lcom/taobao/weex/devtools/toolbox/EventDetailFragment;

    invoke-direct {v1}, Lcom/taobao/weex/devtools/toolbox/EventDetailFragment;-><init>()V

    .line 45
    .local v1, "fragment":Lcom/taobao/weex/devtools/toolbox/EventDetailFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 46
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "instanceId"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 47
    const-string/jumbo v2, "traceId"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 48
    invoke-virtual {v1, v0}, Lcom/taobao/weex/devtools/toolbox/EventDetailFragment;->setArguments(Landroid/os/Bundle;)V

    .line 49
    return-object v1
.end method

.method private instantiationViews()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 116
    iget-object v0, p0, Lcom/taobao/weex/devtools/toolbox/EventDetailFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/taobao/weex/inspector/R$id;->event_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/taobao/weex/devtools/toolbox/EventDetailFragment;->eventName:Landroid/widget/TextView;

    .line 117
    iget-object v0, p0, Lcom/taobao/weex/devtools/toolbox/EventDetailFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/taobao/weex/inspector/R$id;->sub_events:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/taobao/weex/devtools/toolbox/EventDetailFragment;->subEvents:Landroid/widget/LinearLayout;

    .line 118
    iget-object v0, p0, Lcom/taobao/weex/devtools/toolbox/EventDetailFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/taobao/weex/inspector/R$id;->event_payload:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/taobao/weex/devtools/toolbox/EventDetailFragment;->eventPayload:Landroid/widget/TextView;

    .line 119
    iget-object v0, p0, Lcom/taobao/weex/devtools/toolbox/EventDetailFragment;->eventPayload:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 120
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 22
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/devtools/toolbox/EventDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v18

    const-string/jumbo v19, "instanceId"

    invoke-virtual/range {v18 .. v19}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 56
    .local v11, "iid":I
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/devtools/toolbox/EventDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v18

    const-string/jumbo v19, "traceId"

    invoke-virtual/range {v18 .. v19}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 57
    .local v16, "traceId":I
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/taobao/weex/WXSDKManager;->getTracingAdapter()Lcom/taobao/weex/adapter/ITracingAdapter;

    move-result-object v4

    .line 58
    .local v4, "adapter":Lcom/taobao/weex/adapter/ITracingAdapter;
    if-eqz v4, :cond_0

    instance-of v0, v4, Lcom/taobao/weex/devtools/adapter/WXTracingAdapter;

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 59
    check-cast v4, Lcom/taobao/weex/devtools/adapter/WXTracingAdapter;

    .end local v4    # "adapter":Lcom/taobao/weex/adapter/ITracingAdapter;
    invoke-virtual {v4, v11}, Lcom/taobao/weex/devtools/adapter/WXTracingAdapter;->getTraceEventByInstanceId(I)Lcom/taobao/weex/tracing/WXTracing$TraceEvent;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->subEvents:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/taobao/weex/devtools/toolbox/EventDetailFragment;->rootEvent:Lcom/taobao/weex/tracing/WXTracing$TraceEvent;

    .line 61
    :cond_0
    sget v18, Lcom/taobao/weex/inspector/R$layout;->fragment_event_detail:I

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move-object/from16 v2, p2

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/taobao/weex/devtools/toolbox/EventDetailFragment;->rootView:Landroid/view/View;

    .line 62
    invoke-direct/range {p0 .. p0}, Lcom/taobao/weex/devtools/toolbox/EventDetailFragment;->instantiationViews()V

    .line 64
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/devtools/toolbox/EventDetailFragment;->eventName:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/devtools/toolbox/EventDetailFragment;->rootEvent:Lcom/taobao/weex/tracing/WXTracing$TraceEvent;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->fname:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/devtools/toolbox/EventDetailFragment;->rootEvent:Lcom/taobao/weex/tracing/WXTracing$TraceEvent;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->subEvents:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseArray;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v10, v0, :cond_4

    .line 67
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/devtools/toolbox/EventDetailFragment;->rootEvent:Lcom/taobao/weex/tracing/WXTracing$TraceEvent;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->subEvents:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;

    .line 69
    .local v6, "event":Lcom/taobao/weex/tracing/WXTracing$TraceEvent;
    const-string/jumbo v18, "DomExecute"

    iget-object v0, v6, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->fname:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1

    const-string/jumbo v18, "UIExecute"

    iget-object v0, v6, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->fname:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 73
    new-instance v7, Lcom/taobao/weex/devtools/toolbox/EventDetailFragment$EventView;

    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/devtools/toolbox/EventDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Lcom/taobao/weex/devtools/toolbox/EventDetailFragment$EventView;-><init>(Landroid/content/Context;)V

    .line 74
    .local v7, "eventView":Lcom/taobao/weex/devtools/toolbox/EventDetailFragment$EventView;
    iget-object v0, v7, Lcom/taobao/weex/devtools/toolbox/EventDetailFragment$EventView;->desc:Landroid/widget/TextView;

    move-object/from16 v18, v0

    iget-object v0, v6, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->fname:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/devtools/toolbox/EventDetailFragment;->subEvents:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 77
    iget-wide v0, v6, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->ts:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/devtools/toolbox/EventDetailFragment;->rootEvent:Lcom/taobao/weex/tracing/WXTracing$TraceEvent;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->ts:J

    move-wide/from16 v20, v0

    sub-long v8, v18, v20

    .line 78
    .local v8, "gap":J
    long-to-double v0, v8

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/devtools/toolbox/EventDetailFragment;->rootEvent:Lcom/taobao/weex/tracing/WXTracing$TraceEvent;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->duration:D

    move-wide/from16 v20, v0

    div-double v18, v18, v20

    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/devtools/toolbox/EventDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v20

    const/high16 v21, 0x41000000    # 8.0f

    invoke-static/range {v21 .. v21}, Lcom/taobao/weex/utils/WXViewUtils;->dip2px(F)I

    move-result v21

    sub-int v20, v20, v21

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v15, v0

    .line 79
    .local v15, "margin":I
    iget-wide v0, v6, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->duration:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/devtools/toolbox/EventDetailFragment;->rootEvent:Lcom/taobao/weex/tracing/WXTracing$TraceEvent;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->duration:D

    move-wide/from16 v20, v0

    div-double v18, v18, v20

    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/devtools/toolbox/EventDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v20

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v17, v0

    .line 80
    .local v17, "width":I
    iget-object v0, v7, Lcom/taobao/weex/devtools/toolbox/EventDetailFragment$EventView;->indicator:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 81
    .local v14, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/high16 v18, 0x40000000    # 2.0f

    invoke-static/range {v18 .. v18}, Lcom/taobao/weex/utils/WXViewUtils;->dip2px(F)I

    move-result v18

    add-int v18, v18, v17

    move/from16 v0, v18

    iput v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 82
    const/16 v18, -0x1

    move/from16 v0, v18

    iput v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 83
    const/high16 v18, 0x40000000    # 2.0f

    invoke-static/range {v18 .. v18}, Lcom/taobao/weex/utils/WXViewUtils;->dip2px(F)I

    move-result v18

    sub-int v18, v15, v18

    move/from16 v0, v18

    iput v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 84
    const/16 v18, 0x1

    move/from16 v0, v18

    iput v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 86
    const-string/jumbo v18, "DOMThread"

    iget-object v0, v6, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->tname:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 87
    iget-object v0, v7, Lcom/taobao/weex/devtools/toolbox/EventDetailFragment$EventView;->indicator:Landroid/view/View;

    move-object/from16 v18, v0

    const-string/jumbo v19, "#84A6E8"

    invoke-static/range {v19 .. v19}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setBackgroundColor(I)V

    .line 93
    :goto_1
    iget-object v0, v7, Lcom/taobao/weex/devtools/toolbox/EventDetailFragment$EventView;->indicator:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    iget-object v0, v7, Lcom/taobao/weex/devtools/toolbox/EventDetailFragment$EventView;->duration:Landroid/widget/TextView;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v0, v6, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->duration:D

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " ms"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    .end local v7    # "eventView":Lcom/taobao/weex/devtools/toolbox/EventDetailFragment$EventView;
    .end local v8    # "gap":J
    .end local v14    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v15    # "margin":I
    .end local v17    # "width":I
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 88
    .restart local v7    # "eventView":Lcom/taobao/weex/devtools/toolbox/EventDetailFragment$EventView;
    .restart local v8    # "gap":J
    .restart local v14    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v15    # "margin":I
    .restart local v17    # "width":I
    :cond_2
    const-string/jumbo v18, "UIThread"

    iget-object v0, v6, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->tname:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 89
    iget-object v0, v7, Lcom/taobao/weex/devtools/toolbox/EventDetailFragment$EventView;->indicator:Landroid/view/View;

    move-object/from16 v18, v0

    const-string/jumbo v19, "#83B86E"

    invoke-static/range {v19 .. v19}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 91
    :cond_3
    iget-object v0, v7, Lcom/taobao/weex/devtools/toolbox/EventDetailFragment$EventView;->indicator:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, -0xff0001

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 97
    .end local v6    # "event":Lcom/taobao/weex/tracing/WXTracing$TraceEvent;
    .end local v7    # "eventView":Lcom/taobao/weex/devtools/toolbox/EventDetailFragment$EventView;
    .end local v8    # "gap":J
    .end local v14    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v15    # "margin":I
    .end local v17    # "width":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/devtools/toolbox/EventDetailFragment;->rootEvent:Lcom/taobao/weex/tracing/WXTracing$TraceEvent;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->payload:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    .line 99
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/devtools/toolbox/EventDetailFragment;->rootEvent:Lcom/taobao/weex/tracing/WXTracing$TraceEvent;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->payload:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "{"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 100
    new-instance v13, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/devtools/toolbox/EventDetailFragment;->rootEvent:Lcom/taobao/weex/tracing/WXTracing$TraceEvent;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->payload:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 101
    .local v13, "jsonObject":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/devtools/toolbox/EventDetailFragment;->rootEvent:Lcom/taobao/weex/tracing/WXTracing$TraceEvent;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->payload:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v13    # "jsonObject":Lorg/json/JSONObject;
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/devtools/toolbox/EventDetailFragment;->eventPayload:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/devtools/toolbox/EventDetailFragment;->rootEvent:Lcom/taobao/weex/tracing/WXTracing$TraceEvent;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->payload:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/devtools/toolbox/EventDetailFragment;->rootView:Landroid/view/View;

    move-object/from16 v18, v0

    return-object v18

    .line 102
    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/devtools/toolbox/EventDetailFragment;->rootEvent:Lcom/taobao/weex/tracing/WXTracing$TraceEvent;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->payload:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 103
    new-instance v12, Lorg/json/JSONArray;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/devtools/toolbox/EventDetailFragment;->rootEvent:Lcom/taobao/weex/tracing/WXTracing$TraceEvent;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->payload:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 104
    .local v12, "jsonArray":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/devtools/toolbox/EventDetailFragment;->rootEvent:Lcom/taobao/weex/tracing/WXTracing$TraceEvent;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->payload:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 106
    .end local v12    # "jsonArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v5

    .line 107
    .local v5, "e":Lorg/json/JSONException;
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method
