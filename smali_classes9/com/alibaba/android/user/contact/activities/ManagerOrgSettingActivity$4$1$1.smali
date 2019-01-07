.class final Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4$1$1;
.super Ljava/lang/Object;
.source "ManagerOrgSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4$1;

    .prologue
    .line 364
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4$1$1;->a:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 367
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4$1$1;->a:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4$1;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4$1;->b:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4;->b:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->h(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4$1$1;->a:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4$1;

    iget-object v2, v2, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4$1;->b:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4;

    iget-object v2, v2, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4;->b:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->h(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v2

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    invoke-virtual {v0, v1, v2, v3}, Lccr;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;J)V

    .line 368
    return-void
.end method
