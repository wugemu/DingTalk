.class final Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$2;
.super Ljava/lang/Object;
.source "UserBusinessProfileActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    .prologue
    .line 1089
    iput-object p1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$2;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1093
    :try_start_0
    invoke-static {}, Lcom/alibaba/android/user/internal/IMContextEngine;->a()Lcom/alibaba/android/user/internal/IMContextEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/user/internal/IMContextEngine;->e()Lfbn;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$2;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->f(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lfbn;->b(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    .line 1094
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->getGson()Lcom/google/gson/Gson;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1096
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->getGson()Lcom/google/gson/Gson;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$2;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->f(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v3

    invoke-static {v2, v3}, Lcor;->a(Lcom/google/gson/Gson;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1098
    .local v1, "json":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1099
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "my_user_model"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$2;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-static {v5}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->f(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v5

    iget-wide v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    .end local v1    # "json":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$2;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->f(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v2

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->c()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 1103
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$2;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->f(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccr;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    .line 1105
    iget-object v2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$2;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-virtual {v2}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.workapp.org_employee_change"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1106
    invoke-virtual {v2, v3}, Ldq;->a(Landroid/content/Intent;)Z

    .line 1114
    :goto_0
    return-void

    .line 1108
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$2;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-virtual {v2}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.workapp.org_other_employee_change"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1109
    invoke-virtual {v2, v3}, Ldq;->a(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1111
    :catch_0
    move-exception v0

    .line 1112
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
