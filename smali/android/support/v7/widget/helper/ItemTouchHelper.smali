.class public Landroid/support/v7/widget/helper/ItemTouchHelper;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "ItemTouchHelper.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;,
        Landroid/support/v7/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;,
        Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;,
        Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;,
        Landroid/support/v7/widget/helper/ItemTouchHelper$ViewDropHandler;
    }
.end annotation


# static fields
.field static final ACTION_MODE_DRAG_MASK:I = 0xff0000

.field private static final ACTION_MODE_IDLE_MASK:I = 0xff

.field static final ACTION_MODE_SWIPE_MASK:I = 0xff00

.field public static final ACTION_STATE_DRAG:I = 0x2

.field public static final ACTION_STATE_IDLE:I = 0x0

.field public static final ACTION_STATE_SWIPE:I = 0x1

.field static final ACTIVE_POINTER_ID_NONE:I = -0x1

.field public static final ANIMATION_TYPE_DRAG:I = 0x8

.field public static final ANIMATION_TYPE_SWIPE_CANCEL:I = 0x4

.field public static final ANIMATION_TYPE_SWIPE_SUCCESS:I = 0x2

.field static final DEBUG:Z = false

.field static final DIRECTION_FLAG_COUNT:I = 0x8

.field public static final DOWN:I = 0x2

.field public static final END:I = 0x20

.field public static final LEFT:I = 0x4

.field private static final PIXELS_PER_SECOND:I = 0x3e8

.field public static final RIGHT:I = 0x8

.field public static final START:I = 0x10

.field static final TAG:Ljava/lang/String; = "ItemTouchHelper"

.field public static final UP:I = 0x1


# instance fields
.field mActionState:I

.field mActivePointerId:I

.field mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

.field private mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

.field private mDistances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDragScrollStartTimeInMs:J

.field mDx:F

.field mDy:F

.field mGestureDetector:Lga;

.field mInitialTouchX:F

.field mInitialTouchY:F

.field mMaxSwipeVelocity:F

.field private final mOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

.field mOverdrawChild:Landroid/view/View;

.field mOverdrawChildPosition:I

.field final mPendingCleanup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mRecoverAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;",
            ">;"
        }
    .end annotation
.end field

.field mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field final mScrollRunnable:Ljava/lang/Runnable;

.field mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field mSelectedFlags:I

.field mSelectedStartX:F

.field mSelectedStartY:F

.field private mSlop:I

.field private mSwapTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mSwipeEscapeVelocity:F

.field private final mTmpPosition:[F

.field private mTmpRect:Landroid/graphics/Rect;

.field mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V
    .locals 3
    .param p1, "callback"    # Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 427
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    .line 167
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    .line 172
    iput-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 211
    iput v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    .line 221
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActionState:I

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    .line 247
    new-instance v0, Landroid/support/v7/widget/helper/ItemTouchHelper$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/helper/ItemTouchHelper$1;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper;)V

    iput-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mScrollRunnable:Ljava/lang/Runnable;

    .line 274
    iput-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

    .line 281
    iput-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 288
    iput v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOverdrawChildPosition:I

    .line 295
    new-instance v0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/helper/ItemTouchHelper$2;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper;)V

    iput-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    .line 428
    iput-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    .line 429
    return-void
.end method

.method private addChildDrawingOrderCallback()V
    .locals 2

    .prologue
    .line 1249
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1272
    :goto_0
    return-void

    .line 1252
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

    if-nez v0, :cond_1

    .line 1253
    new-instance v0, Landroid/support/v7/widget/helper/ItemTouchHelper$5;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/helper/ItemTouchHelper$5;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper;)V

    iput-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

    .line 1271
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setChildDrawingOrderCallback(Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;)V

    goto :goto_0
.end method

