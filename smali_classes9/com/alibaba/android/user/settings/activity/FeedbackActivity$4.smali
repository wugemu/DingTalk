.class final Lcom/alibaba/android/user/settings/activity/FeedbackActivity$4;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/activity/FeedbackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/FeedbackActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/FeedbackActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/FeedbackActivity;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity$4;->a:Lcom/alibaba/android/user/settings/activity/FeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 169
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 170
    .local v1, "index":I
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity$4;->a:Lcom/alibaba/android/user/settings/activity/FeedbackActivity;

    invoke-direct {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 171
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v2, Lezg$l;->feedback_del_image:I

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lezg$l;->sure:I

    new-instance v4, Lcom/alibaba/android/user/settings/activity/FeedbackActivity$4$2;

    invoke-direct {v4, p0, v1}, Lcom/alibaba/android/user/settings/activity/FeedbackActivity$4$2;-><init>(Lcom/alibaba/android/user/settings/activity/FeedbackActivity$4;I)V

    .line 172
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lezg$l;->cancel:I

    new-instance v4, Lcom/alibaba/android/user/settings/activity/FeedbackActivity$4$1;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/settings/activity/FeedbackActivity$4$1;-><init>(Lcom/alibaba/android/user/settings/activity/FeedbackActivity$4;)V

    .line 179
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 185
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 186
    const/4 v2, 0x0

    return v2
.end method
