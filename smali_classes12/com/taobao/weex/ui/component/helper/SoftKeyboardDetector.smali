.class public Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector;
.super Ljava/lang/Object;
.source "SoftKeyboardDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$OnKeyboardEventListener;,
        Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$Unregister;,
        Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$DefaultUnRegister;
    }
.end annotation


# static fields
.field private static final KEYBOARD_VISIBLE_THRESHOLD_DIP:I = 0x64


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    return-void
.end method

.method public static getActivityRoot(Landroid/app/Activity;)Landroid/view/View;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 104
    if-eqz p0, :cond_0

    .line 105
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 107
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isKeyboardVisible(Landroid/app/Activity;)Z
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x0

    .line 92
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 93
    .local v2, "windowFrame":Landroid/graphics/Rect;
    invoke-static {p0}, Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector;->getActivityRoot(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v1

    .line 95
    .local v1, "root":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 96
    invoke-virtual {v1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 97
    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int v0, v4, v5

    .line 98
    .local v0, "heightDiff":I
    const/high16 v4, 0x42c80000    # 100.0f

    invoke-static {v4}, Lcom/taobao/weex/utils/WXViewUtils;->dip2px(F)I

    move-result v4

    if-le v0, v4, :cond_0

    const/4 v3, 0x1

    .line 100
    .end local v0    # "heightDiff":I
    :cond_0
    return v3
.end method

.method public static registerKeyboardEventListener(Landroid/app/Activity;Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$OnKeyboardEventListener;)Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$Unregister;
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "listener"    # Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$OnKeyboardEventListener;

    .prologue
    const/4 v4, 0x0

    .line 43
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 44
    :cond_0
    const-string/jumbo v5, "Activity or listener is null!"

    invoke-static {v5}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 88
    :goto_0
    return-object v4

    .line 48
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 49
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 50
    .local v1, "attributes":Landroid/view/WindowManager$LayoutParams;
    if-eqz v1, :cond_3

    .line 51
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 52
    .local v3, "softInputMode":I
    const/16 v5, 0x30

    if-eq v3, v5, :cond_2

    const/16 v5, 0x20

    if-ne v3, v5, :cond_3

    .line 54
    :cond_2
    const-string/jumbo v5, "SoftKeyboard detector can\'t work with softInputMode is SOFT_INPUT_ADJUST_NOTHING or SOFT_INPUT_ADJUST_PAN"

    invoke-static {v5}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 60
    .end local v1    # "attributes":Landroid/view/WindowManager$LayoutParams;
    .end local v3    # "softInputMode":I
    :cond_3
    invoke-static {p0}, Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector;->getActivityRoot(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    .line 62
    .local v0, "activityRoot":Landroid/view/View;
    if-nez v0, :cond_4

    .line 63
    const-string/jumbo v5, "Activity root is null!"

    invoke-static {v5}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_4
    new-instance v2, Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$1;

    invoke-direct {v2, v0, p1}, Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$1;-><init>(Landroid/view/View;Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$OnKeyboardEventListener;)V

    .line 87
    .local v2, "layoutListener":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 88
    new-instance v4, Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$DefaultUnRegister;

    invoke-direct {v4, p0, v2}, Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$DefaultUnRegister;-><init>(Landroid/app/Activity;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method