.method private checkHorizontalSwipe(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)I
    .locals 13
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "flags"    # I

    .prologue
    const/16 v6, 0x8

    const/4 v7, 0x4

    const/4 v12, 0x0

    .line 1196
    and-int/lit8 v8, p2, 0xc

    if-eqz v8, :cond_3

    .line 1197
    iget v8, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    cmpl-float v8, v8, v12

    if-lez v8, :cond_0

    move v1, v6

    .line 1198
    .local v1, "dirFlag":I
    :goto_0
    iget-object v8, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v8, :cond_2

    iget v8, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    if-ltz v8, :cond_2

    .line 1199
    iget-object v8, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v9, 0x3e8

    iget-object v10, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget v11, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mMaxSwipeVelocity:F

    .line 1200
    invoke-virtual {v10, v11}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getSwipeVelocityThreshold(F)F

    move-result v10

    .line 1199
    invoke-virtual {v8, v9, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1201
    iget-object v8, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v9, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {v8, v9}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v4

    .line 1202
    .local v4, "xVelocity":F
    iget-object v8, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v9, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {v8, v9}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v5

    .line 1203
    .local v5, "yVelocity":F
    cmpl-float v8, v4, v12

    if-lez v8, :cond_1

    move v3, v6

    .line 1204
    .local v3, "velDirFlag":I
    :goto_1
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1205
    .local v0, "absXVelocity":F
    and-int v6, v3, p2

    if-eqz v6, :cond_2

    if-ne v1, v3, :cond_2

    iget-object v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget v7, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSwipeEscapeVelocity:F

    .line 1206
    invoke-virtual {v6, v7}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getSwipeEscapeVelocity(F)F

    move-result v6

    cmpl-float v6, v0, v6

    if-ltz v6, :cond_2

    .line 1207
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v0, v6

    if-lez v6, :cond_2

    .line 1219
    .end local v0    # "absXVelocity":F
    .end local v1    # "dirFlag":I
    .end local v3    # "velDirFlag":I
    .end local v4    # "xVelocity":F
    .end local v5    # "yVelocity":F
    :goto_2
    return v3

    :cond_0
    move v1, v7

    .line 1197
    goto :goto_0

    .restart local v1    # "dirFlag":I
    .restart local v4    # "xVelocity":F
    .restart local v5    # "yVelocity":F
    :cond_1
    move v3, v7

    .line 1203
    goto :goto_1

    .line 1212
    .end local v4    # "xVelocity":F
    .end local v5    # "yVelocity":F
    :cond_2
    iget-object v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    .line 1213
    invoke-virtual {v7, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getSwipeThreshold(Landroid/support/v7/widget/RecyclerView$ViewHolder;)F

    move-result v7

    mul-float v2, v6, v7

    .line 1215
    .local v2, "threshold":F
    and-int v6, p2, v1

    if-eqz v6, :cond_3

    iget v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v2

    if-lez v6, :cond_3

    move v3, v1

    .line 1216
    goto :goto_2

    .line 1219
    .end local v1    # "dirFlag":I
    .end local v2    # "threshold":F
    :cond_3
    const/4 v3, 0x0

    goto :goto_2
.end method

.method private checkVerticalSwipe(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)I
    .locals 13
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "flags"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v12, 0x0

    .line 1223
    and-int/lit8 v8, p2, 0x3

    if-eqz v8, :cond_3

    .line 1224
    iget v8, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    cmpl-float v8, v8, v12

    if-lez v8, :cond_0

    move v1, v6

    .line 1225
    .local v1, "dirFlag":I
    :goto_0
    iget-object v8, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v8, :cond_2

    iget v8, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    if-ltz v8, :cond_2

    .line 1226
    iget-object v8, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v9, 0x3e8

    iget-object v10, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget v11, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mMaxSwipeVelocity:F

    .line 1227
    invoke-virtual {v10, v11}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getSwipeVelocityThreshold(F)F

    move-result v10

    .line 1226
    invoke-virtual {v8, v9, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1228
    iget-object v8, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v9, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {v8, v9}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v4

    .line 1229
    .local v4, "xVelocity":F
    iget-object v8, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v9, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {v8, v9}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v5

    .line 1230
    .local v5, "yVelocity":F
    cmpl-float v8, v5, v12

    if-lez v8, :cond_1

    move v3, v6

    .line 1231
    .local v3, "velDirFlag":I
    :goto_1
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1232
    .local v0, "absYVelocity":F
    and-int v6, v3, p2

    if-eqz v6, :cond_2

    if-ne v3, v1, :cond_2

    iget-object v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget v7, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSwipeEscapeVelocity:F

    .line 1233
    invoke-virtual {v6, v7}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getSwipeEscapeVelocity(F)F

    move-result v6

    cmpl-float v6, v0, v6

    if-ltz v6, :cond_2

    .line 1234
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v0, v6

    if-lez v6, :cond_2

    .line 1245
    .end local v0    # "absYVelocity":F
    .end local v1    # "dirFlag":I
    .end local v3    # "velDirFlag":I
    .end local v4    # "xVelocity":F
    .end local v5    # "yVelocity":F
    :goto_2
    return v3

    :cond_0
    move v1, v7

    .line 1224
    goto :goto_0

    .restart local v1    # "dirFlag":I
    .restart local v4    # "xVelocity":F
    .restart local v5    # "yVelocity":F
    :cond_1
    move v3, v7

    .line 1230
    goto :goto_1

    .line 1239
    .end local v4    # "xVelocity":F
    .end local v5    # "yVelocity":F
    :cond_2
    iget-object v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    .line 1240
    invoke-virtual {v7, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getSwipeThreshold(Landroid/support/v7/widget/RecyclerView$ViewHolder;)F

    move-result v7

    mul-float v2, v6, v7

    .line 1241
    .local v2, "threshold":F
    and-int v6, p2, v1

    if-eqz v6, :cond_3

    iget v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v2

    if-lez v6, :cond_3

    move v3, v1

    .line 1242
    goto :goto_2

    .line 1245
    .end local v1    # "dirFlag":I
    .end local v2    # "threshold":F
    :cond_3
    const/4 v3, 0x0

    goto :goto_2
.end method

.method private destroyCallbacks()V
    .locals 6

    .prologue
    .line 475
    iget-object v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, p0}, Landroid/support/v7/widget/RecyclerView;->removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 476
    iget-object v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->removeOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 477
    iget-object v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, p0}, Landroid/support/v7/widget/RecyclerView;->removeOnChildAttachStateChangeListener(Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 479
    iget-object v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 480
    .local v1, "recoverAnimSize":I
    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 481
    iget-object v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;

    .line 482
    .local v2, "recoverAnimation":Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;
    iget-object v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v4, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v2, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 480
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 484
    .end local v2    # "recoverAnimation":Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;
    :cond_0
    iget-object v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 485
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 486
    const/4 v3, -0x1

    iput v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOverdrawChildPosition:I

    .line 487
    invoke-direct {p0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->releaseVelocityTracker()V

    .line 488
    return-void
.end method

.method private findSwapTargets(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Ljava/util/List;
    .locals 25
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 764
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    move-object/from16 v22, v0

    if-nez v22, :cond_0

    .line 765
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    .line 766
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDistances:Ljava/util/List;

    .line 771
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getBoundingBoxMargin()I

    move-result v16

    .line 772
    .local v16, "margin":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedStartX:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    move/from16 v23, v0

    add-float v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->round(F)I

    move-result v22

    sub-int v14, v22, v16

    .line 773
    .local v14, "left":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedStartY:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    move/from16 v23, v0

    add-float v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->round(F)I

    move-result v22

    sub-int v21, v22, v16

    .line 774
    .local v21, "top":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getWidth()I

    move-result v22

    add-int v22, v22, v14

    mul-int/lit8 v23, v16, 0x2

    add-int v20, v22, v23

    .line 775
    .local v20, "right":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getHeight()I

    move-result v22

    add-int v22, v22, v21

    mul-int/lit8 v23, v16, 0x2

    add-int v4, v22, v23

    .line 776
    .local v4, "bottom":I
    add-int v22, v14, v20

    div-int/lit8 v5, v22, 0x2

    .line 777
    .local v5, "centerX":I
    add-int v22, v21, v4

    div-int/lit8 v6, v22, 0x2

    .line 778
    .local v6, "centerY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v15

    .line 779
    .local v15, "lm":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-virtual {v15}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v7

    .line 780
    .local v7, "childCount":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v7, :cond_3

    .line 781
    invoke-virtual {v15, v12}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 782
    .local v17, "other":Landroid/view/View;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_2

    .line 785
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBottom()I

    move-result v22

    move/from16 v0, v22

    move/from16 v1, v21

    if-lt v0, v1, :cond_2

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v22

    move/from16 v0, v22

    if-gt v0, v4, :cond_2

    .line 786
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getRight()I

    move-result v22

    move/from16 v0, v22

    if-lt v0, v14, :cond_2

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLeft()I

    move-result v22

    move/from16 v0, v22

    move/from16 v1, v20

    if-gt v0, v1, :cond_2

    .line 789
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v18

    .line 790
    .local v18, "otherVh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->canDropOver(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 792
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLeft()I

    move-result v22

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getRight()I

    move-result v23

    add-int v22, v22, v23

    div-int/lit8 v22, v22, 0x2

    sub-int v22, v5, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 793
    .local v10, "dx":I
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v22

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBottom()I

    move-result v23

    add-int v22, v22, v23

    div-int/lit8 v22, v22, 0x2

    sub-int v22, v6, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v11

    .line 794
    .local v11, "dy":I
    mul-int v22, v10, v10

    mul-int v23, v11, v11

    add-int v9, v22, v23

    .line 796
    .local v9, "dist":I
    const/16 v19, 0x0

    .line 797
    .local v19, "pos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v8

    .line 798
    .local v8, "cnt":I
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_2
    if-ge v13, v8, :cond_1

    .line 799
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDistances:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move/from16 v0, v22

    if-le v9, v0, :cond_1

    .line 800
    add-int/lit8 v19, v19, 0x1

    .line 798
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 768
    .end local v4    # "bottom":I
    .end local v5    # "centerX":I
    .end local v6    # "centerY":I
    .end local v7    # "childCount":I
    .end local v8    # "cnt":I
    .end local v9    # "dist":I
    .end local v10    # "dx":I
    .end local v11    # "dy":I
    .end local v12    # "i":I
    .end local v13    # "j":I
    .end local v14    # "left":I
    .end local v15    # "lm":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .end local v16    # "margin":I
    .end local v17    # "other":Landroid/view/View;
    .end local v18    # "otherVh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .end local v19    # "pos":I
    .end local v20    # "right":I
    .end local v21    # "top":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->clear()V

    .line 769
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDistances:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->clear()V

    goto/16 :goto_0

    .line 805
    .restart local v4    # "bottom":I
    .restart local v5    # "centerX":I
    .restart local v6    # "centerY":I
    .restart local v7    # "childCount":I
    .restart local v8    # "cnt":I
    .restart local v9    # "dist":I
    .restart local v10    # "dx":I
    .restart local v11    # "dy":I
    .restart local v12    # "i":I
    .restart local v13    # "j":I
    .restart local v14    # "left":I
    .restart local v15    # "lm":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .restart local v16    # "margin":I
    .restart local v17    # "other":Landroid/view/View;
    .restart local v18    # "otherVh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .restart local v19    # "pos":I
    .restart local v20    # "right":I
    .restart local v21    # "top":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 806
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDistances:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move/from16 v1, v19

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 780
    .end local v8    # "cnt":I
    .end local v9    # "dist":I
    .end local v10    # "dx":I
    .end local v11    # "dy":I
    .end local v13    # "j":I
    .end local v18    # "otherVh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .end local v19    # "pos":I
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 809
    .end local v17    # "other":Landroid/view/View;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    move-object/from16 v22, v0

    return-object v22
.end method

.method private findSwipedView(Landroid/view/MotionEvent;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 10
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    .line 912
    iget-object v8, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v5

    .line 913
    .local v5, "lm":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    iget v8, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    .line 934
    :cond_0
    :goto_0
    return-object v7

    .line 916
    :cond_1
    iget v8, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    .line 917
    .local v6, "pointerIndex":I
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    iget v9, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    sub-float v3, v8, v9

    .line 918
    .local v3, "dx":F
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    iget v9, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    sub-float v4, v8, v9

    .line 919
    .local v4, "dy":F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 920
    .local v0, "absDx":F
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 922
    .local v1, "absDy":F
    iget v8, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSlop:I

    int-to-float v8, v8

    cmpg-float v8, v0, v8

    if-gez v8, :cond_2

    iget v8, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSlop:I

    int-to-float v8, v8

    cmpg-float v8, v1, v8

    if-ltz v8, :cond_0

    .line 925
    :cond_2
    cmpl-float v8, v0, v1

    if-lez v8, :cond_3

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v8

    if-nez v8, :cond_0

    .line 927
    :cond_3
    cmpl-float v8, v1, v0

    if-lez v8, :cond_4

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v8

    if-nez v8, :cond_0

    .line 930
    :cond_4
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->findChildView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v2

    .line 931
    .local v2, "child":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 934
    iget-object v7, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v7, v2}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v7

    goto :goto_0
.end method

.method private getSelectedDxDy([F)V
    .locals 4
    .param p1, "outPosition"    # [F

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 499
    iget v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedFlags:I

    and-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_0

    .line 500
    iget v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedStartX:F

    iget v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    add-float/2addr v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p1, v2

    .line 504
    :goto_0
    iget v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedFlags:I

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_1

    .line 505
    iget v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedStartY:F

    iget v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    add-float/2addr v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p1, v3

    .line 509
    :goto_1
    return-void

    .line 502
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    aput v0, p1, v2

    goto :goto_0

    .line 507
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    aput v0, p1, v3

    goto :goto_1
.end method

.method private static hitTest(Landroid/view/View;FFFF)Z
    .locals 1
    .param p0, "child"    # Landroid/view/View;
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "left"    # F
    .param p4, "top"    # F

    .prologue
    .line 432
    cmpl-float v0, p1, p3

    if-ltz v0, :cond_0

    .line 433
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    cmpl-float v0, p2, p4

    if-ltz v0, :cond_0

    .line 435
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p4

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initGestureDetector()V
    .locals 3

    .prologue
    .line 491
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mGestureDetector:Lga;

    if-eqz v0, :cond_0

    .line 496
    :goto_0
    return-void

    .line 494
    :cond_0
    new-instance v0, Lga;

    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/support/v7/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper;)V

    invoke-direct {v0, v1, v2}, Lga;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mGestureDetector:Lga;

    goto :goto_0
.end method

.method private releaseVelocityTracker()V
    .locals 1

    .prologue
    .line 905
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 906
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 907
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 909
    :cond_0
    return-void
.end method

.method private setupCallbacks()V
    .locals 3

    .prologue
    .line 466
    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 467
    .local v0, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSlop:I

    .line 468
    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, p0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 469
    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 470
    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, p0}, Landroid/support/v7/widget/RecyclerView;->addOnChildAttachStateChangeListener(Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 471
    invoke-direct {p0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->initGestureDetector()V

    .line 472
    return-void
.end method

.method private swipeIfNecessary(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 9
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    const v8, 0xff00

    const/4 v5, 0x0

    .line 1150
    iget v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActionState:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    move v4, v5

    .line 1192
    :cond_0
    :goto_0
    return v4

    .line 1153
    :cond_1
    iget-object v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v7, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6, v7, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v3

    .line 1154
    .local v3, "originalMovementFlags":I
    iget-object v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v7, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 1156
    invoke-static {v7}, Landroid/support/v4/view/ViewCompat;->f(Landroid/view/View;)I

    move-result v7

    .line 1154
    invoke-virtual {v6, v3, v7}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->convertToAbsoluteDirection(II)I

    move-result v0

    .line 1157
    .local v0, "absoluteMovementFlags":I
    and-int v6, v0, v8

    shr-int/lit8 v1, v6, 0x8

    .line 1159
    .local v1, "flags":I
    if-nez v1, :cond_2

    move v4, v5

    .line 1160
    goto :goto_0

    .line 1162
    :cond_2
    and-int v6, v3, v8

    shr-int/lit8 v2, v6, 0x8

    .line 1165
    .local v2, "originalFlags":I
    iget v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_5

    .line 1166
    invoke-direct {p0, p1, v1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->checkHorizontalSwipe(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)I

    move-result v4

    .local v4, "swipeDir":I
    if-lez v4, :cond_3

    .line 1168
    and-int v5, v2, v4

    if-nez v5, :cond_0

    .line 1170
    iget-object v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 1171
    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->f(Landroid/view/View;)I

    move-result v5

    .line 1170
    invoke-static {v4, v5}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->convertToRelativeDirection(II)I

    move-result v4

    goto :goto_0

    .line 1175
    :cond_3
    invoke-direct {p0, p1, v1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->checkVerticalSwipe(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)I

    move-result v4

    if-gtz v4, :cond_0

    :cond_4
    move v4, v5

    .line 1192
    goto :goto_0

    .line 1179
    .end local v4    # "swipeDir":I
    :cond_5
    invoke-direct {p0, p1, v1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->checkVerticalSwipe(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)I

    move-result v4

    .restart local v4    # "swipeDir":I
    if-gtz v4, :cond_0

    .line 1182
    invoke-direct {p0, p1, v1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->checkHorizontalSwipe(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)I

    move-result v4

    if-lez v4, :cond_4

    .line 1184
    and-int v5, v2, v4

    if-nez v5, :cond_0

    .line 1186
    iget-object v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 1187
    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->f(Landroid/view/View;)I

    move-result v5

    .line 1186
    invoke-static {v4, v5}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->convertToRelativeDirection(II)I

    move-result v4

    goto :goto_0
.end method


# virtual methods
.method public attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 448
    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-ne v1, p1, :cond_1

    .line 463
    :cond_0
    :goto_0
    return-void

    .line 451
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_2

    .line 452
    invoke-direct {p0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->destroyCallbacks()V

    .line 454
    :cond_2
    iput-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 455
    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    .line 456
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 457
    .local v0, "resources":Landroid/content/res/Resources;
    sget v1, Landroid/support/v7/recyclerview/R$dimen;->item_touch_helper_swipe_escape_velocity:I

    .line 458
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSwipeEscapeVelocity:F

    .line 459
    sget v1, Landroid/support/v7/recyclerview/R$dimen;->item_touch_helper_swipe_escape_max_velocity:I

    .line 460
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mMaxSwipeVelocity:F

    .line 461
    invoke-direct {p0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->setupCallbacks()V

    goto :goto_0
.end method

.method checkSelectForSwipe(ILandroid/view/MotionEvent;I)Z
    .locals 11
    .param p1, "action"    # I
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;
    .param p3, "pointerIndex"    # I

    .prologue
    .line 941
    iget-object v9, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-nez v9, :cond_0

    const/4 v9, 0x2

    if-ne p1, v9, :cond_0

    iget v9, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActionState:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_0

    iget-object v9, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    .line 942
    invoke-virtual {v9}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->isItemViewSwipeEnabled()Z

    move-result v9

    if-nez v9, :cond_1

    .line 943
    :cond_0
    const/4 v9, 0x0

    .line 995
    :goto_0
    return v9

    .line 945
    :cond_1
    iget-object v9, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->getScrollState()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 946
    const/4 v9, 0x0

    goto :goto_0

    .line 948
    :cond_2
    invoke-direct {p0, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->findSwipedView(Landroid/view/MotionEvent;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v6

    .line 949
    .local v6, "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-nez v6, :cond_3

    .line 950
    const/4 v9, 0x0

    goto :goto_0

    .line 952
    :cond_3
    iget-object v9, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v10, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v9, v10, v6}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getAbsoluteMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v4

    .line 954
    .local v4, "movementFlags":I
    const v9, 0xff00

    and-int/2addr v9, v4

    shr-int/lit8 v5, v9, 0x8

    .line 957
    .local v5, "swipeFlags":I
    if-nez v5, :cond_4

    .line 958
    const/4 v9, 0x0

    goto :goto_0

    .line 963
    :cond_4
    invoke-virtual {p2, p3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 964
    .local v7, "x":F
    invoke-virtual {p2, p3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 967
    .local v8, "y":F
    iget v9, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    sub-float v2, v7, v9

    .line 968
    .local v2, "dx":F
    iget v9, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    sub-float v3, v8, v9

    .line 971
    .local v3, "dy":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 972
    .local v0, "absDx":F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 974
    .local v1, "absDy":F
    iget v9, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSlop:I

    int-to-float v9, v9

    cmpg-float v9, v0, v9

    if-gez v9, :cond_5

    iget v9, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSlop:I

    int-to-float v9, v9

    cmpg-float v9, v1, v9

    if-gez v9, :cond_5

    .line 975
    const/4 v9, 0x0

    goto :goto_0

    .line 977
    :cond_5
    cmpl-float v9, v0, v1

    if-lez v9, :cond_7

    .line 978
    const/4 v9, 0x0

    cmpg-float v9, v2, v9

    if-gez v9, :cond_6

    and-int/lit8 v9, v5, 0x4

    if-nez v9, :cond_6

    .line 979
    const/4 v9, 0x0

    goto :goto_0

    .line 981
    :cond_6
    const/4 v9, 0x0

    cmpl-float v9, v2, v9

    if-lez v9, :cond_9

    and-int/lit8 v9, v5, 0x8

    if-nez v9, :cond_9

    .line 982
    const/4 v9, 0x0

    goto :goto_0

    .line 985
    :cond_7
    const/4 v9, 0x0

    cmpg-float v9, v3, v9

    if-gez v9, :cond_8

    and-int/lit8 v9, v5, 0x1

    if-nez v9, :cond_8

    .line 986
    const/4 v9, 0x0

    goto :goto_0

    .line 988
    :cond_8
    const/4 v9, 0x0

    cmpl-float v9, v3, v9

    if-lez v9, :cond_9

    and-int/lit8 v9, v5, 0x2

    if-nez v9, :cond_9

    .line 989
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 992
    :cond_9
    const/4 v9, 0x0

    iput v9, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    iput v9, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    .line 993
    const/4 v9, 0x0

    invoke-virtual {p2, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    .line 994
    const/4 v9, 0x1

    invoke-virtual {p0, v6, v9}, Landroid/support/v7/widget/helper/ItemTouchHelper;->select(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 995
    const/4 v9, 0x1

    goto/16 :goto_0
.end method

.method endRecoverAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)I
    .locals 4
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "override"    # Z

    .prologue
    .line 876
    iget-object v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 877
    .local v2, "recoverAnimSize":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 878
    iget-object v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;

    .line 879
    .local v0, "anim":Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;
    iget-object v3, v0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-ne v3, p1, :cond_1

    .line 880
    iget-boolean v3, v0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mOverridden:Z

    or-int/2addr v3, p2

    iput-boolean v3, v0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mOverridden:Z

    .line 881
    iget-boolean v3, v0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    if-nez v3, :cond_0

    .line 882
    invoke-virtual {v0}, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->cancel()V

    .line 884
    :cond_0
    iget-object v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 885
    iget v3, v0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mAnimationType:I

    .line 888
    .end local v0    # "anim":Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;
    :goto_1
    return v3

    .line 877
    .restart local v0    # "anim":Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 888
    .end local v0    # "anim":Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method findAnimation(Landroid/view/MotionEvent;)Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 1115
    iget-object v4, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v0, v3

    .line 1125
    :cond_0
    :goto_0
    return-object v0

    .line 1118
    :cond_1
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->findChildView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v2

    .line 1119
    .local v2, "target":Landroid/view/View;
    iget-object v4, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_2

    .line 1120
    iget-object v4, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;

    .line 1121
    .local v0, "anim":Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;
    iget-object v4, v0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eq v4, v2, :cond_0

    .line 1119
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .end local v0    # "anim":Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;
    :cond_2
    move-object v0, v3

    .line 1125
    goto :goto_0
.end method

.method findChildView(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1000
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 1001
    .local v4, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 1002
    .local v5, "y":F
    iget-object v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v6, :cond_0

    .line 1003
    iget-object v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v2, v6, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1004
    .local v2, "selectedView":Landroid/view/View;
    iget v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedStartX:F

    iget v7, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    add-float/2addr v6, v7

    iget v7, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedStartY:F

    iget v8, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    add-float/2addr v7, v8

    invoke-static {v2, v4, v5, v6, v7}, Landroid/support/v7/widget/helper/ItemTouchHelper;->hitTest(Landroid/view/View;FFFF)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1015
    .end local v2    # "selectedView":Landroid/view/View;
    :goto_0
    return-object v2

    .line 1008
    :cond_0
    iget-object v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_2

    .line 1009
    iget-object v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;

    .line 1010
    .local v0, "anim":Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;
    iget-object v6, v0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v3, v6, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1011
    .local v3, "view":Landroid/view/View;
    iget v6, v0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mX:F

    iget v7, v0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mY:F

    invoke-static {v3, v4, v5, v6, v7}, Landroid/support/v7/widget/helper/ItemTouchHelper;->hitTest(Landroid/view/View;FFFF)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v2, v3

    .line 1012
    goto :goto_0

    .line 1008
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1015
    .end local v0    # "anim":Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;
    .end local v3    # "view":Landroid/view/View;
    :cond_2
    iget-object v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6, v4, v5}, Landroid/support/v7/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v2

    goto :goto_0
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 0
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 894
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 895
    return-void
.end method

.method hasRunningRecoverAnim()Z
    .locals 3

    .prologue
    .line 688
    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 689
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 690
    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;

    iget-boolean v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    if-nez v2, :cond_0

    .line 691
    const/4 v2, 0x1

    .line 694
    :goto_1
    return v2

    .line 689
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 694
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method moveIfNecessary(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 10
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 816
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 849
    :cond_0
    :goto_0
    return-void

    .line 819
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 823
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getMoveThreshold(Landroid/support/v7/widget/RecyclerView$ViewHolder;)F

    move-result v9

    .line 824
    .local v9, "threshold":F
    iget v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedStartX:F

    iget v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    add-float/2addr v0, v1

    float-to-int v6, v0

    .line 825
    .local v6, "x":I
    iget v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedStartY:F

    iget v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    add-float/2addr v0, v1

    float-to-int v7, v0

    .line 826
    .local v7, "y":I
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v0, v7, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v9

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 827
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v0, v6, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 828
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v9

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 831
    :cond_2
    invoke-direct {p0, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->findSwapTargets(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Ljava/util/List;

    move-result-object v8

    .line 832
    .local v8, "swapTargets":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/RecyclerView$ViewHolder;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 836
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    invoke-virtual {v0, p1, v8, v6, v7}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->chooseDropTarget(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;II)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    .line 837
    .local v4, "target":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-nez v4, :cond_3

    .line 838
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 839
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDistances:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 842
    :cond_3
    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v5

    .line 843
    .local v5, "toPosition":I
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v3

    .line 844
    .local v3, "fromPosition":I
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1, p1, v4}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onMove(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 846
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onMoved(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;ILandroid/support/v7/widget/RecyclerView$ViewHolder;III)V

    goto/16 :goto_0
.end method

.method obtainVelocityTracker()V
    .locals 1

    .prologue
    .line 898
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 899
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 901
    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 902
    return-void
.end method

.method public onChildViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 853
    return-void
.end method

.method public onChildViewDetachedFromWindow(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 857
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V

    .line 858
    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 859
    .local v0, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-nez v0, :cond_1

    .line 870
    :cond_0
    :goto_0
    return-void

    .line 862
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-ne v0, v1, :cond_2

    .line 863
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->select(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0

    .line 865
    :cond_2
    invoke-virtual {p0, v0, v2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->endRecoverAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)I

    .line 866
    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 867
    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 526
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOverdrawChildPosition:I

    .line 527
    const/4 v6, 0x0

    .local v6, "dx":F
    const/4 v7, 0x0

    .line 528
    .local v7, "dy":F
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    invoke-direct {p0, v0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->getSelectedDxDy([F)V

    .line 530
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    const/4 v1, 0x0

    aget v6, v0, v1

    .line 531
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    const/4 v1, 0x1

    aget v7, v0, v1

    .line 533
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v4, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    iget v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActionState:I

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v7}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;IFF)V

    .line 535
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 513
    const/4 v6, 0x0

    .local v6, "dx":F
    const/4 v7, 0x0

    .line 514
    .local v7, "dy":F
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    invoke-direct {p0, v0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->getSelectedDxDy([F)V

    .line 516
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    const/4 v1, 0x0

    aget v6, v0, v1

    .line 517
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    const/4 v1, 0x1

    aget v7, v0, v1

    .line 519
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v4, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    iget v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActionState:I

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v7}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;IFF)V

    .line 521
    return-void
.end method

.method postDispatchSwipe(Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;I)V
    .locals 2
    .param p1, "anim"    # Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;
    .param p2, "swipeDir"    # I

    .prologue
    .line 666
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/helper/ItemTouchHelper$4;

    invoke-direct {v1, p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$4;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 685
    return-void
.end method

.method removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 1275
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 1276
    iput-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 1278
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

    if-eqz v0, :cond_0

    .line 1279
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setChildDrawingOrderCallback(Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;)V

    .line 1282
    :cond_0
    return-void
.end method

.method scrollIfNecessary()Z
    .locals 27

    .prologue
    .line 701
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-nez v5, :cond_0

    .line 702
    const-wide/high16 v6, -0x8000000000000000L

    move-object/from16 v0, p0

    iput-wide v6, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 703
    const/4 v5, 0x0

    .line 760
    :goto_0
    return v5

    .line 705
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 706
    .local v24, "now":J
    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    const-wide/high16 v14, -0x8000000000000000L

    cmp-long v5, v6, v14

    if-nez v5, :cond_8

    const-wide/16 v10, 0x0

    .line 708
    .local v10, "scrollDuration":J
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v22

    .line 709
    .local v22, "lm":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    if-nez v5, :cond_1

    .line 710
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    .line 712
    :cond_1
    const/4 v8, 0x0

    .line 713
    .local v8, "scrollX":I
    const/16 v16, 0x0

    .line 714
    .local v16, "scrollY":I
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 715
    invoke-virtual/range {v22 .. v22}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 716
    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedStartX:F

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    add-float/2addr v5, v6

    float-to-int v12, v5

    .line 717
    .local v12, "curX":I
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int v5, v12, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v6

    sub-int v21, v5, v6

    .line 718
    .local v21, "leftDiff":I
    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_9

    if-gez v21, :cond_9

    .line 719
    move/from16 v8, v21

    .line 729
    .end local v12    # "curX":I
    .end local v21    # "leftDiff":I
    :cond_2
    :goto_2
    invoke-virtual/range {v22 .. v22}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 730
    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedStartY:F

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    add-float/2addr v5, v6

    float-to-int v0, v5

    move/from16 v20, v0

    .line 731
    .local v20, "curY":I
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int v5, v20, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v6

    sub-int v26, v5, v6

    .line 732
    .local v26, "topDiff":I
    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_a

    if-gez v26, :cond_a

    .line 733
    move/from16 v16, v26

    .line 742
    .end local v20    # "curY":I
    .end local v26    # "topDiff":I
    :cond_3
    :goto_3
    if-eqz v8, :cond_4

    .line 743
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 744
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 745
    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v9

    .line 743
    invoke-virtual/range {v5 .. v11}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->interpolateOutOfBoundsScroll(Landroid/support/v7/widget/RecyclerView;IIIJ)I

    move-result v8

    .line 747
    :cond_4
    if-eqz v16, :cond_5

    .line 748
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 749
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 750
    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v17

    move-wide/from16 v18, v10

    .line 748
    invoke-virtual/range {v13 .. v19}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->interpolateOutOfBoundsScroll(Landroid/support/v7/widget/RecyclerView;IIIJ)I

    move-result v16

    .line 752
    :cond_5
    if-nez v8, :cond_6

    if-eqz v16, :cond_b

    .line 753
    :cond_6
    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    const-wide/high16 v14, -0x8000000000000000L

    cmp-long v5, v6, v14

    if-nez v5, :cond_7

    .line 754
    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 756
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move/from16 v0, v16

    invoke-virtual {v5, v8, v0}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    .line 757
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 706
    .end local v8    # "scrollX":I
    .end local v10    # "scrollDuration":J
    .end local v16    # "scrollY":I
    .end local v22    # "lm":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    :cond_8
    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    sub-long v10, v24, v6

    goto/16 :goto_1

    .line 720
    .restart local v8    # "scrollX":I
    .restart local v10    # "scrollDuration":J
    .restart local v12    # "curX":I
    .restart local v16    # "scrollY":I
    .restart local v21    # "leftDiff":I
    .restart local v22    # "lm":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    :cond_9
    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    .line 721
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 722
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v12

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 723
    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int v23, v5, v6

    .line 724
    .local v23, "rightDiff":I
    if-lez v23, :cond_2

    .line 725
    move/from16 v8, v23

    goto/16 :goto_2

    .line 734
    .end local v12    # "curX":I
    .end local v21    # "leftDiff":I
    .end local v23    # "rightDiff":I
    .restart local v20    # "curY":I
    .restart local v26    # "topDiff":I
    :cond_a
    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    .line 735
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int v5, v5, v20

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 736
    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int v4, v5, v6

    .line 737
    .local v4, "bottomDiff":I
    if-lez v4, :cond_3

    .line 738
    move/from16 v16, v4

    goto/16 :goto_3

    .line 759
    .end local v4    # "bottomDiff":I
    .end local v20    # "curY":I
    .end local v26    # "topDiff":I
    :cond_b
    const-wide/high16 v6, -0x8000000000000000L

    move-object/from16 v0, p0

    iput-wide v6, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 760
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method select(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 22
    .param p1, "selected"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "actionState"    # I

    .prologue
    .line 545
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object/from16 v0, p1

    if-ne v0, v5, :cond_0

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActionState:I

    move/from16 v0, p2

    if-ne v0, v5, :cond_0

    .line 662
    :goto_0
    return-void

    .line 548
    :cond_0
    const-wide/high16 v20, -0x8000000000000000L

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 549
    move-object/from16 v0, p0

    iget v8, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActionState:I

    .line 551
    .local v8, "prevActionState":I
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Landroid/support/v7/widget/helper/ItemTouchHelper;->endRecoverAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)I

    .line 552
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActionState:I

    .line 553
    const/4 v5, 0x2

    move/from16 v0, p2

    if-ne v0, v5, :cond_1

    .line 557
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 558
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->addChildDrawingOrderCallback()V

    .line 560
    :cond_1
    const/4 v5, 0x1

    mul-int/lit8 v14, p2, 0x8

    add-int/lit8 v14, v14, 0x8

    shl-int/2addr v5, v14

    add-int/lit8 v15, v5, -0x1

    .line 562
    .local v15, "actionStateMask":I
    const/16 v18, 0x0

    .line 564
    .local v18, "preventLayout":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v5, :cond_2

    .line 565
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 566
    .local v6, "prevSelected":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v5, v6, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 567
    const/4 v5, 0x2

    if-ne v8, v5, :cond_6

    const/4 v13, 0x0

    .line 569
    .local v13, "swipeDir":I
    :goto_1
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->releaseVelocityTracker()V

    .line 573
    sparse-switch v13, :sswitch_data_0

    .line 587
    const/4 v11, 0x0

    .line 588
    .local v11, "targetTranslateX":F
    const/4 v12, 0x0

    .line 590
    .local v12, "targetTranslateY":F
    :goto_2
    const/4 v5, 0x2

    if-ne v8, v5, :cond_7

    .line 591
    const/16 v7, 0x8

    .line 597
    .local v7, "animationType":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/support/v7/widget/helper/ItemTouchHelper;->getSelectedDxDy([F)V

    .line 598
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    const/4 v14, 0x0

    aget v9, v5, v14

    .line 599
    .local v9, "currentTranslateX":F
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    const/4 v14, 0x1

    aget v10, v5, v14

    .line 600
    .local v10, "currentTranslateY":F
    new-instance v4, Landroid/support/v7/widget/helper/ItemTouchHelper$3;

    move-object/from16 v5, p0

    move-object v14, v6

    invoke-direct/range {v4 .. v14}, Landroid/support/v7/widget/helper/ItemTouchHelper$3;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/support/v7/widget/RecyclerView$ViewHolder;IIFFFFILandroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 629
    .local v4, "rv":Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    sub-float v20, v11, v9

    sub-float v21, v12, v10

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v14, v7, v0, v1}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getAnimationDuration(Landroid/support/v7/widget/RecyclerView;IFF)J

    move-result-wide v16

    .line 631
    .local v16, "duration":J
    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->setDuration(J)V

    .line 632
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 633
    invoke-virtual {v4}, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->start()V

    .line 634
    const/16 v18, 0x1

    .line 639
    .end local v4    # "rv":Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;
    .end local v7    # "animationType":I
    .end local v9    # "currentTranslateX":F
    .end local v10    # "currentTranslateY":F
    .end local v11    # "targetTranslateX":F
    .end local v12    # "targetTranslateY":F
    .end local v13    # "swipeDir":I
    .end local v16    # "duration":J
    :goto_4
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 641
    .end local v6    # "prevSelected":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_2
    if-eqz p1, :cond_3

    .line 642
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 643
    move-object/from16 v0, p1

    invoke-virtual {v5, v14, v0}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getAbsoluteMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v5

    and-int/2addr v5, v15

    move-object/from16 v0, p0

    iget v14, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActionState:I

    mul-int/lit8 v14, v14, 0x8

    shr-int/2addr v5, v14

    move-object/from16 v0, p0

    iput v5, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedFlags:I

    .line 645
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iput v5, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedStartX:F

    .line 646
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iput v5, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedStartY:F

    .line 647
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 649
    const/4 v5, 0x2

    move/from16 v0, p2

    if-ne v0, v5, :cond_3

    .line 650
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 653
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    .line 654
    .local v19, "rvParent":Landroid/view/ViewParent;
    if-eqz v19, :cond_4

    .line 655
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v5, :cond_a

    const/4 v5, 0x1

    :goto_5
    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 657
    :cond_4
    if-nez v18, :cond_5

    .line 658
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->requestSimpleAnimationsInNextLayout()V

    .line 660
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActionState:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v5, v14, v0}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onSelectedChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 661
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    goto/16 :goto_0

    .line 568
    .end local v19    # "rvParent":Landroid/view/ViewParent;
    .restart local v6    # "prevSelected":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/support/v7/widget/helper/ItemTouchHelper;->swipeIfNecessary(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v13

    goto/16 :goto_1

    .line 578
    .restart local v13    # "swipeDir":I
    :sswitch_0
    const/4 v12, 0x0

    .line 579
    .restart local v12    # "targetTranslateY":F
    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v5

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v14}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v14

    int-to-float v14, v14

    mul-float v11, v5, v14

    .line 580
    .restart local v11    # "targetTranslateX":F
    goto/16 :goto_2

    .line 583
    .end local v11    # "targetTranslateX":F
    .end local v12    # "targetTranslateY":F
    :sswitch_1
    const/4 v11, 0x0

    .line 584
    .restart local v11    # "targetTranslateX":F
    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v5

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v14}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v14

    int-to-float v14, v14

    mul-float v12, v5, v14

    .line 585
    .restart local v12    # "targetTranslateY":F
    goto/16 :goto_2

    .line 592
    :cond_7
    if-lez v13, :cond_8

    .line 593
    const/4 v7, 0x2

    .restart local v7    # "animationType":I
    goto/16 :goto_3

    .line 595
    .end local v7    # "animationType":I
    :cond_8
    const/4 v7, 0x4

    .restart local v7    # "animationType":I
    goto/16 :goto_3

    .line 636
    .end local v7    # "animationType":I
    .end local v11    # "targetTranslateX":F
    .end local v12    # "targetTranslateY":F
    .end local v13    # "swipeDir":I
    :cond_9
    iget-object v5, v6, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/helper/ItemTouchHelper;->removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V

    .line 637
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5, v14, v6}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto/16 :goto_4

    .line 655
    .end local v6    # "prevSelected":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .restart local v19    # "rvParent":Landroid/view/ViewParent;
    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_5

    .line 573
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x4 -> :sswitch_0
        0x8 -> :sswitch_0
        0x10 -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public startDrag(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 1053
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->hasDragFlag(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1054
    const-string/jumbo v0, "ItemTouchHelper"

    const-string/jumbo v1, "Start drag has been called but dragging is not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    :goto_0
    return-void

    .line 1057
    :cond_0
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eq v0, v1, :cond_1

    .line 1058
    const-string/jumbo v0, "ItemTouchHelper"

    const-string/jumbo v1, "Start drag has been called with a view holder which is not a child of the RecyclerView which is controlled by this ItemTouchHelper."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1062
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->obtainVelocityTracker()V

    .line 1063
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    iput v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    .line 1064
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->select(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0
.end method

.method public startSwipe(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 1100
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->hasSwipeFlag(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1101
    const-string/jumbo v0, "ItemTouchHelper"

    const-string/jumbo v1, "Start swipe has been called but swiping is not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    :goto_0
    return-void

    .line 1104
    :cond_0
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eq v0, v1, :cond_1

    .line 1105
    const-string/jumbo v0, "ItemTouchHelper"

    const-string/jumbo v1, "Start swipe has been called with a view holder which is not a child of the RecyclerView controlled by this ItemTouchHelper."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1109
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->obtainVelocityTracker()V

    .line 1110
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    iput v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    .line 1111
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->select(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0
.end method

.method updateDxDy(Landroid/view/MotionEvent;II)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "directionFlags"    # I
    .param p3, "pointerIndex"    # I

    .prologue
    const/4 v3, 0x0

    .line 1129
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 1130
    .local v0, "x":F
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 1133
    .local v1, "y":F
    iget v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    sub-float v2, v0, v2

    iput v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    .line 1134
    iget v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    sub-float v2, v1, v2

    iput v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    .line 1135
    and-int/lit8 v2, p2, 0x4

    if-nez v2, :cond_0

    .line 1136
    iget v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    .line 1138
    :cond_0
    and-int/lit8 v2, p2, 0x8

    if-nez v2, :cond_1

    .line 1139
    iget v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    .line 1141
    :cond_1
    and-int/lit8 v2, p2, 0x1

    if-nez v2, :cond_2

    .line 1142
    iget v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    .line 1144
    :cond_2
    and-int/lit8 v2, p2, 0x2

    if-nez v2, :cond_3

    .line 1145
    iget v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    .line 1147
    :cond_3
    return-void
.end method
