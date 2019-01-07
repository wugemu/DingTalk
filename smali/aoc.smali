.class public abstract Laoc;
.super Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler;
.source "AbstractScrollEventHandler.java"


# instance fields
.field private isStart:Z

.field protected mContentOffsetX:I

.field protected mContentOffsetY:I


# direct methods
.method public varargs constructor <init>(Landroid/content/Context;Laoa;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Laoa;
    .param p3, "extension"    # [Ljava/lang/Object;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler;-><init>(Landroid/content/Context;Laoa;[Ljava/lang/Object;)V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc;->isStart:Z

    .line 47
    return-void
.end method


# virtual methods
.method protected varargs fireEventByState(Ljava/lang/String;DDDDDD[Ljava/lang/Object;)V
    .locals 20
    .param p1, "state"    # Ljava/lang/String;
    .param p2, "contentOffsetX"    # D
    .param p4, "contentOffsetY"    # D
    .param p6, "dx"    # D
    .param p8, "dy"    # D
    .param p10, "tdx"    # D
    .param p12, "tdy"    # D
    .param p14, "extension"    # [Ljava/lang/Object;

    .prologue
    .line 120
    move-object/from16 v0, p0

    iget-object v13, v0, Laoc;->mCallback:Lanu$a;

    if-eqz v13, :cond_1

    .line 121
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 122
    .local v12, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v13, "state"

    move-object/from16 v0, p1

    invoke-interface {v12, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    move-object/from16 v0, p0

    iget-object v13, v0, Laoc;->mPlatformManager:Laoa;

    .line 2043
    iget-object v13, v13, Laoa;->a:Laoa$b;

    .line 123
    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-wide/from16 v0, p2

    move-object/from16 v2, v18

    invoke-interface {v13, v0, v1, v2}, Laoa$b;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide v14

    .line 124
    .local v14, "x":D
    move-object/from16 v0, p0

    iget-object v13, v0, Laoc;->mPlatformManager:Laoa;

    .line 3043
    iget-object v13, v13, Laoa;->a:Laoa$b;

    .line 124
    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-wide/from16 v0, p4

    move-object/from16 v2, v18

    invoke-interface {v13, v0, v1, v2}, Laoa$b;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide v16

    .line 125
    .local v16, "y":D
    const-string/jumbo v13, "x"

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v12, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string/jumbo v13, "y"

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v12, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    move-object/from16 v0, p0

    iget-object v13, v0, Laoc;->mPlatformManager:Laoa;

    .line 4043
    iget-object v13, v13, Laoa;->a:Laoa$b;

    .line 128
    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-wide/from16 v0, p6

    move-object/from16 v2, v18

    invoke-interface {v13, v0, v1, v2}, Laoa$b;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide v4

    .line 129
    .local v4, "_dx":D
    move-object/from16 v0, p0

    iget-object v13, v0, Laoc;->mPlatformManager:Laoa;

    .line 5043
    iget-object v13, v13, Laoa;->a:Laoa$b;

    .line 129
    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-wide/from16 v0, p8

    move-object/from16 v2, v18

    invoke-interface {v13, v0, v1, v2}, Laoa$b;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide v6

    .line 130
    .local v6, "_dy":D
    const-string/jumbo v13, "dx"

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v12, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string/jumbo v13, "dy"

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v12, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    move-object/from16 v0, p0

    iget-object v13, v0, Laoc;->mPlatformManager:Laoa;

    .line 6043
    iget-object v13, v13, Laoa;->a:Laoa$b;

    .line 133
    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-wide/from16 v0, p10

    move-object/from16 v2, v18

    invoke-interface {v13, v0, v1, v2}, Laoa$b;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide v8

    .line 134
    .local v8, "_tdx":D
    move-object/from16 v0, p0

    iget-object v13, v0, Laoc;->mPlatformManager:Laoa;

    .line 7043
    iget-object v13, v13, Laoa;->a:Laoa$b;

    .line 134
    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-wide/from16 v0, p12

    move-object/from16 v2, v18

    invoke-interface {v13, v0, v1, v2}, Laoa$b;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide v10

    .line 135
    .local v10, "_tdy":D
    const-string/jumbo v13, "tdx"

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v12, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string/jumbo v13, "tdy"

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v12, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string/jumbo v13, "token"

    move-object/from16 v0, p0

    iget-object v0, v0, Laoc;->mToken:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v12, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    if-eqz p14, :cond_0

    move-object/from16 v0, p14

    array-length v13, v0

    if-lez v13, :cond_0

    const/4 v13, 0x0

    aget-object v13, p14, v13

    instance-of v13, v13, Ljava/util/Map;

    if-eqz v13, :cond_0

    .line 140
    const/4 v13, 0x0

    aget-object v13, p14, v13

    check-cast v13, Ljava/util/Map;

    invoke-interface {v12, v13}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 143
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Laoc;->mCallback:Lanu$a;

    invoke-interface {v13, v12}, Lanu$a;->callback(Ljava/lang/Object;)V

    .line 144
    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v18, ">>>>>>>>>>>fire event:("

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v18, ","

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v18, ","

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v18, ","

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v18, ","

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v18, ","

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v18, ","

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v18, ")"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .end local v4    # "_dx":D
    .end local v6    # "_dy":D
    .end local v8    # "_tdx":D
    .end local v10    # "_tdy":D
    .end local v12    # "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v14    # "x":D
    .end local v16    # "y":D
    :cond_1
    return-void
.end method

.method protected handleScrollEvent(IIIIII)V
    .locals 18
    .param p1, "contentOffsetX"    # I
    .param p2, "contentOffsetY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "tdx"    # I
    .param p6, "tdy"    # I

    .prologue
    .line 93
    sget-boolean v2, Lanz;->a:Z

    if-eqz v2, :cond_0

    .line 94
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string/jumbo v3, "[ScrollHandler] scroll changed. (contentOffsetX:%d,contentOffsetY:%d,dx:%d,dy:%d,tdx:%d,tdy:%d)"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 96
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 94
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 99
    :cond_0
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Laoc;->mContentOffsetX:I

    .line 100
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Laoc;->mContentOffsetY:I

    .line 102
    move-object/from16 v0, p0

    iget-boolean v2, v0, Laoc;->isStart:Z

    if-nez v2, :cond_1

    .line 103
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Laoc;->isStart:Z

    .line 104
    const-string/jumbo v3, "start"

    move/from16 v0, p1

    int-to-double v4, v0

    move/from16 v0, p2

    int-to-double v6, v0

    move/from16 v0, p3

    int-to-double v8, v0

    move/from16 v0, p4

    int-to-double v10, v0

    move/from16 v0, p5

    int-to-double v12, v0

    move/from16 v0, p6

    int-to-double v14, v0

    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v16}, Laoc;->fireEventByState(Ljava/lang/String;DDDDDD[Ljava/lang/Object;)V

    .line 108
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Laoc;->mScope:Ljava/util/Map;

    move/from16 v0, p1

    int-to-double v4, v0

    move/from16 v0, p2

    int-to-double v6, v0

    move/from16 v0, p3

    int-to-double v8, v0

    move/from16 v0, p4

    int-to-double v10, v0

    move/from16 v0, p5

    int-to-double v12, v0

    move/from16 v0, p6

    int-to-double v14, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Laoc;->mPlatformManager:Laoa;

    .line 1043
    iget-object v0, v2, Laoa;->a:Laoa$b;

    move-object/from16 v16, v0

    .line 108
    invoke-static/range {v3 .. v16}, Laom;->a(Ljava/util/Map;DDDDDDLaoa$b;)V

    .line 109
    move-object/from16 v0, p0

    iget-object v2, v0, Laoc;->mExitExpressionPair:Laok;

    move-object/from16 v0, p0

    iget-object v3, v0, Laoc;->mScope:Ljava/util/Map;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Laoc;->evaluateExitExpression(Laok;Ljava/util/Map;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 110
    move-object/from16 v0, p0

    iget-object v2, v0, Laoc;->mExpressionHoldersMap:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v3, v0, Laoc;->mScope:Ljava/util/Map;

    const-string/jumbo v4, "scroll"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Laoc;->consumeExpression(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :cond_2
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v17

    .line 113
    .local v17, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "runtime error"

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Lanz;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 79
    invoke-super {p0}, Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler;->onDestroy()V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc;->isStart:Z

    .line 81
    return-void
.end method

.method public onDisable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 15
    .param p1, "sourceRef"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "eventType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 52
    invoke-virtual {p0}, Laoc;->clearExpressions()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc;->isStart:Z

    .line 54
    const-string/jumbo v1, "end"

    iget v0, p0, Laoc;->mContentOffsetX:I

    int-to-double v2, v0

    iget v0, p0, Laoc;->mContentOffsetY:I

    int-to-double v4, v0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v0, 0x0

    new-array v14, v0, [Ljava/lang/Object;

    move-object v0, p0

    invoke-virtual/range {v0 .. v14}, Laoc;->fireEventByState(Ljava/lang/String;DDDDDD[Ljava/lang/Object;)V

    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method protected onExit(Ljava/util/Map;)V
    .locals 17
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "scope":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v2, "internal_x"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 61
    .local v4, "contentOffsetX":D
    const-string/jumbo v2, "internal_y"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 62
    .local v6, "contentOffsetY":D
    const-string/jumbo v3, "exit"

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v16}, Laoc;->fireEventByState(Ljava/lang/String;DDDDDD[Ljava/lang/Object;)V

    .line 63
    return-void
.end method

.method protected onUserIntercept(Ljava/lang/String;Ljava/util/Map;)V
    .locals 18
    .param p1, "interceptorName"    # Ljava/lang/String;
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p2, "scope":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v2, "internal_x"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 68
    .local v4, "contentOffsetX":D
    const-string/jumbo v2, "internal_y"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 69
    .local v6, "contentOffsetY":D
    const-string/jumbo v2, "dx"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    .line 70
    .local v8, "dx":D
    const-string/jumbo v2, "dy"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    .line 71
    .local v10, "dy":D
    const-string/jumbo v2, "tdx"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    .line 72
    .local v12, "tdx":D
    const-string/jumbo v2, "tdy"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    .line 73
    .local v14, "tdy":D
    const-string/jumbo v3, "interceptor"

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/4 v2, 0x0

    const-string/jumbo v17, "interceptor"

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v17

    aput-object v17, v16, v2

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v16}, Laoc;->fireEventByState(Ljava/lang/String;DDDDDD[Ljava/lang/Object;)V

    .line 74
    return-void
.end method
