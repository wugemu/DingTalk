.class public final Lhrh;
.super Lcom/uc/webview/export/extension/UCClient;
.source "DingExtentionClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhrh$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field private b:Lhrg;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Lcom/uc/webview/export/extension/UCClient;-><init>()V

    .line 25
    const-string/jumbo v0, "UCClientTestINFO"

    iput-object v0, p0, Lhrh;->a:Ljava/lang/String;

    .line 35
    iput-boolean v1, p0, Lhrh;->c:Z

    .line 36
    iput-boolean v1, p0, Lhrh;->d:Z

    .line 37
    iput-boolean v1, p0, Lhrh;->e:Z

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lhrh;->f:D

    .line 41
    new-instance v0, Lhrg;

    invoke-direct {v0}, Lhrg;-><init>()V

    iput-object v0, p0, Lhrh;->b:Lhrg;

    .line 42
    return-void
.end method

.method public static synthetic a(Lhrh;)Lhrg;
    .locals 1
    .param p0, "x0"    # Lhrh;

    .prologue
    .line 23
    iget-object v0, p0, Lhrh;->b:Lhrg;

    return-object v0
.end method


# virtual methods
.method protected final clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 276
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final onFirstLayoutFinished(ZLjava/lang/String;)V
    .locals 0
    .param p1, "isPreread"    # Z
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 219
    invoke-super {p0, p1, p2}, Lcom/uc/webview/export/extension/UCClient;->onFirstLayoutFinished(ZLjava/lang/String;)V

    .line 220
    return-void
.end method

.method public final onFirstVisuallyNonEmptyDraw()V
    .locals 0

    .prologue
    .line 227
    invoke-super {p0}, Lcom/uc/webview/export/extension/UCClient;->onFirstVisuallyNonEmptyDraw()V

    .line 228
    return-void
.end method

.method public final onMoveCursorToTextInput(Lcom/uc/webview/export/extension/UCClient$MoveCursorToTextInputResult;)V
    .locals 0
    .param p1, "result"    # Lcom/uc/webview/export/extension/UCClient$MoveCursorToTextInputResult;

    .prologue
    .line 232
    invoke-super {p0, p1}, Lcom/uc/webview/export/extension/UCClient;->onMoveCursorToTextInput(Lcom/uc/webview/export/extension/UCClient$MoveCursorToTextInputResult;)V

    .line 233
    return-void
.end method

