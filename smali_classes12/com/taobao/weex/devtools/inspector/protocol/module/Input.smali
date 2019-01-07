.class public Lcom/taobao/weex/devtools/inspector/protocol/module/Input;
.super Ljava/lang/Object;
.source "Input.java"

# interfaces
.implements Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsDomain;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/devtools/inspector/protocol/module/Input$DispatchKeyEventRequest;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/Input$EmulateTouchFromMouseEventRequest;
    }
.end annotation


# static fields
.field private static final KEY_UP:Ljava/lang/String; = "keyUp"

.field private static final MOUSE_BUTTON_LEFT:Ljava/lang/String; = "left"

.field private static final MOUSE_BUTTON_RIGHT:Ljava/lang/String; = "right"

.field private static final MOUSE_MOVED:Ljava/lang/String; = "mouseMoved"

.field private static final MOUSE_PRESSED:Ljava/lang/String; = "mousePressed"

.field private static final MOUSE_RELEASED:Ljava/lang/String; = "mouseReleased"

.field private static final MOUSE_WHEEL:Ljava/lang/String; = "mouseWheel"


# instance fields
.field private downTime:J

.field private lastPoint:Landroid/graphics/Point;

.field private mObjectMapper:Lcom/taobao/weex/devtools/json/ObjectMapper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/Input;->lastPoint:Landroid/graphics/Point;

    .line 36
    new-instance v0, Lcom/taobao/weex/devtools/json/ObjectMapper;

    invoke-direct {v0}, Lcom/taobao/weex/devtools/json/ObjectMapper;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/Input;->mObjectMapper:Lcom/taobao/weex/devtools/json/ObjectMapper;

    .line 37
    return-void
.end method

