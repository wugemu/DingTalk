.class final Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity$1;
.super Ljava/lang/Object;
.source "SettingLabDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity$1;->a:Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 121
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity$1;->a:Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;->a(Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;)Lcom/alibaba/android/user/settings/model/LabItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity$1;->a:Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;

    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity$1;->a:Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;->a(Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;)Lcom/alibaba/android/user/settings/model/LabItem;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/android/user/settings/model/LabItem;->feedbackUrl:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_0
    return-void
.end method
