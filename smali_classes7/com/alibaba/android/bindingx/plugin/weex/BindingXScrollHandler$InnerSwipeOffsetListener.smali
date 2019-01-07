.class Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener;
.super Ljava/lang/Object;
.source "BindingXScrollHandler.java"

# interfaces
.implements Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$OnRefreshOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InnerSwipeOffsetListener"
.end annotation


# instance fields
.field private mContentOffsetY:I

.field private mLastDy:I

.field private mTy:I

.field final synthetic this$0:Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 328
    iput-object p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    iput v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener;->mContentOffsetY:I

    .line 331
    iput v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener;->mTy:I

    .line 332
    iput v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener;->mLastDy:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;
    .param p2, "x1"    # Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$1;

    .prologue
    .line 328
    invoke-direct {p0, p1}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener;

    .prologue
    .line 328
    iget v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener;->mContentOffsetY:I

    return v0
.end method


# virtual methods
.method public onOffsetChanged(I)V
    .locals 23
    .param p1, "offset"    # I

    .prologue
    .line 336
    move/from16 v0, p1

    neg-int v0, v0

    move/from16 v21, v0

    .line 337
    .local v21, "normalizedOffset":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener;->mContentOffsetY:I

    sub-int v19, v21, v4

    .line 339
    .local v19, "dy":I
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener;->mContentOffsetY:I

    .line 341
    if-nez v19, :cond_0

    .line 366
    :goto_0
    return-void

    .line 345
    :cond_0
    const/16 v20, 0x0

    .line 346
    .local v20, "isTurning":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener;->mLastDy:I

    move/from16 v0, v19

    invoke-static {v4, v0, v5}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->access$300(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;II)Z

    move-result v4

    if-nez v4, :cond_1

    .line 347
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener;->mContentOffsetY:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener;->mTy:I

    .line 348
    const/16 v20, 0x1

    .line 351
    :cond_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener;->mContentOffsetY:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener;->mTy:I

    sub-int v22, v4, v5

    .line 353
    .local v22, "tdy":I
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener;->mLastDy:I

    .line 355
    if-eqz v20, :cond_2

    .line 356
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;

    const-string/jumbo v5, "turn"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;

    invoke-static {v6}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->access$1300(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;)I

    move-result v6

    int-to-double v6, v6

    move-object/from16 v0, p0

    iget v8, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener;->mContentOffsetY:I

    int-to-double v8, v8

    const-wide/16 v10, 0x0

    move/from16 v0, v19

    int-to-double v12, v0

    const-wide/16 v14, 0x0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-static/range {v4 .. v18}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->access$1401(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;Ljava/lang/String;DDDDDD[Ljava/lang/Object;)V

    .line 360
    :cond_2
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v4

    new-instance v5, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener$1;

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v22

    invoke-direct {v5, v0, v1, v2}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener$1;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener;II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;

    .line 365
    invoke-static {v6}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->access$1800(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;)Ljava/lang/String;

    move-result-object v6

    .line 360
    invoke-virtual {v4, v5, v6}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;Ljava/lang/Object;)V

    goto :goto_0
.end method