.method private down(II)V
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 147
    invoke-static {}, Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker;->get()Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker;->tryGetTopActivity()Landroid/app/Activity;

    move-result-object v8

    .line 148
    .local v8, "activity":Landroid/app/Activity;
    if-eqz v8, :cond_0

    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/Input;->downTime:J

    .line 150
    iget-wide v0, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/Input;->downTime:J

    iget-wide v2, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/Input;->downTime:J

    int-to-float v5, p1

    .line 153
    invoke-static {}, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->getsBitmapScale()F

    move-result v6

    div-float/2addr v5, v6

    int-to-float v6, p2

    .line 154
    invoke-static {}, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->getsBitmapScale()F

    move-result v7

    div-float/2addr v6, v7

    invoke-static {v8}, Lcom/taobao/weex/devtools/inspector/protocol/module/Input;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    move v7, v4

    .line 150
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v9

    .line 155
    .local v9, "down":Landroid/view/MotionEvent;
    new-instance v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Input$2;

    invoke-direct {v0, p0, v8, v9}, Lcom/taobao/weex/devtools/inspector/protocol/module/Input$2;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/Input;Landroid/app/Activity;Landroid/view/MotionEvent;)V

    invoke-virtual {v8, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 161
    invoke-virtual {v9}, Landroid/view/MotionEvent;->recycle()V

    .line 163
    .end local v9    # "down":Landroid/view/MotionEvent;
    :cond_0
    return-void
.end method

.method private static getStatusBarHeight(Landroid/content/Context;)I
    .locals 2
    .param p0, "host"    # Landroid/content/Context;

    .prologue
    .line 40
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 41
    const/4 v1, 0x0

    .line 45
    .end local p0    # "host":Landroid/content/Context;
    :goto_0
    return v1

    .line 43
    .restart local p0    # "host":Landroid/content/Context;
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 44
    .local v0, "frame":Landroid/graphics/Rect;
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "host":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 45
    iget v1, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0
.end method

.method private move(II)V
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 129
    invoke-static {}, Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker;->get()Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker;->tryGetTopActivity()Landroid/app/Activity;

    move-result-object v8

    .line 130
    .local v8, "activity":Landroid/app/Activity;
    if-eqz v8, :cond_0

    .line 131
    iget-wide v0, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/Input;->downTime:J

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x2

    int-to-float v5, p1

    .line 134
    invoke-static {}, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->getsBitmapScale()F

    move-result v6

    div-float/2addr v5, v6

    int-to-float v6, p2

    .line 135
    invoke-static {}, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->getsBitmapScale()F

    move-result v7

    div-float/2addr v6, v7

    invoke-static {v8}, Lcom/taobao/weex/devtools/inspector/protocol/module/Input;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    const/4 v7, 0x0

    .line 131
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v9

    .line 136
    .local v9, "move":Landroid/view/MotionEvent;
    new-instance v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Input$1;

    invoke-direct {v0, p0, v8, v9}, Lcom/taobao/weex/devtools/inspector/protocol/module/Input$1;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/Input;Landroid/app/Activity;Landroid/view/MotionEvent;)V

    invoke-virtual {v8, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 142
    invoke-virtual {v9}, Landroid/view/MotionEvent;->recycle()V

    .line 144
    .end local v9    # "move":Landroid/view/MotionEvent;
    :cond_0
    return-void
.end method

.method private declared-synchronized scroll(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 2
    .param p1, "last"    # Landroid/graphics/Point;
    .param p2, "now"    # Landroid/graphics/Point;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 121
    monitor-enter p0

    :try_start_0
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v0, v1}, Lcom/taobao/weex/devtools/inspector/protocol/module/Input;->down(II)V

    .line 122
    iget v0, p2, Landroid/graphics/Point;->x:I

    iget v1, p2, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v0, v1}, Lcom/taobao/weex/devtools/inspector/protocol/module/Input;->move(II)V

    .line 123
    iget v0, p2, Landroid/graphics/Point;->x:I

    iget v1, p2, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v0, v1}, Lcom/taobao/weex/devtools/inspector/protocol/module/Input;->up(II)V

    .line 124
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/Input;->lastPoint:Landroid/graphics/Point;

    iget v1, p2, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 125
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/Input;->lastPoint:Landroid/graphics/Point;

    iget v1, p2, Landroid/graphics/Point;->y:I

    iput v1, v0, Landroid/graphics/Point;->y:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    monitor-exit p0

    return-void

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private up(II)V
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 166
    invoke-static {}, Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker;->get()Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker;->tryGetTopActivity()Landroid/app/Activity;

    move-result-object v8

    .line 167
    .local v8, "activity":Landroid/app/Activity;
    if-eqz v8, :cond_0

    .line 168
    iget-wide v0, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/Input;->downTime:J

    .line 169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x1

    int-to-float v5, p1

    .line 171
    invoke-static {}, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->getsBitmapScale()F

    move-result v6

    div-float/2addr v5, v6

    int-to-float v6, p2

    .line 172
    invoke-static {}, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->getsBitmapScale()F

    move-result v7

    div-float/2addr v6, v7

    invoke-static {v8}, Lcom/taobao/weex/devtools/inspector/protocol/module/Input;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    const/4 v7, 0x0

    .line 168
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v9

    .line 173
    .local v9, "up":Landroid/view/MotionEvent;
    new-instance v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Input$3;

    invoke-direct {v0, p0, v8, v9}, Lcom/taobao/weex/devtools/inspector/protocol/module/Input$3;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/Input;Landroid/app/Activity;Landroid/view/MotionEvent;)V

    invoke-virtual {v8, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 179
    invoke-virtual {v9}, Landroid/view/MotionEvent;->recycle()V

    .line 181
    .end local v9    # "up":Landroid/view/MotionEvent;
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcResult;
    .locals 8
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 51
    iget-object v5, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/Input;->mObjectMapper:Lcom/taobao/weex/devtools/json/ObjectMapper;

    const-class v6, Lcom/taobao/weex/devtools/inspector/protocol/module/Input$DispatchKeyEventRequest;

    invoke-virtual {v5, p2, v6}, Lcom/taobao/weex/devtools/json/ObjectMapper;->convertValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/taobao/weex/devtools/inspector/protocol/module/Input$DispatchKeyEventRequest;

    .line 52
    .local v4, "request":Lcom/taobao/weex/devtools/inspector/protocol/module/Input$DispatchKeyEventRequest;
    const-string/jumbo v5, "keyUp"

    iget-object v6, v4, Lcom/taobao/weex/devtools/inspector/protocol/module/Input$DispatchKeyEventRequest;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 53
    new-instance v3, Landroid/app/Instrumentation;

    invoke-direct {v3}, Landroid/app/Instrumentation;-><init>()V

    .line 54
    .local v3, "instrumentation":Landroid/app/Instrumentation;
    iget-object v5, v4, Lcom/taobao/weex/devtools/inspector/protocol/module/Input$DispatchKeyEventRequest;->nativeVirtualKeyCode:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x30

    if-lt v5, v6, :cond_1

    iget-object v5, v4, Lcom/taobao/weex/devtools/inspector/protocol/module/Input$DispatchKeyEventRequest;->nativeVirtualKeyCode:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x39

    if-gt v5, v6, :cond_1

    .line 55
    iget-object v5, v4, Lcom/taobao/weex/devtools/inspector/protocol/module/Input$DispatchKeyEventRequest;->nativeVirtualKeyCode:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, -0x30

    add-int/lit8 v2, v5, 0x7

    .line 56
    .local v2, "code":I
    invoke-virtual {v3, v2}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V

    .line 80
    .end local v2    # "code":I
    .end local v3    # "instrumentation":Landroid/app/Instrumentation;
    :cond_0
    :goto_0
    return-object v7

    .line 58
    .restart local v3    # "instrumentation":Landroid/app/Instrumentation;
    :cond_1
    iget-object v5, v4, Lcom/taobao/weex/devtools/inspector/protocol/module/Input$DispatchKeyEventRequest;->nativeVirtualKeyCode:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x41

    if-lt v5, v6, :cond_2

    iget-object v5, v4, Lcom/taobao/weex/devtools/inspector/protocol/module/Input$DispatchKeyEventRequest;->nativeVirtualKeyCode:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x5a

    if-gt v5, v6, :cond_2

    .line 60
    iget-object v5, v4, Lcom/taobao/weex/devtools/inspector/protocol/module/Input$DispatchKeyEventRequest;->nativeVirtualKeyCode:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, -0x41

    add-int/lit8 v2, v5, 0x1d

    .line 61
    .restart local v2    # "code":I
    invoke-virtual {v3, v2}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V

    goto :goto_0

    .line 63
    .end local v2    # "code":I
    :cond_2
    iget-object v5, v4, Lcom/taobao/weex/devtools/inspector/protocol/module/Input$DispatchKeyEventRequest;->nativeVirtualKeyCode:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_3

    .line 64
    const/16 v5, 0x43

    invoke-virtual {v3, v5}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V

    goto :goto_0

    .line 66
    :cond_3
    iget-object v5, v4, Lcom/taobao/weex/devtools/inspector/protocol/module/Input$DispatchKeyEventRequest;->nativeVirtualKeyCode:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0xd

    if-ne v5, v6, :cond_4

    .line 67
    const/16 v5, 0x42

    invoke-virtual {v3, v5}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V

    goto :goto_0

    .line 69
    :cond_4
    iget-object v5, v4, Lcom/taobao/weex/devtools/inspector/protocol/module/Input$DispatchKeyEventRequest;->nativeVirtualKeyCode:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x10

    if-ne v5, v6, :cond_5

    .line 70
    const/16 v5, 0x3b

    invoke-virtual {v3, v5}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V

    goto :goto_0

    .line 72
    :cond_5
    iget-object v5, v4, Lcom/taobao/weex/devtools/inspector/protocol/module/Input$DispatchKeyEventRequest;->nativeVirtualKeyCode:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x14

    if-ne v5, v6, :cond_6

    .line 73
    const/16 v5, 0x73

    invoke-virtual {v3, v5}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V

    goto :goto_0

    .line 76
    :cond_6
    iget-object v5, v4, Lcom/taobao/weex/devtools/inspector/protocol/module/Input$DispatchKeyEventRequest;->nativeVirtualKeyCode:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 77
    .local v0, "ascii":I
    int-to-char v1, v0

    .line 78
    .local v1, "c":C
    invoke-virtual {v3, v1}, Landroid/app/Instrumentation;->sendCharacterSync(I)V

    goto :goto_0
.end method

.method public emulateTouchFromMouseEvent(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcResult;
    .locals 6
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 85
    iget-object v3, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/Input;->mObjectMapper:Lcom/taobao/weex/devtools/json/ObjectMapper;

    const-class v4, Lcom/taobao/weex/devtools/inspector/protocol/module/Input$EmulateTouchFromMouseEventRequest;

    invoke-virtual {v3, p2, v4}, Lcom/taobao/weex/devtools/json/ObjectMapper;->convertValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Input$EmulateTouchFromMouseEventRequest;

    .line 88
    .local v2, "request":Lcom/taobao/weex/devtools/inspector/protocol/module/Input$EmulateTouchFromMouseEventRequest;
    :try_start_0
    const-string/jumbo v3, "mousePressed"

    iget-object v4, v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Input$EmulateTouchFromMouseEventRequest;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "left"

    iget-object v4, v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Input$EmulateTouchFromMouseEventRequest;->button:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 89
    iget-object v3, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/Input;->lastPoint:Landroid/graphics/Point;

    iget v4, v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Input$EmulateTouchFromMouseEventRequest;->x:I

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 90
    iget-object v3, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/Input;->lastPoint:Landroid/graphics/Point;

    iget v4, v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Input$EmulateTouchFromMouseEventRequest;->y:I

    iput v4, v3, Landroid/graphics/Point;->y:I

    .line 91
    iget v3, v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Input$EmulateTouchFromMouseEventRequest;->x:I

    iget v4, v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Input$EmulateTouchFromMouseEventRequest;->y:I

    invoke-direct {p0, v3, v4}, Lcom/taobao/weex/devtools/inspector/protocol/module/Input;->down(II)V

    .line 117
    :cond_0
    :goto_0
    return-object v5

    .line 92
    :cond_1
    const-string/jumbo v3, "mouseReleased"

    iget-object v4, v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Input$EmulateTouchFromMouseEventRequest;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 93
    const-string/jumbo v3, "left"

    iget-object v4, v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Input$EmulateTouchFromMouseEventRequest;->button:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 94
    iget-object v3, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/Input;->lastPoint:Landroid/graphics/Point;

    iget v4, v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Input$EmulateTouchFromMouseEventRequest;->x:I

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 95
    iget-object v3, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/Input;->lastPoint:Landroid/graphics/Point;

    iget v4, v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Input$EmulateTouchFromMouseEventRequest;->y:I

    iput v4, v3, Landroid/graphics/Point;->y:I

    .line 96
    iget v3, v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Input$EmulateTouchFromMouseEventRequest;->x:I

    iget v4, v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Input$EmulateTouchFromMouseEventRequest;->y:I

    invoke-direct {p0, v3, v4}, Lcom/taobao/weex/devtools/inspector/protocol/module/Input;->up(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 97
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    const-string/jumbo v3, "right"

    iget-object v4, v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Input$EmulateTouchFromMouseEventRequest;->button:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 98
    invoke-static {}, Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker;->get()Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker;->getActivitiesView()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 99
    new-instance v1, Landroid/app/Instrumentation;

    invoke-direct {v1}, Landroid/app/Instrumentation;-><init>()V

    .line 100
    .local v1, "instrumentation":Landroid/app/Instrumentation;
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V

    goto :goto_0

    .line 103
    .end local v1    # "instrumentation":Landroid/app/Instrumentation;
    :cond_3
    const-string/jumbo v3, "mouseMoved"

    iget-object v4, v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Input$EmulateTouchFromMouseEventRequest;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 104
    iget v3, v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Input$EmulateTouchFromMouseEventRequest;->x:I

    iget v4, v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Input$EmulateTouchFromMouseEventRequest;->y:I

    invoke-direct {p0, v3, v4}, Lcom/taobao/weex/devtools/inspector/protocol/module/Input;->move(II)V

    goto :goto_0

    .line 105
    :cond_4
    const-string/jumbo v3, "mouseWheel"

    iget-object v4, v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Input$EmulateTouchFromMouseEventRequest;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
