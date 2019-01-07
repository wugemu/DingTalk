.class public Lcom/alibaba/android/teleconf/widget/ConfPhoneCallingFloatView;
.super Lcom/alibaba/android/teleconf/widget/BaseFloatView;
.source "ConfPhoneCallingFloatView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/alibaba/android/teleconf/widget/BaseFloatView;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/ConfPhoneCallingFloatView;->getWindowManagerParam()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 21
    .local v0, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x80000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 22
    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/ConfPhoneCallingFloatView;->setWindowManagerParam(Landroid/view/WindowManager$LayoutParams;)V

    .line 23
    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    .prologue
    .line 27
    sget v0, Leuj$j;->layout_conf_float_view_phone_calling:I

    return v0
.end method
