.class final Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips$1;
.super Ljava/lang/Object;
.source "DDPopupWindowTips.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;-><init>(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips$hintDirection;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->dismiss()V

    .line 54
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->a(Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->a(Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips$a;->a()V

    .line 57
    :cond_0
    return-void
.end method
