.class final Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$1;
.super Ljava/lang/Object;
.source "SoftKeyboardDetector.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector;->registerKeyboardEventListener(Landroid/app/Activity;Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$OnKeyboardEventListener;)Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$Unregister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private final threshold:I

.field final synthetic val$activityRoot:Landroid/view/View;

.field final synthetic val$listener:Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$OnKeyboardEventListener;

.field private final visibleFrame:Landroid/graphics/Rect;

.field private wasKeyboardOpened:Z


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$OnKeyboardEventListener;)V
    .locals 1

    .prologue
    .line 67
    iput-object p1, p0, Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$1;->val$activityRoot:Landroid/view/View;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$1;->val$listener:Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$OnKeyboardEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$1;->visibleFrame:Landroid/graphics/Rect;

    .line 70
    const/high16 v0, 0x42c80000    # 100.0f

    invoke-static {v0}, Lcom/taobao/weex/utils/WXViewUtils;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$1;->threshold:I

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$1;->wasKeyboardOpened:Z

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 75
    iget-object v2, p0, Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$1;->val$activityRoot:Landroid/view/View;

    iget-object v3, p0, Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$1;->visibleFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 76
    iget-object v2, p0, Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$1;->val$activityRoot:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$1;->visibleFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int v0, v2, v3

    .line 77
    .local v0, "heightDiff":I
    iget v2, p0, Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$1;->threshold:I

    if-le v0, v2, :cond_0

    const/4 v1, 0x1

    .line 78
    .local v1, "isOpen":Z
    :goto_0
    iget-boolean v2, p0, Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$1;->wasKeyboardOpened:Z

    if-ne v1, v2, :cond_1

    .line 84
    :goto_1
    return-void

    .line 77
    .end local v1    # "isOpen":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 82
    .restart local v1    # "isOpen":Z
    :cond_1
    iput-boolean v1, p0, Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$1;->wasKeyboardOpened:Z

    .line 83
    iget-object v2, p0, Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$1;->val$listener:Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$OnKeyboardEventListener;

    invoke-interface {v2, v1}, Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$OnKeyboardEventListener;->onKeyboardEvent(Z)V

    goto :goto_1
.end method
