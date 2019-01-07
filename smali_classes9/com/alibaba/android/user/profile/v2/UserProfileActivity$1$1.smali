.class final Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1$1;
.super Ljava/lang/Object;
.source "UserProfileActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1;
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
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/doraemon/performance/DDStringBuilder;

.field final synthetic b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1;Lcom/alibaba/doraemon/performance/DDStringBuilder;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1;

    .prologue
    .line 430
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1$1;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1;

    iput-object p2, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1$1;->a:Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 430
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1433
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1$1;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->dismissLoadingDialog()V

    .line 1434
    if-eqz p1, :cond_0

    .line 1435
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1$1;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->alias:Ljava/lang/String;

    .line 1436
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1$1;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->aliasPinyin:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->aliasPinyin:Ljava/lang/String;

    .line 1439
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1$1$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1$1$1;-><init>(Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1$1;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 430
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 493
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1$1;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->dismissLoadingDialog()V

    .line 494
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1$1;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1$1;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->i(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)V

    .line 515
    :goto_0
    return-void

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1$1;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->f(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)V

    .line 500
    invoke-static {}, Lcom/alibaba/android/user/internal/IMContextEngine;->a()Lcom/alibaba/android/user/internal/IMContextEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/user/internal/IMContextEngine;->e()Lfbn;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1$1;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1;

    iget-object v1, v1, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfbn;->b(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    .line 501
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1$1;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    new-instance v1, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1$1$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1$1$2;-><init>(Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1$1;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 489
    return-void
.end method
