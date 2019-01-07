.class final Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8;
.super Ljava/lang/Object;
.source "SignUpWithPwdActivity.java"

# interfaces
.implements Lfrb$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/login/SignUpWithPwdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    .prologue
    .line 658
    iput-object p1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/user/login/UserLoginInfoModel;)V
    .locals 3
    .param p1, "userLoginInfoModel"    # Lcom/alibaba/android/user/login/UserLoginInfoModel;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 661
    if-eqz p1, :cond_1

    .line 662
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    iget-object v1, p1, Lcom/alibaba/android/user/login/UserLoginInfoModel;->mobile:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->b(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 663
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    iget-object v1, p1, Lcom/alibaba/android/user/login/UserLoginInfoModel;->avatarMediaId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->c(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 664
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    iget-object v1, p1, Lcom/alibaba/android/user/login/UserLoginInfoModel;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->d(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 665
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    iget-object v1, p1, Lcom/alibaba/android/user/login/UserLoginInfoModel;->stateCode:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->e(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 685
    :cond_0
    :goto_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1;-><init>(Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 752
    return-void

    .line 667
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    const-string/jumbo v2, "pref_logout_phone_number"

    invoke-static {v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->b(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 668
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    const-string/jumbo v2, "pref_logout_avatar"

    invoke-static {v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->c(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 669
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    const-string/jumbo v2, "pref_logout_nick"

    invoke-static {v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->d(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 670
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    const-string/jumbo v2, "pref_logout_state_code"

    invoke-static {v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->e(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 672
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->d(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->g(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 673
    new-instance p1, Lcom/alibaba/android/user/login/UserLoginInfoModel;

    .end local p1    # "userLoginInfoModel":Lcom/alibaba/android/user/login/UserLoginInfoModel;
    invoke-direct {p1}, Lcom/alibaba/android/user/login/UserLoginInfoModel;-><init>()V

    .line 674
    .restart local p1    # "userLoginInfoModel":Lcom/alibaba/android/user/login/UserLoginInfoModel;
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->d(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/alibaba/android/user/login/UserLoginInfoModel;->mobile:Ljava/lang/String;

    .line 675
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->g(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/alibaba/android/user/login/UserLoginInfoModel;->name:Ljava/lang/String;

    .line 676
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->h(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/alibaba/android/user/login/UserLoginInfoModel;->avatarMediaId:Ljava/lang/String;

    .line 677
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->q(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/alibaba/android/user/login/UserLoginInfoModel;->stateCode:Ljava/lang/String;

    .line 679
    invoke-static {p1}, Lfrb;->a(Lcom/alibaba/android/user/login/UserLoginInfoModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 680
    invoke-static {}, Lfrb;->b()V

    goto/16 :goto_0
.end method
