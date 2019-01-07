.class final Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$5;
.super Ljava/lang/Object;
.source "SettingOrgBossActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeWrapperObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;

    .prologue
    .line 311
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$5;->b:Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;

    iput-boolean p2, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$5;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v2, 0x8

    .line 311
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeWrapperObject;

    .line 1314
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeWrapperObject;->orgEmployeeObjectList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeWrapperObject;->orgEmployeeObjectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1316
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$5;->b:Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;

    iget-boolean v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeWrapperObject;->hasMore:Z

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->b(Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;Z)Z

    .line 1318
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$5;->b:Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeWrapperObject;->orgEmployeeObjectList:Ljava/util/List;

    iget-boolean v2, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$5;->a:Z

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->a(Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;Ljava/util/List;Z)V

    :goto_0
    return-void

    .line 1321
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$5;->b:Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->b(Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;Z)Z

    .line 1322
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$5;->b:Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->f(Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1324
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$5;->a:Z

    if-nez v0, :cond_1

    .line 1325
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$5;->b:Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->b()V

    goto :goto_0

    .line 1327
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$5;->b:Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->j(Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 340
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 341
    :cond_0
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$5;->b:Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->k(Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;)V

    .line 344
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 336
    return-void
.end method
