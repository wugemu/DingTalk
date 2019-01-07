.class final Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$1$1$1;
.super Ljava/lang/Object;
.source "ManageStaffActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$1$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$1$1;Ljava/util/List;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$1$1;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$1$1$1;->b:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$1$1;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$1$1$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 270
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$1$1$1;->b:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$1$1;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$1$1;->b:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$1;

    iget-object v1, v0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$1;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$1$1$1;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->phoneNumber:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->a(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 271
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$1$1$1;->b:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$1$1;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$1$1;->b:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$1;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->e(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$1$1$1;->b:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$1$1;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$1$1;->b:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$1;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$1;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->g(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$1$1$1;->b:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$1$1;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$1$1;->b:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$1;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->f(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 273
    return-void
.end method
