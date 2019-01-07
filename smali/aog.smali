.class public final Laog;
.super Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler;
.source "BindingXTouchHandler.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private a:F

.field private b:F

.field private c:D

.field private d:D

.field private e:Landroid/view/GestureDetector;

.field private f:Z

.field private g:Z


# direct methods
.method public varargs constructor <init>(Landroid/content/Context;Laoa;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Laoa;
    .param p3, "extension"    # [Ljava/lang/Object;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler;-><init>(Landroid/content/Context;Laoa;[Ljava/lang/Object;)V

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    :goto_0
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 57
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Landroid/view/GestureDetector;

    invoke-direct {v1, p1, p0, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v1, p0, Laog;->e:Landroid/view/GestureDetector;

    .line 58
    return-void

    .line 56
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    goto :goto_0
.end method

.method private varargs a(Ljava/lang/String;DD[Ljava/lang/Object;)V
    .locals 8
    .param p1, "state"    # Ljava/lang/String;
    .param p2, "dx"    # D
    .param p4, "dy"    # D
    .param p6, "extension"    # [Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    .line 273
    iget-object v1, p0, Laog;->mCallback:Lanu$a;

    if-eqz v1, :cond_1

    .line 274
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 275
    .local v0, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "state"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    iget-object v1, p0, Laog;->mPlatformManager:Laoa;

    .line 4043
    iget-object v1, v1, Laoa;->a:Laoa$b;

    .line 276
    new-array v6, v7, [Ljava/lang/Object;

    invoke-interface {v1, p2, p3, v6}, Laoa$b;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide v2

    .line 277
    .local v2, "x":D
    iget-object v1, p0, Laog;->mPlatformManager:Laoa;

    .line 5043
    iget-object v1, v1, Laoa;->a:Laoa$b;

    .line 277
    new-array v6, v7, [Ljava/lang/Object;

    invoke-interface {v1, p4, p5, v6}, Laoa$b;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide v4

    .line 278
    .local v4, "y":D
    const-string/jumbo v1, "deltaX"

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    const-string/jumbo v1, "deltaY"

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    const-string/jumbo v1, "token"

    iget-object v6, p0, Laog;->mToken:Ljava/lang/String;

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    array-length v1, p6

    if-lez v1, :cond_0

    aget-object v1, p6, v7

    instance-of v1, v1, Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 283
    aget-object v1, p6, v7

    check-cast v1, Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 286
    :cond_0
    iget-object v1, p0, Laog;->mCallback:Lanu$a;

    invoke-interface {v1, v0}, Lanu$a;->callback(Ljava/lang/Object;)V

    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v6, ">>>>>>>>>>>fire event:("

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, ")"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .end local v0    # "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "x":D
    .end local v4    # "y":D
    :cond_1
    return-void
.end method


# virtual methods
.method public final onActivityPause()V
    .locals 0

    .prologue
    .line 293
    return-void
.end method

.method public final onActivityResume()V
    .locals 0

    .prologue
    .line 297
    return-void
.end method

.method public final onBindExpression(Ljava/lang/String;Ljava/util/Map;Laok;Ljava/util/List;Lanu$a;)V
    .locals 0
    .param p1, "eventType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "exitExpressionPair"    # Laok;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "callback"    # Lanu$a;
        .annotation build Landroid/support/annotation/Nullable;
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
            ">;",
            "Laok;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Lanu$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 217
    .local p2, "globalConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "expressionArgs":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-super/range {p0 .. p5}, Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler;->onBindExpression(Ljava/lang/String;Ljava/util/Map;Laok;Ljava/util/List;Lanu$a;)V

    .line 218
    return-void
.end method

.method public final onCreate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "sourceRef"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "eventType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 188
    iget-object v4, p0, Laog;->mAnchorInstanceId:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v0, p0, Laog;->mInstanceId:Ljava/lang/String;

    .line 189
    .local v0, "instanceId":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Laog;->mPlatformManager:Laoa;

    .line 1048
    iget-object v4, v4, Laoa;->b:Laoa$c;

    .line 189
    new-array v5, v3, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-interface {v4, p1, v5}, Laoa$c;->findViewBy(Ljava/lang/String;[Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    .line 190
    .local v1, "sourceView":Landroid/view/View;
    if-nez v1, :cond_1

    .line 191
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[ExpressionTouchHandler] onCreate failed. sourceView not found:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lanz;->b(Ljava/lang/String;)V

    .line 196
    :goto_1
    return v2

    .line 188
    .end local v0    # "instanceId":Ljava/lang/String;
    .end local v1    # "sourceView":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Laog;->mAnchorInstanceId:Ljava/lang/String;

    goto :goto_0

    .line 194
    .restart local v0    # "instanceId":Ljava/lang/String;
    .restart local v1    # "sourceView":Landroid/view/View;
    :cond_1
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[ExpressionTouchHandler] onCreate success. {source:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ",type:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "}"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v3

    .line 196
    goto :goto_1
.end method

.method public final onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 246
    invoke-super {p0}, Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler;->onDestroy()V

    .line 247
    iget-object v0, p0, Laog;->mExpressionHoldersMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Laog;->mExpressionHoldersMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 249
    iput-object v1, p0, Laog;->mExpressionHoldersMap:Ljava/util/Map;

    .line 251
    :cond_0
    iput-object v1, p0, Laog;->mExitExpressionPair:Laok;

    .line 252
    iput-object v1, p0, Laog;->mCallback:Lanu$a;

    .line 253
    iput-boolean v2, p0, Laog;->g:Z

    .line 254
    iput-boolean v2, p0, Laog;->f:Z

    .line 255
    return-void
.end method

.method public final onDisable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "sourceRef"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "eventType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 222
    const/4 v4, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 2069
    :goto_1
    iget-boolean v4, p0, Laog;->f:Z

    .line 231
    if-nez v4, :cond_3

    .line 2073
    iget-boolean v4, p0, Laog;->g:Z

    .line 231
    if-nez v4, :cond_3

    .line 232
    iget-object v4, p0, Laog;->mAnchorInstanceId:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v1, p0, Laog;->mInstanceId:Ljava/lang/String;

    .line 233
    .local v1, "instanceId":Ljava/lang/String;
    :goto_2
    iget-object v4, p0, Laog;->mPlatformManager:Laoa;

    .line 3048
    iget-object v4, v4, Laoa;->b:Laoa$c;

    .line 233
    new-array v5, v2, [Ljava/lang/Object;

    aput-object v1, v5, v3

    invoke-interface {v4, p1, v5}, Laoa$c;->findViewBy(Ljava/lang/String;[Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 234
    .local v0, "hostView":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 235
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 237
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "remove touch listener success.["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .end local v0    # "hostView":Landroid/view/View;
    .end local v1    # "instanceId":Ljava/lang/String;
    :goto_3
    return v2

    .line 222
    :sswitch_0
    const-string/jumbo v5, "pan"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v3

    goto :goto_0

    :sswitch_1
    const-string/jumbo v5, "flick"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v2

    goto :goto_0

    .line 2061
    :pswitch_0
    iput-boolean v3, p0, Laog;->f:Z

    goto :goto_1

    .line 2065
    :pswitch_1
    iput-boolean v3, p0, Laog;->g:Z

    goto :goto_1

    .line 232
    :cond_2
    iget-object v1, p0, Laog;->mAnchorInstanceId:Ljava/lang/String;

    goto :goto_2

    :cond_3
    move v2, v3

    .line 240
    goto :goto_3

    .line 222
    nop

    :sswitch_data_0
    .sparse-switch
        0x1b09d -> :sswitch_0
        0x5d00c0b -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method protected final onExit(Ljava/util/Map;)V
    .locals 7
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

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 259
    .local p1, "scope":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v0, "internal_x"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 260
    .local v2, "deltaX":D
    const-string/jumbo v0, "internal_y"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 261
    .local v4, "deltaY":D
    const-string/jumbo v1, "exit"

    const/4 v0, 0x0

    new-array v6, v0, [Ljava/lang/Object;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Laog;->a(Ljava/lang/String;DD[Ljava/lang/Object;)V

    .line 262
    return-void
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 166
    iget-boolean v0, p0, Laog;->g:Z

    if-nez v0, :cond_0

    .line 169
    :cond_0
    return v1
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 162
    return-void
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 13
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 121
    iget-boolean v1, p0, Laog;->f:Z

    if-nez v1, :cond_0

    .line 123
    const/4 v1, 0x0

    .line 157
    :goto_0
    return v1

    .line 127
    :cond_0
    if-nez p1, :cond_1

    .line 129
    iget v10, p0, Laog;->a:F

    .line 130
    .local v10, "downX":F
    iget v11, p0, Laog;->b:F

    .line 136
    .local v11, "downY":F
    :goto_1
    if-nez p2, :cond_2

    .line 137
    const/4 v1, 0x0

    goto :goto_0

    .line 132
    .end local v10    # "downX":F
    .end local v11    # "downY":F
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v10

    .line 133
    .restart local v10    # "downX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v11

    .restart local v11    # "downY":F
    goto :goto_1

    .line 140
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 141
    .local v0, "curX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    .line 143
    .local v7, "curY":F
    sub-float v8, v0, v10

    .line 144
    .local v8, "deltaX":F
    sub-float v9, v7, v11

    .line 146
    .local v9, "deltaY":F
    :try_start_0
    sget-boolean v1, Lanz;->a:Z

    if-eqz v1, :cond_3

    .line 147
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v2, "[TouchHandler] pan moved. (x:%f,y:%f)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 149
    :cond_3
    iget-object v1, p0, Laog;->mScope:Ljava/util/Map;

    float-to-double v2, v8

    float-to-double v4, v9

    iget-object v6, p0, Laog;->mPlatformManager:Laoa;

    .line 1043
    iget-object v6, v6, Laoa;->a:Laoa$b;

    .line 149
    invoke-static/range {v1 .. v6}, Laom;->a(Ljava/util/Map;DDLaoa$b;)V

    .line 150
    iget-object v1, p0, Laog;->mExitExpressionPair:Laok;

    iget-object v2, p0, Laog;->mScope:Ljava/util/Map;

    invoke-virtual {p0, v1, v2}, Laog;->evaluateExitExpression(Laok;Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 151
    iget-object v1, p0, Laog;->mExpressionHoldersMap:Ljava/util/Map;

    iget-object v2, p0, Laog;->mScope:Ljava/util/Map;

    const-string/jumbo v3, "pan"

    invoke-virtual {p0, v1, v2, v3}, Laog;->consumeExpression(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :cond_4
    :goto_2
    const/4 v1, 0x0

    goto :goto_0

    .line 153
    :catch_0
    move-exception v12

    .line 154
    .local v12, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "runtime error"

    invoke-static {v1, v12}, Lanz;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public final onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 179
    return-void
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public final onStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "sourceRef"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "eventType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 201
    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 209
    :goto_1
    return-void

    .line 201
    :sswitch_0
    const-string/jumbo v2, "pan"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "flick"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1061
    :pswitch_0
    iput-boolean v1, p0, Laog;->f:Z

    goto :goto_1

    .line 1065
    :pswitch_1
    iput-boolean v1, p0, Laog;->g:Z

    goto :goto_1

    .line 201
    :sswitch_data_0
    .sparse-switch
        0x1b09d -> :sswitch_0
        0x5d00c0b -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 79
    :try_start_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 114
    :goto_0
    iget-object v0, p0, Laog;->e:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 81
    :pswitch_0
    :try_start_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Laog;->a:F

    .line 82
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Laog;->b:F

    .line 83
    const-string/jumbo v1, "start"

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    new-array v6, v0, [Ljava/lang/Object;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Laog;->a(Ljava/lang/String;DD[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 111
    :catch_0
    move-exception v7

    .line 112
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "runtime error "

    invoke-static {v0, v7}, Lanz;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 86
    .end local v7    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_2
    iget v0, p0, Laog;->a:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Laog;->b:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 87
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Laog;->a:F

    .line 88
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Laog;->b:F

    .line 89
    const-string/jumbo v1, "start"

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    new-array v6, v0, [Ljava/lang/Object;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Laog;->a(Ljava/lang/String;DD[Ljava/lang/Object;)V

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Laog;->a:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    iput-wide v0, p0, Laog;->c:D

    .line 93
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v1, p0, Laog;->b:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    iput-wide v0, p0, Laog;->d:D

    goto :goto_0

    .line 96
    :pswitch_2
    const/4 v0, 0x0

    iput v0, p0, Laog;->a:F

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Laog;->b:F

    .line 98
    invoke-virtual {p0}, Laog;->clearExpressions()V

    .line 99
    const-string/jumbo v1, "end"

    iget-wide v2, p0, Laog;->c:D

    iget-wide v4, p0, Laog;->d:D

    const/4 v0, 0x0

    new-array v6, v0, [Ljava/lang/Object;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Laog;->a(Ljava/lang/String;DD[Ljava/lang/Object;)V

    .line 101
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laog;->c:D

    .line 102
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laog;->d:D

    goto/16 :goto_0

    .line 105
    :pswitch_3
    const/4 v0, 0x0

    iput v0, p0, Laog;->a:F

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Laog;->b:F

    .line 107
    invoke-virtual {p0}, Laog;->clearExpressions()V

    .line 108
    const-string/jumbo v1, "cancel"

    iget-wide v2, p0, Laog;->c:D

    iget-wide v4, p0, Laog;->d:D

    const/4 v0, 0x0

    new-array v6, v0, [Ljava/lang/Object;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Laog;->a(Ljava/lang/String;DD[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected final onUserIntercept(Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
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

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 266
    .local p2, "scope":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v0, "internal_x"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 267
    .local v2, "deltaX":D
    const-string/jumbo v0, "internal_y"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 268
    .local v4, "deltaY":D
    const-string/jumbo v1, "interceptor"

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string/jumbo v7, "interceptor"

    invoke-static {v7, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v7

    aput-object v7, v6, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Laog;->a(Ljava/lang/String;DD[Ljava/lang/Object;)V

    .line 269
    return-void
.end method
