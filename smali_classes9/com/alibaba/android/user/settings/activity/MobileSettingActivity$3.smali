.class final Lcom/alibaba/android/user/settings/activity/MobileSettingActivity$3;
.super Ljava/lang/Object;
.source "MobileSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/activity/MobileSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/MobileSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/MobileSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/MobileSettingActivity;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/MobileSettingActivity$3;->a:Lcom/alibaba/android/user/settings/activity/MobileSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 186
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/MobileSettingActivity$3;->a:Lcom/alibaba/android/user/settings/activity/MobileSettingActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/MobileSettingActivity$3;->a:Lcom/alibaba/android/user/settings/activity/MobileSettingActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/settings/activity/MobileSettingActivity;->b(Lcom/alibaba/android/user/settings/activity/MobileSettingActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/MobileSettingActivity$3;->a:Lcom/alibaba/android/user/settings/activity/MobileSettingActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/settings/activity/MobileSettingActivity;->c(Lcom/alibaba/android/user/settings/activity/MobileSettingActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/user/settings/activity/MobileSettingActivity;->a(Lcom/alibaba/android/user/settings/activity/MobileSettingActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    return-void
.end method
