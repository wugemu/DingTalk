.class final Lcom/alibaba/android/user/settings/activity/NewSettingActivity$2$1;
.super Ljava/lang/Object;
.source "NewSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/activity/NewSettingActivity$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/NewSettingActivity$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/NewSettingActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/settings/activity/NewSettingActivity$2;

    .prologue
    .line 412
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity$2$1;->a:Lcom/alibaba/android/user/settings/activity/NewSettingActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 415
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity$2$1;->a:Lcom/alibaba/android/user/settings/activity/NewSettingActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity$2;->d:Lcom/alibaba/android/user/settings/activity/NewSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->g(Lcom/alibaba/android/user/settings/activity/NewSettingActivity;)V

    .line 416
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity$2$1;->a:Lcom/alibaba/android/user/settings/activity/NewSettingActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity$2;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity$2$1;->a:Lcom/alibaba/android/user/settings/activity/NewSettingActivity$2;

    iget-object v1, v1, Lcom/alibaba/android/user/settings/activity/NewSettingActivity$2;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity$2$1;->a:Lcom/alibaba/android/user/settings/activity/NewSettingActivity$2;

    iget-object v2, v2, Lcom/alibaba/android/user/settings/activity/NewSettingActivity$2;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->mobile:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfrg;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    return-void
.end method
