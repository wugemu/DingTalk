.class final Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout$2;
.super Ljava/lang/Object;
.source "DTControlContainerLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->a(Landroid/view/View;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout$2;->a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 274
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout$2;->a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->a(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout$2;->a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->a(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout$2;->a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->a(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->dismiss()V

    .line 277
    :cond_0
    return-void
.end method
