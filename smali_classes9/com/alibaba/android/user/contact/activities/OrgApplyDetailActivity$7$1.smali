.class final Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity$7$1;
.super Lcmi;
.source "OrgApplyDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity$7;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity$7;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity$7;

    .prologue
    .line 598
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity$7$1;->a:Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity$7;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 608
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 598
    .line 1602
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity$7$1;->a:Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity$7;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity$7;->a:Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;

    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->SHIELD:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;

    iget v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->status:I

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->a(Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;I)V

    .line 1603
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity$7$1;->a:Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity$7;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity$7;->a:Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;

    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->SHIELD:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;

    iget v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->status:I

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->b(Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;I)V

    .line 598
    return-void
.end method
