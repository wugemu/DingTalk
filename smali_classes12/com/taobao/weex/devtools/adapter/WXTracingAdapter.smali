.class public Lcom/taobao/weex/devtools/adapter/WXTracingAdapter;
.super Ljava/lang/Object;
.source "WXTracingAdapter.java"

# interfaces
.implements Lcom/taobao/weex/adapter/ITracingAdapter;


# instance fields
.field private volatile traceEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/taobao/weex/tracing/WXTracing$TraceEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/devtools/adapter/WXTracingAdapter;->traceEvents:Landroid/util/SparseArray;

    .line 38
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    new-instance v1, Lcom/taobao/weex/devtools/adapter/WXTracingAdapter$1;

    invoke-direct {v1, p0}, Lcom/taobao/weex/devtools/adapter/WXTracingAdapter$1;-><init>(Lcom/taobao/weex/devtools/adapter/WXTracingAdapter;)V

    invoke-virtual {v0, v1}, Lcom/taobao/weex/WXSDKManager;->registerInstanceLifeCycleCallbacks(Lcom/taobao/weex/WXSDKManager$InstanceLifeCycleCallbacks;)V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/devtools/adapter/WXTracingAdapter;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/devtools/adapter/WXTracingAdapter;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/taobao/weex/devtools/adapter/WXTracingAdapter;->traceEvents:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$100(Lcom/taobao/weex/devtools/adapter/WXTracingAdapter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/devtools/adapter/WXTracingAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/taobao/weex/devtools/adapter/WXTracingAdapter;->sendSummaryInfo(Ljava/lang/String;)V

    return-void
.end method

.method private collectNativeTracingData(Lcom/taobao/weex/tracing/WXTracing$TraceEvent;Lorg/json/JSONArray;)V
    .locals 8
    .param p1, "head"    # Lcom/taobao/weex/tracing/WXTracing$TraceEvent;
    .param p2, "out"    # Lorg/json/JSONArray;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 178
    iget-object v4, p1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->subEvents:Landroid/util/SparseArray;

    if-eqz v4, :cond_2

    .line 179
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->subEvents:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 180
    iget-object v4, p1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->subEvents:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;

    .line 181
    .local v3, "subEvent":Lcom/taobao/weex/tracing/WXTracing$TraceEvent;
    iget-boolean v4, v3, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->isSegment:Z

    if-nez v4, :cond_1

    .line 184
    const-string/jumbo v4, "domBatch"

    iget-object v5, v3, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->fname:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 187
    invoke-direct {p0, v3}, Lcom/taobao/weex/devtools/adapter/WXTracingAdapter;->parseToJSONObject(Lcom/taobao/weex/tracing/WXTracing$TraceEvent;)Lorg/json/JSONObject;

    move-result-object v2

    .line 188
    .local v2, "object":Lorg/json/JSONObject;
    const-string/jumbo v4, "JSThread"

    iget-object v5, v3, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->tname:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 190
    :try_start_0
    const-string/jumbo v4, "duration"

    iget-wide v6, v3, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->parseJsonTime:D

    invoke-virtual {v2, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :cond_0
    :goto_1
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 196
    invoke-direct {p0, v3, p2}, Lcom/taobao/weex/devtools/adapter/WXTracingAdapter;->collectNativeTracingData(Lcom/taobao/weex/tracing/WXTracing$TraceEvent;Lorg/json/JSONArray;)V

    .line 179
    .end local v2    # "object":Lorg/json/JSONObject;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 191
    .restart local v2    # "object":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 199
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "i":I
    .end local v2    # "object":Lorg/json/JSONObject;
    .end local v3    # "subEvent":Lcom/taobao/weex/tracing/WXTracing$TraceEvent;
    :cond_2
    return-void
.end method

.method private enableMonitor(Ljava/lang/String;)V
    .locals 8
    .param p1, "instanceId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, -0x2

    const/16 v6, 0xa

    .line 124
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    .line 125
    .local v1, "instance":Lcom/taobao/weex/WXSDKInstance;
    if-eqz v1, :cond_0

    .line 126
    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getContainerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/RenderContainer;

    .line 127
    .local v0, "container":Lcom/taobao/weex/RenderContainer;
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getUIContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 128
    .local v3, "textView":Landroid/widget/TextView;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Weex MNT:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    const-string/jumbo v4, "#AA1E90FF"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 130
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 131
    invoke-virtual {v3, v6, v6, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 132
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 133
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v4, 0x15

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 134
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    invoke-virtual {v0, v3}, Lcom/taobao/weex/RenderContainer;->addView(Landroid/view/View;)V

    .line 137
    new-instance v4, Lcom/taobao/weex/devtools/adapter/WXTracingAdapter$2;

    invoke-direct {v4, p0, v1, p1}, Lcom/taobao/weex/devtools/adapter/WXTracingAdapter$2;-><init>(Lcom/taobao/weex/devtools/adapter/WXTracingAdapter;Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    .end local v0    # "container":Lcom/taobao/weex/RenderContainer;
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "textView":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method private parseToJSONObject(Lcom/taobao/weex/tracing/WXTracing$TraceEvent;)Lorg/json/JSONObject;
    .locals 6
    .param p1, "event"    # Lcom/taobao/weex/tracing/WXTracing$TraceEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 235
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 237
    .local v1, "object":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "parentId"

    iget v3, p1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->parentId:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 238
    const-string/jumbo v2, "ref"

    iget-object v3, p1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->ref:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 239
    const-string/jumbo v2, "parentRef"

    iget-object v3, p1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->parentRef:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 240
    const-string/jumbo v2, "className"

    iget-object v3, p1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->classname:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 241
    const-string/jumbo v2, "ts"

    iget-wide v4, p1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->ts:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 242
    const-string/jumbo v2, "traceId"

    iget v3, p1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->traceId:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 243
    const-string/jumbo v2, "iid"

    iget-object v3, p1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->iid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 244
    const-string/jumbo v2, "duration"

    iget-wide v4, p1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->duration:D

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 245
    const-string/jumbo v2, "fName"

    iget-object v3, p1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->fname:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 246
    const-string/jumbo v2, "ph"

    iget-object v3, p1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->ph:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    const-string/jumbo v2, "name"

    iget-object v3, p1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 248
    const-string/jumbo v2, "tName"

    iget-object v3, p1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->tname:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :goto_0
    return-object v1

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private sendSummaryInfo(Ljava/lang/String;)V
    .locals 11
    .param p1, "instanceId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 202
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    .line 203
    .local v2, "instance":Lcom/taobao/weex/WXSDKInstance;
    if-eqz v2, :cond_1

    .line 204
    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getWXPerformance()Lcom/taobao/weex/common/WXPerformance;

    move-result-object v4

    .line 206
    .local v4, "performance":Lcom/taobao/weex/common/WXPerformance;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 207
    .local v3, "params":Lorg/json/JSONObject;
    const-string/jumbo v7, "platform"

    const-string/jumbo v8, "Android"

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 208
    const-string/jumbo v7, "JSTemplateSize"

    iget-wide v8, v4, Lcom/taobao/weex/common/WXPerformance;->JSTemplateSize:D

    invoke-virtual {v3, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 209
    const-string/jumbo v7, "screenRenderTime"

    iget-wide v8, v4, Lcom/taobao/weex/common/WXPerformance;->screenRenderTime:J

    invoke-virtual {v3, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 210
    const-string/jumbo v7, "totalTime"

    iget-wide v8, v4, Lcom/taobao/weex/common/WXPerformance;->totalTime:D

    invoke-virtual {v3, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 211
    const-string/jumbo v7, "networkTime"

    iget-wide v8, v4, Lcom/taobao/weex/common/WXPerformance;->networkTime:J

    invoke-virtual {v3, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 213
    new-instance v7, Lcom/taobao/weex/devtools/trace/DomTracker;

    invoke-direct {v7, v2}, Lcom/taobao/weex/devtools/trace/DomTracker;-><init>(Lcom/taobao/weex/WXSDKInstance;)V

    invoke-virtual {v7}, Lcom/taobao/weex/devtools/trace/DomTracker;->traverse()Lcom/taobao/weex/devtools/trace/HealthReport;

    move-result-object v5

    .line 214
    .local v5, "report":Lcom/taobao/weex/devtools/trace/HealthReport;
    if-eqz v5, :cond_0

    .line 215
    const-string/jumbo v7, "maxDeepViewLayer"

    iget v8, v5, Lcom/taobao/weex/devtools/trace/HealthReport;->maxLayer:I

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 216
    const-string/jumbo v7, "componentCount"

    iget v8, v5, Lcom/taobao/weex/devtools/trace/HealthReport;->componentCount:I

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 219
    :cond_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 220
    .local v6, "rpc":Lorg/json/JSONObject;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 221
    .local v0, "data":Lorg/json/JSONObject;
    const-string/jumbo v7, "summaryInfo"

    invoke-virtual {v0, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 222
    const-string/jumbo v7, "method"

    const-string/jumbo v8, "WxDebug.sendSummaryInfo"

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 223
    const-string/jumbo v7, "params"

    invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 224
    const-string/jumbo v7, "SummaryInfo"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/taobao/weex/devtools/common/LogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    invoke-static {}, Lcom/taobao/weex/devtools/debug/DebugBridge;->getInstance()Lcom/taobao/weex/devtools/debug/DebugBridge;

    move-result-object v7

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/taobao/weex/devtools/debug/DebugBridge;->sendToRemote(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v3    # "params":Lorg/json/JSONObject;
    .end local v4    # "performance":Lcom/taobao/weex/common/WXPerformance;
    .end local v5    # "report":Lcom/taobao/weex/devtools/trace/HealthReport;
    .end local v6    # "rpc":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 226
    .restart local v4    # "performance":Lcom/taobao/weex/common/WXPerformance;
    :catch_0
    move-exception v1

    .line 227
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 230
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v4    # "performance":Lcom/taobao/weex/common/WXPerformance;
    :cond_1
    const-string/jumbo v7, "WXTracing"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Instance "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " not found"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendTracingData(Ljava/lang/String;)V
    .locals 7
    .param p1, "instanceId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 148
    invoke-static {}, Lcom/taobao/weex/devtools/debug/DebugBridge;->getInstance()Lcom/taobao/weex/devtools/debug/DebugBridge;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/weex/devtools/debug/DebugBridge;->isSessionActive()Z

    move-result v4

    if-nez v4, :cond_0

    .line 149
    const-string/jumbo v4, "WXTracingAdapter"

    const-string/jumbo v5, "Debug session not active"

    invoke-static {v4, v5}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :goto_0
    return-void

    .line 153
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 154
    .local v0, "array":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/taobao/weex/devtools/adapter/WXTracingAdapter;->traceEvents:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;

    invoke-direct {p0, v4, v0}, Lcom/taobao/weex/devtools/adapter/WXTracingAdapter;->collectNativeTracingData(Lcom/taobao/weex/tracing/WXTracing$TraceEvent;Lorg/json/JSONArray;)V

    .line 156
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 157
    .local v2, "rpc":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 158
    .local v1, "data":Lorg/json/JSONObject;
    const-string/jumbo v4, "data"

    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    const-string/jumbo v4, "method"

    const-string/jumbo v5, "WxDebug.sendTracingData"

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    const-string/jumbo v4, "params"

    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    invoke-static {}, Lcom/taobao/weex/devtools/debug/DebugBridge;->getInstance()Lcom/taobao/weex/devtools/debug/DebugBridge;

    move-result-object v4

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/taobao/weex/devtools/debug/DebugBridge;->sendToRemote(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v2    # "rpc":Lorg/json/JSONObject;
    :goto_1
    invoke-static {}, Lcom/taobao/weex/devtools/debug/DebugBridge;->getInstance()Lcom/taobao/weex/devtools/debug/DebugBridge;

    move-result-object v4

    new-instance v5, Lcom/taobao/weex/devtools/adapter/WXTracingAdapter$3;

    invoke-direct {v5, p0, p1}, Lcom/taobao/weex/devtools/adapter/WXTracingAdapter$3;-><init>(Lcom/taobao/weex/devtools/adapter/WXTracingAdapter;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/taobao/weex/devtools/debug/DebugBridge;->post(Ljava/lang/Runnable;)V

    .line 174
    const-string/jumbo v4, "WXTracingAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Send tracing data with instance id "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :catch_0
    move-exception v3

    .line 164
    .local v3, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public disable()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public enable()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public getTraceEventByInstanceId(I)Lcom/taobao/weex/tracing/WXTracing$TraceEvent;
    .locals 1
    .param p1, "iid"    # I

    .prologue
    .line 120
    iget-object v0, p0, Lcom/taobao/weex/devtools/adapter/WXTracingAdapter;->traceEvents:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;

    return-object v0
.end method

.method public submitTracingEvent(Lcom/taobao/weex/tracing/WXTracing$TraceEvent;)V
    .locals 8
    .param p1, "event"    # Lcom/taobao/weex/tracing/WXTracing$TraceEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, -0x1

    .line 67
    iget-object v4, p1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->iid:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 68
    .local v2, "instanceId":I
    if-ne v2, v6, :cond_0

    .line 69
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Wrong instance id: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 71
    :cond_0
    iget-object v4, p0, Lcom/taobao/weex/devtools/adapter/WXTracingAdapter;->traceEvents:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;

    .line 73
    .local v1, "head":Lcom/taobao/weex/tracing/WXTracing$TraceEvent;
    if-nez v1, :cond_1

    .line 74
    new-instance v1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;

    .end local v1    # "head":Lcom/taobao/weex/tracing/WXTracing$TraceEvent;
    invoke-direct {v1}, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;-><init>()V

    .line 75
    .restart local v1    # "head":Lcom/taobao/weex/tracing/WXTracing$TraceEvent;
    iput v2, v1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->traceId:I

    .line 76
    iget-wide v4, p1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->ts:J

    iput-wide v4, v1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->ts:J

    .line 77
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, v1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->subEvents:Landroid/util/SparseArray;

    .line 78
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->extParams:Ljava/util/Map;

    .line 79
    iget-object v4, p0, Lcom/taobao/weex/devtools/adapter/WXTracingAdapter;->traceEvents:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 82
    :cond_1
    const-string/jumbo v4, "renderFinish"

    iget-object v5, p1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->fname:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 83
    iget-wide v4, p1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->duration:D

    iput-wide v4, v1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->duration:D

    .line 84
    iget-object v4, v1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->subEvents:Landroid/util/SparseArray;

    if-eqz v4, :cond_2

    .line 85
    const-wide/16 v4, 0x0

    iput-wide v4, p1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->duration:D

    .line 86
    iget-object v4, v1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->subEvents:Landroid/util/SparseArray;

    iget v5, p1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->traceId:I

    invoke-virtual {v4, v5, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 87
    iget-object v4, p1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->iid:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/taobao/weex/devtools/adapter/WXTracingAdapter;->sendTracingData(Ljava/lang/String;)V

    .line 117
    :cond_2
    :goto_0
    return-void

    .line 93
    :cond_3
    iget v4, p1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->parentId:I

    if-ne v4, v6, :cond_8

    .line 94
    iget-object v4, v1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->subEvents:Landroid/util/SparseArray;

    if-nez v4, :cond_4

    .line 95
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, v1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->subEvents:Landroid/util/SparseArray;

    .line 97
    :cond_4
    const-string/jumbo v4, "B"

    iget-object v5, p1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->ph:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string/jumbo v4, "X"

    iget-object v5, p1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->ph:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 98
    :cond_5
    iget-object v4, v1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->subEvents:Landroid/util/SparseArray;

    iget v5, p1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->traceId:I

    invoke-virtual {v4, v5, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_0

    .line 99
    :cond_6
    const-string/jumbo v4, "E"

    iget-object v5, p1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->ph:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 100
    iget-object v4, v1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->subEvents:Landroid/util/SparseArray;

    iget v5, p1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->traceId:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;

    .line 101
    .local v0, "beginEvent":Lcom/taobao/weex/tracing/WXTracing$TraceEvent;
    if-nez v0, :cond_7

    .line 102
    const-string/jumbo v4, "WXTracingAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "begin event not found: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->fname:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->traceId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_7
    iget-wide v4, p1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->ts:J

    iget-wide v6, v0, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->ts:J

    sub-long/2addr v4, v6

    long-to-double v4, v4

    iput-wide v4, v0, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->duration:D

    .line 106
    const-string/jumbo v4, "X"

    iput-object v4, v0, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->ph:Ljava/lang/String;

    goto :goto_0

    .line 109
    .end local v0    # "beginEvent":Lcom/taobao/weex/tracing/WXTracing$TraceEvent;
    :cond_8
    iget-object v4, v1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->subEvents:Landroid/util/SparseArray;

    iget v5, p1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->parentId:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;

    .line 110
    .local v3, "parent":Lcom/taobao/weex/tracing/WXTracing$TraceEvent;
    if-eqz v3, :cond_2

    .line 111
    iget-object v4, v3, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->subEvents:Landroid/util/SparseArray;

    if-nez v4, :cond_9

    .line 112
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, v3, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->subEvents:Landroid/util/SparseArray;

    .line 114
    :cond_9
    iget-object v4, v3, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->subEvents:Landroid/util/SparseArray;

    iget v5, p1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->traceId:I

    invoke-virtual {v4, v5, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method
