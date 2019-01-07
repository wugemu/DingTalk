.class final Lcom/alibaba/android/user/login/NoPwdLoginActivity$1;
.super Ljava/lang/Object;
.source "NoPwdLoginActivity.java"

# interfaces
.implements Lfrb$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/login/NoPwdLoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/login/NoPwdLoginActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/NoPwdLoginActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/login/NoPwdLoginActivity;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$1;->a:Lcom/alibaba/android/user/login/NoPwdLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/user/login/UserLoginInfoModel;)V
    .locals 6
    .param p1, "userLoginInfoModel"    # Lcom/alibaba/android/user/login/UserLoginInfoModel;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 98
    if-eqz p1, :cond_0

    .line 99
    iget-object v0, p1, Lcom/alibaba/android/user/login/UserLoginInfoModel;->avatarMediaId:Ljava/lang/String;

    .line 100
    .local v0, "avatarMediaId":Ljava/lang/String;
    iget-object v1, p1, Lcom/alibaba/android/user/login/UserLoginInfoModel;->name:Ljava/lang/String;

    .line 101
    .local v1, "nick":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$1;->a:Lcom/alibaba/android/user/login/NoPwdLoginActivity;

    iget-object v3, p1, Lcom/alibaba/android/user/login/UserLoginInfoModel;->mobile:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->a(Lcom/alibaba/android/user/login/NoPwdLoginActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 102
    iget-object v2, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$1;->a:Lcom/alibaba/android/user/login/NoPwdLoginActivity;

    iget-wide v4, p1, Lcom/alibaba/android/user/login/UserLoginInfoModel;->uid:J

    invoke-static {v2, v4, v5}, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->a(Lcom/alibaba/android/user/login/NoPwdLoginActivity;J)J

    .line 111
    :goto_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/user/login/NoPwdLoginActivity$1$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/alibaba/android/user/login/NoPwdLoginActivity$1$1;-><init>(Lcom/alibaba/android/user/login/NoPwdLoginActivity$1;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 119
    return-void

    .line 104
    .end local v0    # "avatarMediaId":Ljava/lang/String;
    .end local v1    # "nick":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$1;->a:Lcom/alibaba/android/user/login/NoPwdLoginActivity;

    const-string/jumbo v3, "pref_logout_avatar"

    invoke-static {v2, v3}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 106
    .restart local v1    # "nick":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$1;->a:Lcom/alibaba/android/user/login/NoPwdLoginActivity;

    const-string/jumbo v3, "pref_logout_nick"

    invoke-static {v2, v3}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .restart local v0    # "avatarMediaId":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$1;->a:Lcom/alibaba/android/user/login/NoPwdLoginActivity;

    iget-object v3, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$1;->a:Lcom/alibaba/android/user/login/NoPwdLoginActivity;

    const-string/jumbo v4, "pref_logout_phone_number"

    invoke-static {v3, v4}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->a(Lcom/alibaba/android/user/login/NoPwdLoginActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
