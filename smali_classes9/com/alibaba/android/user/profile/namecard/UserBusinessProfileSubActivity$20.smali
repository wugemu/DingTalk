.class final Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$20;
.super Ljava/lang/Object;
.source "UserBusinessProfileSubActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->a(Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    .prologue
    .line 1709
    iput-object p1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$20;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$20;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1712
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$20;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    iget-object v2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$20;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    .line 1713
    invoke-static {v2}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->e(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v2

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$20;->a:Ljava/lang/String;

    .line 1712
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->a(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;)Z

    .line 1716
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$20;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    const-string/jumbo v1, "profile_phonenumber_systemcall_click"

    invoke-static {v0, v1}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->d(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;Ljava/lang/String;)V

    .line 1717
    return-void
.end method
