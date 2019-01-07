.class final Lfrb$3;
.super Ljava/lang/Object;
.source "LoginUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfrb;->a(Lfrb$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfrb$a;


# direct methods
.method constructor <init>(Lfrb$a;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lfrb$3;->a:Lfrb$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 160
    const/4 v2, 0x0

    .line 162
    .local v2, "userLoginInfoModel":Lcom/alibaba/android/user/login/UserLoginInfoModel;
    :try_start_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    const-string/jumbo v4, "key_last_login_user_info"

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "data":Ljava/lang/String;
    const-class v3, Lcom/alibaba/android/user/login/UserLoginInfoModel;

    invoke-static {v1, v3}, Lcoo;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/alibaba/android/user/login/UserLoginInfoModel;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .end local v1    # "data":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lfrb$3;->a:Lfrb$a;

    if-eqz v3, :cond_0

    .line 168
    iget-object v3, p0, Lfrb$3;->a:Lfrb$a;

    invoke-interface {v3, v2}, Lfrb$a;->a(Lcom/alibaba/android/user/login/UserLoginInfoModel;)V

    .line 170
    :cond_0
    return-void

    .line 165
    :catch_0
    move-exception v3

    const-class v3, Lfrb;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "loadLastLoginUserInfo failed"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
