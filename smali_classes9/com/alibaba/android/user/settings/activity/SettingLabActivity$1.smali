.class final Lcom/alibaba/android/user/settings/activity/SettingLabActivity$1;
.super Ljava/lang/Object;
.source "SettingLabActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/activity/SettingLabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/SettingLabActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/SettingLabActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/SettingLabActivity;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/SettingLabActivity$1;->a:Lcom/alibaba/android/user/settings/activity/SettingLabActivity;

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
    .line 105
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/SettingLabActivity$1;->a:Lcom/alibaba/android/user/settings/activity/SettingLabActivity;

    const-string/jumbo v2, "https://tms.dingtalk.com/markets/dingtalk/n/dingtalk_lab"

    invoke-static {v2}, Lcom/alibaba/android/user/contact/utils/UserUtils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method
