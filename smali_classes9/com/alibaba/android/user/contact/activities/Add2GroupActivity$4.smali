.class final Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$4;
.super Ljava/lang/Object;
.source "Add2GroupActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$4;->a:Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 182
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$4;->a:Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;->a(Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$4;->a:Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;->a(Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt p3, v2, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$4;->a:Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;->a(Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 186
    .local v1, "object":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$4;->a:Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;->e(Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 189
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$4;->a:Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;

    invoke-direct {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 190
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$4;->a:Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;

    sget v3, Lezg$l;->add_2_group:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$4;->a:Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;

    sget v4, Lezg$l;->cancel:I

    invoke-virtual {v3, v4}, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$4$1;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$4$1;-><init>(Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$4;)V

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 196
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$4;->a:Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;->f(Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;)Landroid/widget/SearchView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SearchView;->clearFocus()V

    .line 197
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$4;->a:Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;

    sget v3, Lezg$l;->sure:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$4$2;

    invoke-direct {v3, p0, v1}, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$4$2;-><init>(Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$4;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 219
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 220
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method
