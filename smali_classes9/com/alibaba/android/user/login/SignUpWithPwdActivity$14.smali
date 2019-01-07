.class final Lcom/alibaba/android/user/login/SignUpWithPwdActivity$14;
.super Ljava/lang/Object;
.source "SignUpWithPwdActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->b(Ljava/lang/String;Ljava/lang/String;)V
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
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    .prologue
    .line 1078
    iput-object p1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$14;->c:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$14;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$14;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1078
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .line 2081
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$14;->c:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->dismissLoadingDialog()V

    .line 2082
    if-eqz p1, :cond_0

    .line 2083
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$14;->c:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->a(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    :goto_0
    return-void

    .line 2085
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$14;->c:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$14;->a:Ljava/lang/String;

    const-string/jumbo v2, ""

    iget-object v3, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$14;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->a(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$14;->c:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->dismissLoadingDialog()V

    .line 1097
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$14;->c:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$14;->b:Ljava/lang/String;

    invoke-static {v0, p1, p2, v1}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->a(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 1092
    return-void
.end method