.method public final onPrereadFinished(Lcom/uc/webview/export/WebView;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "inReader"    # Z

    .prologue
    .line 244
    invoke-super {p0, p1, p2, p3}, Lcom/uc/webview/export/extension/UCClient;->onPrereadFinished(Lcom/uc/webview/export/WebView;Ljava/lang/String;Z)V

    .line 245
    return-void
.end method

.method public final onPrereadPageOpened(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 249
    invoke-super {p0, p1, p2}, Lcom/uc/webview/export/extension/UCClient;->onPrereadPageOpened(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method public final onReceivedDispatchResponse(Ljava/util/HashMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 164
    .local p1, "param":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-super {p0, p1}, Lcom/uc/webview/export/extension/UCClient;->onReceivedDispatchResponse(Ljava/util/HashMap;)V

    .line 165
    if-eqz p1, :cond_0

    const-string/jumbo v0, "httpcode"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v2, "httpcode"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitPageStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const/4 v7, 0x0

    .line 171
    .local v7, "httpCode":I
    :try_start_0
    const-string/jumbo v0, "httpcode"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 172
    .local v8, "httpCodeI":Ljava/lang/Integer;
    if-eqz v8, :cond_2

    .line 173
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 175
    :cond_2
    const/16 v0, 0x190

    if-lt v7, v0, :cond_0

    const/16 v0, 0x257

    if-gt v7, v0, :cond_0

    .line 176
    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 177
    .local v1, "url":Ljava/lang/String;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 178
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "appId"

    invoke-static {}, Lhhy;->a()Lhhy;

    move-result-object v2

    invoke-virtual {v2, v1}, Lhhy;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/WebLogger;

    move-result-object v0

    const-string/jumbo v3, "UC_PAGE_ERROR"

    const/4 v2, 0x0

    new-array v5, v2, [Ljava/lang/Object;

    move-object v2, v1

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->logHigh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[Ljava/lang/Object;)V

    .line 180
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->getInstance()Lgvi;

    move-result-object v0

    invoke-virtual {v0, v1, v7}, Lgvi;->pageExceptionWarn(Ljava/lang/String;I)V

    .line 181
    invoke-static {v1, v7}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitPage4xx5xx(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 183
    .end local v1    # "url":Ljava/lang/String;
    .end local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "httpCodeI":Ljava/lang/Integer;
    :catch_0
    move-exception v6

    .line 184
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final onResourceDidFinishLoading(Ljava/lang/String;J)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "size"    # J

    .prologue
    .line 260
    invoke-super {p0, p1, p2, p3}, Lcom/uc/webview/export/extension/UCClient;->onResourceDidFinishLoading(Ljava/lang/String;J)V

    .line 261
    return-void
.end method

.method public final onSaveFormDataPrompt(ILandroid/webkit/ValueCallback;)V
    .locals 0
    .param p1, "promptType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p2, "saveFormDataCallBack":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/Boolean;>;"
    invoke-super {p0, p1, p2}, Lcom/uc/webview/export/extension/UCClient;->onSaveFormDataPrompt(ILandroid/webkit/ValueCallback;)V

    .line 154
    return-void
.end method

.method public final onWebViewEvent(Lcom/uc/webview/export/WebView;ILjava/lang/Object;)V
    .locals 26
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "type"    # I
    .param p3, "data"    # Ljava/lang/Object;

    .prologue
    .line 71
    invoke-super/range {p0 .. p3}, Lcom/uc/webview/export/extension/UCClient;->onWebViewEvent(Lcom/uc/webview/export/WebView;ILjava/lang/Object;)V

    .line 72
    invoke-virtual/range {p1 .. p1}, Lcom/uc/webview/export/WebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 76
    .local v3, "url":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 78
    :pswitch_0
    :try_start_0
    move-object/from16 v0, p3

    check-cast v0, Ljava/util/HashMap;

    move-object v10, v0

    .line 79
    .local v10, "startData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "time"

    invoke-virtual {v10, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lhrh;->f:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 140
    .end local v10    # "startData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v8

    .line 141
    .local v8, "exception":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 82
    .end local v8    # "exception":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    move-object/from16 v0, p3

    check-cast v0, Ljava/util/HashMap;

    move-object v11, v0

    .line 83
    .local v11, "t0Data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "time"

    invoke-virtual {v11, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    .line 84
    .local v12, "t0Time":D
    move-object/from16 v0, p0

    iget-wide v4, v0, Lhrh;->f:D

    const-wide/16 v24, 0x0

    cmpl-double v2, v4, v24

    if-lez v2, :cond_0

    .line 85
    move-object/from16 v0, p0

    iget-wide v4, v0, Lhrh;->f:D

    sub-double v4, v12, v4

    invoke-static {v3, v4, v5}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitUCLoadTimeT0(Ljava/lang/String;D)V

    goto :goto_0

    .line 90
    .end local v11    # "t0Data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "t0Time":D
    :pswitch_2
    move-object/from16 v0, p3

    check-cast v0, Ljava/util/HashMap;

    move-object v14, v0

    .line 91
    .local v14, "t1Data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "time"

    invoke-virtual {v14, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    .line 92
    .local v16, "t1Time":D
    move-object/from16 v0, p0

    iget-wide v4, v0, Lhrh;->f:D

    const-wide/16 v24, 0x0

    cmpl-double v2, v4, v24

    if-lez v2, :cond_0

    .line 93
    move-object/from16 v0, p0

    iget-wide v4, v0, Lhrh;->f:D

    sub-double v4, v16, v4

    invoke-static {v3, v4, v5}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitUCLoadTimeT1(Ljava/lang/String;D)V

    goto :goto_0

    .line 98
    .end local v14    # "t1Data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16    # "t1Time":D
    :pswitch_3
    move-object/from16 v0, p3

    check-cast v0, Ljava/util/HashMap;

    move-object v15, v0

    .line 99
    .local v15, "t2Data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "time"

    invoke-virtual {v15, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    .line 100
    .local v18, "t2Time":D
    move-object/from16 v0, p0

    iget-wide v4, v0, Lhrh;->f:D

    const-wide/16 v24, 0x0

    cmpl-double v2, v4, v24

    if-lez v2, :cond_0

    .line 101
    move-object/from16 v0, p0

    iget-wide v4, v0, Lhrh;->f:D

    sub-double v4, v18, v4

    invoke-static {v3, v4, v5}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitUCLoadTimeT2(Ljava/lang/String;D)V

    goto/16 :goto_0

    .line 106
    .end local v15    # "t2Data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v18    # "t2Time":D
    :pswitch_4
    move-object/from16 v0, p3

    check-cast v0, Ljava/util/HashMap;

    move-object/from16 v20, v0

    .line 107
    .local v20, "t3Data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "time"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    .line 108
    .local v22, "t3Time":D
    move-object/from16 v0, p0

    iget-wide v4, v0, Lhrh;->f:D

    const-wide/16 v24, 0x0

    cmpl-double v2, v4, v24

    if-lez v2, :cond_0

    .line 109
    move-object/from16 v0, p0

    iget-wide v4, v0, Lhrh;->f:D

    sub-double v4, v22, v4

    invoke-static {v3, v4, v5}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitUCLoadTimeT3(Ljava/lang/String;D)V

    goto/16 :goto_0

    .line 113
    .end local v20    # "t3Data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v22    # "t3Time":D
    :pswitch_5
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 114
    .local v9, "intTime":I
    const/4 v2, 0x3

    if-ne v9, v2, :cond_1

    .line 115
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lhrh;->c:Z

    .line 117
    :cond_1
    const/4 v2, 0x6

    if-ne v9, v2, :cond_2

    .line 118
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lhrh;->d:Z

    .line 120
    :cond_2
    const/16 v2, 0x9

    if-ne v9, v2, :cond_0

    .line 121
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lhrh;->e:Z

    .line 122
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lhrh;->c:Z

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lhrh;->d:Z

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lhrh;->e:Z

    if-eqz v2, :cond_3

    .line 123
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->getInstance()Lgvi;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lgvi;->openWebViewBlankWarn(Ljava/lang/String;Z)V

    .line 124
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 125
    .local v6, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "appId"

    invoke-static {}, Lhhy;->a()Lhhy;

    move-result-object v4

    invoke-virtual {v4, v3}, Lhhy;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string/jumbo v2, "msg"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v7, "\u767d\u5c4f\u65f6\u95f4\u8d85\u8fc7"

    aput-object v7, v4, v5

    const/4 v5, 0x1

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v7, "s"

    aput-object v7, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/WebLogger;

    move-result-object v2

    const-string/jumbo v5, "UC_BLANKPAGE"

    const/4 v4, 0x4

    new-array v7, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v21, "UC_BLANKPAGE"

    aput-object v21, v7, v4

    const/4 v4, 0x1

    const-string/jumbo v21, "\u51fa\u73b0\u767d\u5c4f\u6301\u7eed"

    aput-object v21, v7, v4

    const/4 v4, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v7, v4

    const/4 v4, 0x3

    const-string/jumbo v21, "\u79d2"

    aput-object v21, v7, v4

    move-object v4, v3

    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->logHigh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[Ljava/lang/Object;)V

    .line 128
    const-string/jumbo v2, "NewBlankPage"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4, v9}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitUCBlankPage(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 131
    .end local v6    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lhrh;->c:Z

    .line 132
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lhrh;->d:Z

    .line 133
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lhrh;->e:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final onWifiSafePolicy(Lcom/uc/webview/export/WebView;Lcom/uc/webview/export/extension/IGenenalSyncResult;)V
    .locals 0
    .param p1, "webView"    # Lcom/uc/webview/export/WebView;
    .param p2, "result"    # Lcom/uc/webview/export/extension/IGenenalSyncResult;

    .prologue
    .line 271
    invoke-super {p0, p1, p2}, Lcom/uc/webview/export/extension/UCClient;->onWifiSafePolicy(Lcom/uc/webview/export/WebView;Lcom/uc/webview/export/extension/IGenenalSyncResult;)V

    .line 272
    return-void
.end method

.method public final onWillInterceptResponse(Ljava/util/HashMap;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 207
    .local p1, "param":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-super {p0, p1}, Lcom/uc/webview/export/extension/UCClient;->onWillInterceptResponse(Ljava/util/HashMap;)Z

    move-result v0

    return v0
.end method

.method public final onWillSendRequest(Lcom/uc/webview/export/WebResourceRequest;)Lcom/uc/webview/export/WebResourceRequest;
    .locals 1
    .param p1, "in"    # Lcom/uc/webview/export/WebResourceRequest;

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/uc/webview/export/extension/UCClient;->onWillSendRequest(Lcom/uc/webview/export/WebResourceRequest;)Lcom/uc/webview/export/WebResourceRequest;

    move-result-object v0

    return-object v0
.end method

.method public final shouldOverrideUrlLoading(Lcom/uc/webview/export/WebView;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "nonStandardType"    # I

    .prologue
    .line 282
    invoke-super {p0, p1, p2, p3}, Lcom/uc/webview/export/extension/UCClient;->shouldOverrideUrlLoading(Lcom/uc/webview/export/WebView;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method
