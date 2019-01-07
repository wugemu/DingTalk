.class final Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$7;
.super Ljava/lang/Object;
.source "SettingOrgBossActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;

    .prologue
    .line 425
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$7;->a:Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;

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
    .line 428
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$7;->a:Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;

    const-string/jumbo v2, "https://pages.dingtalk.com/wow/dingtalk/16106/boss?lwfrom=20150922160811160"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    return-void
.end method
