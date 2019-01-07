.class Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "BindingXScrollHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InnerListScrollListener"
.end annotation


# instance fields
.field private isVertical:Z

.field private mComponentRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/taobao/weex/ui/component/list/WXListComponent;",
            ">;"
        }
    .end annotation
.end field

.field private mContentOffsetX:I

.field private mContentOffsetY:I

.field private mLastDx:I

.field private mLastDy:I

.field private mTx:I

.field private mTy:I

.field final synthetic this$0:Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;


# direct methods
.method constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;ZLjava/lang/ref/WeakReference;)V
    .locals 3
    .param p2, "isVertical"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/taobao/weex/ui/component/list/WXListComponent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "componentRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/taobao/weex/ui/component/list/WXListComponent;>;"
    const/4 v1, 0x0

    .line 379
    iput-object p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 370
    iput v1, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->mContentOffsetX:I

    .line 371
    iput v1, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->mContentOffsetY:I

    .line 373
    iput v1, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->mTx:I

    iput v1, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->mTy:I

    .line 374
    iput v1, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->mLastDx:I

    iput v1, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->mLastDy:I

    .line 380
    iput-boolean p2, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->isVertical:Z

    .line 381
    iput-object p3, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->mComponentRef:Ljava/lang/ref/WeakReference;

    .line 382
    invoke-static {p1}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->access$1900(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->access$2000()Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 383
    invoke-static {}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->access$2000()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->access$1900(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$ContentOffsetHolder;

    .line 384
    .local v0, "holder":Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$ContentOffsetHolder;
    if-eqz v0, :cond_0

    .line 385
    iget v1, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$ContentOffsetHolder;->x:I

    iput v1, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->mContentOffsetX:I

    .line 386
    iget v1, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$ContentOffsetHolder;->y:I

    iput v1, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->mContentOffsetY:I

    .line 389
    .end local v0    # "holder":Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$ContentOffsetHolder;
    :cond_0
    return-void
.end method

.method static synthetic access$2200(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;

    .prologue
    .line 369
    iget v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->mContentOffsetX:I

    return v0
.end method

.method static synthetic access$2300(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;

    .prologue
    .line 369
    iget v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->mContentOffsetY:I

    return v0
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 20
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 398
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/ViewCompat;->z(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->mComponentRef:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->mComponentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 399
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->mComponentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/ui/component/list/WXListComponent;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->calcContentOffset(Landroid/support/v7/widget/RecyclerView;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->mContentOffsetY:I

    .line 403
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->mContentOffsetX:I

    add-int v2, v2, p2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->mContentOffsetX:I

    .line 405
    const/16 v17, 0x0

    .line 406
    .local v17, "isTurning":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->mLastDx:I

    move/from16 v0, p2

    invoke-static {v2, v0, v3}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->access$300(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;II)Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->isVertical:Z

    if-nez v2, :cond_0

    .line 407
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->mContentOffsetX:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->mTx:I

    .line 408
    const/16 v17, 0x1

    .line 411
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->mLastDy:I

    move/from16 v0, p3

    invoke-static {v2, v0, v3}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->access$300(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;II)Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->isVertical:Z

    if-eqz v2, :cond_1

    .line 412
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->mContentOffsetY:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->mTy:I

    .line 413
    const/16 v17, 0x1

    .line 416
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->mContentOffsetX:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->mTx:I

    sub-int v18, v2, v3

    .line 417
    .local v18, "tdx":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->mContentOffsetY:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->mTy:I

    sub-int v19, v2, v3

    .line 419
    .local v19, "tdy":I
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->mLastDx:I

    .line 420
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->mLastDy:I

    .line 422
    if-eqz v17, :cond_2

    .line 423
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;

    const-string/jumbo v3, "turn"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->mContentOffsetX:I

    int-to-double v4, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->mContentOffsetY:I

    int-to-double v6, v6

    move/from16 v0, p2

    int-to-double v8, v0

    move/from16 v0, p3

    int-to-double v10, v0

    move/from16 v0, v18

    int-to-double v12, v0

    move/from16 v0, v19

    int-to-double v14, v0

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-static/range {v2 .. v16}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->access$2100(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;Ljava/lang/String;DDDDDD[Ljava/lang/Object;)V

    .line 427
    :cond_2
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v8

    new-instance v2, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener$1;

    move-object/from16 v3, p0

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, v18

    move/from16 v7, v19

    invoke-direct/range {v2 .. v7}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener$1;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;IIII)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;

    .line 432
    invoke-static {v3}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->access$2500(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;)Ljava/lang/String;

    move-result-object v3

    .line 427
    invoke-virtual {v8, v2, v3}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 433
    return-void

    .line 401
    .end local v17    # "isTurning":Z
    .end local v18    # "tdx":I
    .end local v19    # "tdy":I
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->mContentOffsetY:I

    add-int v2, v2, p3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->mContentOffsetY:I

    goto/16 :goto_0
.end method
