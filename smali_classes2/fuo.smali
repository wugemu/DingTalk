.class public abstract Lfuo;
.super Ljava/lang/Object;
.source "BaseVerifyTask.java"

# interfaces
.implements Lchw;


# instance fields
.field protected final a:I

.field protected b:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/16 v0, 0x80

    iput v0, p0, Lfuo;->a:I

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lfuo;->b:J

    return-void
.end method

.method protected static a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/outcertify/CertifyResponse;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "certifyResponse"    # Lcom/alibaba/android/dingtalk/userbase/outcertify/CertifyResponse;

    .prologue
    .line 54
    if-eqz p0, :cond_0

    .line 55
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 56
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "dd_action_out_certify"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const-string/jumbo v1, "dd_intent_key_out_certify_callback_data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 58
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 60
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lchv;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "certifyRequest"    # Lchv;

    .prologue
    .line 27
    if-eqz p0, :cond_1

    if-eqz p3, :cond_1

    .line 28
    const/4 v3, 0x0

    .line 1051
    .local v3, "response":Lcom/alibaba/android/dingtalk/userbase/outcertify/CertifyResponse;
    iget v4, p3, Lchv;->e:I

    .line 29
    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 30
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/outcertify/BiometricResponse;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/outcertify/BiometricResponse;-><init>()V

    .line 2051
    .local v0, "biometricResponse":Lcom/alibaba/android/dingtalk/userbase/outcertify/BiometricResponse;
    iget v4, p3, Lchv;->e:I

    .line 31
    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalk/userbase/outcertify/BiometricResponse;->setCertifyType(I)V

    .line 32
    move-object v3, v0

    .line 39
    .end local v0    # "biometricResponse":Lcom/alibaba/android/dingtalk/userbase/outcertify/BiometricResponse;
    :cond_0
    :goto_0
    if-nez v3, :cond_3

    .line 51
    .end local v3    # "response":Lcom/alibaba/android/dingtalk/userbase/outcertify/CertifyResponse;
    :cond_1
    :goto_1
    return-void

    .line 3051
    .restart local v3    # "response":Lcom/alibaba/android/dingtalk/userbase/outcertify/CertifyResponse;
    :cond_2
    iget v4, p3, Lchv;->e:I

    .line 33
    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 34
    new-instance v1, Lcom/alibaba/android/dingtalk/userbase/outcertify/CertificationResponse;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/userbase/outcertify/CertificationResponse;-><init>()V

    .line 4051
    .local v1, "certificationResponse":Lcom/alibaba/android/dingtalk/userbase/outcertify/CertificationResponse;
    iget v4, p3, Lchv;->e:I

    .line 35
    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalk/userbase/outcertify/CertificationResponse;->setCertifyType(I)V

    .line 4055
    iget v4, p3, Lchv;->f:I

    .line 36
    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalk/userbase/outcertify/CertificationResponse;->setType(I)V

    .line 37
    move-object v3, v1

    goto :goto_0

    .line 42
    .end local v1    # "certificationResponse":Lcom/alibaba/android/dingtalk/userbase/outcertify/CertificationResponse;
    :cond_3
    invoke-virtual {v3, p1}, Lcom/alibaba/android/dingtalk/userbase/outcertify/CertifyResponse;->setErrorCode(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v3, p2}, Lcom/alibaba/android/dingtalk/userbase/outcertify/CertifyResponse;->setErrorMsg(Ljava/lang/String;)V

    .line 5047
    iget-object v4, p3, Lchv;->d:Ljava/lang/String;

    .line 44
    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalk/userbase/outcertify/CertifyResponse;->setAttachInfo(Ljava/lang/String;)V

    .line 45
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalk/userbase/outcertify/CertifyResponse;->setSucceed(Z)V

    .line 46
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 47
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "dd_action_out_certify"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    const-string/jumbo v4, "dd_intent_key_out_certify_callback_data"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 49
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v4

    invoke-virtual {v4, v2}, Ldq;->a(Landroid/content/Intent;)Z

    goto :goto_1
.end method

.method protected static b(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 63
    instance-of v0, p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 64
    check-cast p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .end local p0    # "activity":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog()V

    .line 66
    :cond_0
    return-void
.end method

.method protected static c(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 69
    instance-of v0, p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 70
    check-cast p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .end local p0    # "activity":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 72
    :cond_0
    return-void
.end method
