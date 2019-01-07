.class final Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$2;
.super Landroid/text/style/ClickableSpan;
.source "ManageStaffActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    .prologue
    .line 666
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$2;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "widget"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 669
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$2;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->t(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Lcom/alibaba/android/user/model/SWHrmObject;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$2;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->t(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Lcom/alibaba/android/user/model/SWHrmObject;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/android/user/model/SWHrmObject;->mPreEntryUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 673
    :cond_0
    :goto_0
    return-void

    .line 672
    :cond_1
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$2;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$2;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->t(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Lcom/alibaba/android/user/model/SWHrmObject;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/android/user/model/SWHrmObject;->mPreEntryUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_0
.end method
