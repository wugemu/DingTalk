.class final Lcom/alibaba/android/user/contact/activities/EditDeptActivity$6;
.super Ljava/lang/Object;
.source "EditDeptActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Z

.field final synthetic c:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;Landroid/view/View;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    .prologue
    .line 607
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$6;->c:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$6;->a:Landroid/view/View;

    iput-boolean p3, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$6;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataReceived(Ljava/lang/Object;)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 610
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$6;->c:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->dismissLoadingDialog()V

    .line 611
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 620
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$6;->c:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->dismissLoadingDialog()V

    .line 622
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$6;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/ToggleButton;

    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$6;->b:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 623
    return-void

    .line 622
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 616
    return-void
.end method
