.class Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;
.super Ljava/lang/Object;
.source "BindingXScrollHandler.java"

# interfaces
.implements Lcom/taobao/weex/ui/view/WXHorizontalScrollView$ScrollViewListener;
.implements Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InnerScrollViewListener"
.end annotation


# instance fields
.field private mContentOffsetX:I

.field private mContentOffsetY:I

.field private mLastDx:I

.field private mLastDy:I

.field private mTx:I

.field private mTy:I

.field final synthetic this$0:Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 258
    iput-object p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    iput v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;->mContentOffsetX:I

    .line 260
    iput v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;->mContentOffsetY:I

    .line 262
    iput v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;->mTx:I

    iput v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;->mTy:I

    .line 263
    iput v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;->mLastDx:I

    iput v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;->mLastDy:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;
    .param p2, "x1"    # Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$1;

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;

    .prologue
    .line 258
    iget v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;->mContentOffsetY:I

    return v0
.end method

.method static synthetic access$900(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;

    .prologue
    .line 258
    iget v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;->mContentOffsetX:I

    return v0
.end method

.method private onScrollInternal(II)V
    .locals 22
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 291
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;->mContentOffsetX:I

    sub-int v17, p1, v2

    .line 292
    .local v17, "dx":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;->mContentOffsetY:I

    sub-int v18, p2, v2

    .line 294
    .local v18, "dy":I
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;->mContentOffsetX:I

    .line 295
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;->mContentOffsetY:I

    .line 297
    if-nez v17, :cond_0

    if-nez v18, :cond_0

    .line 324
    :goto_0
    return-void

    .line 301
    :cond_0
    const/16 v19, 0x0

    .line 302
    .local v19, "isTurning":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;->mLastDy:I

    move/from16 v0, v18

    invoke-static {v2, v0, v3}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->access$300(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;II)Z

    move-result v2

    if-nez v2, :cond_1

    .line 303
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;->mContentOffsetY:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;->mTy:I

    .line 304
    const/16 v19, 0x1

    .line 307
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;->mContentOffsetX:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;->mTx:I

    sub-int v20, v2, v3

    .line 308
    .local v20, "tdx":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;->mContentOffsetY:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;->mTy:I

    sub-int v21, v2, v3

    .line 310
    .local v21, "tdy":I
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;->mLastDx:I

    .line 311
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;->mLastDy:I

    .line 313
    if-eqz v19, :cond_2

    .line 314
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;

    const-string/jumbo v3, "turn"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;->mContentOffsetX:I

    int-to-double v4, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;->mContentOffsetY:I

    int-to-double v6, v6

    move/from16 v0, v17

    int-to-double v8, v0

    move/from16 v0, v18

    int-to-double v10, v0

    move/from16 v0, v20

    int-to-double v12, v0

    move/from16 v0, v21

    int-to-double v14, v0

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-static/range {v2 .. v16}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->access$801(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;Ljava/lang/String;DDDDDD[Ljava/lang/Object;)V

    .line 318
    :cond_2
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v8

    new-instance v2, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener$1;

    move-object/from16 v3, p0

    move/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v20

    move/from16 v7, v21

    invoke-direct/range {v2 .. v7}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener$1;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;IIII)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;

    .line 323
    invoke-static {v3}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->access$1200(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;)Ljava/lang/String;

    move-result-object v3

    .line 318
    invoke-virtual {v8, v2, v3}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onScroll(Lcom/taobao/weex/ui/view/WXScrollView;II)V
    .locals 0
    .param p1, "wxScrollView"    # Lcom/taobao/weex/ui/view/WXScrollView;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 267
    invoke-direct {p0, p2, p3}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;->onScrollInternal(II)V

    .line 268
    return-void
.end method

.method public onScrollChanged(Lcom/taobao/weex/ui/view/WXHorizontalScrollView;IIII)V
    .locals 0
    .param p1, "wxHorizontalScrollView"    # Lcom/taobao/weex/ui/view/WXHorizontalScrollView;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "oldX"    # I
    .param p5, "oldY"    # I

    .prologue
    .line 272
    invoke-direct {p0, p2, p3}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;->onScrollInternal(II)V

    .line 273
    return-void
.end method

.method public onScrollChanged(Lcom/taobao/weex/ui/view/WXScrollView;IIII)V
    .locals 0
    .param p1, "wxScrollView"    # Lcom/taobao/weex/ui/view/WXScrollView;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I
    .param p5, "i3"    # I

    .prologue
    .line 278
    return-void
.end method

.method public onScrollStopped(Lcom/taobao/weex/ui/view/WXScrollView;II)V
    .locals 0
    .param p1, "wxScrollView"    # Lcom/taobao/weex/ui/view/WXScrollView;
    .param p2, "i"    # I
    .param p3, "i1"    # I

    .prologue
    .line 288
    return-void
.end method

.method public onScrollToBottom(Lcom/taobao/weex/ui/view/WXScrollView;II)V
    .locals 0
    .param p1, "wxScrollView"    # Lcom/taobao/weex/ui/view/WXScrollView;
    .param p2, "i"    # I
    .param p3, "i1"    # I

    .prologue
    .line 283
    return-void
.end method
