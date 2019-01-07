.class final Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow$1;
.super Ljava/lang/Object;
.source "DDPopupWindow.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->a(Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;)Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->a(Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;)Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->b(Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;)Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->b(Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;)Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 152
    :cond_1
    return-void
.end method
