.class final Leme$1;
.super Ljava/lang/Object;
.source "NoPwdLoginUtil.java"

# interfaces
.implements Lfrb$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leme;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Leme$1;->a:Landroid/content/Context;

    iput-object p2, p0, Leme$1;->b:Ljava/lang/String;

    iput-object p3, p0, Leme$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/user/login/UserLoginInfoModel;)V
    .locals 11
    .param p1, "userLoginInfoModel"    # Lcom/alibaba/android/user/login/UserLoginInfoModel;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    iget-object v4, p0, Leme$1;->a:Landroid/content/Context;

    new-array v5, v10, [Ljava/lang/String;

    iget-wide v6, p1, Lcom/alibaba/android/user/login/UserLoginInfoModel;->uid:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    const-string/jumbo v6, "general_quick_login_enable"

    aput-object v6, v5, v8

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v9}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    .line 28
    .local v2, "isNoPwdOpen":Z
    if-eqz v2, :cond_0

    .line 29
    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Leme$1;->a:Landroid/content/Context;

    const-class v5, Lcom/alibaba/android/user/login/NoPwdLoginActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 30
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "tempToken"

    iget-object v5, p0, Leme$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    const-string/jumbo v4, "kickMsg"

    iget-object v5, p0, Leme$1;->c:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Leme$1;->a:Landroid/content/Context;

    const-class v5, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 33
    .local v3, "pwdintent":Landroid/content/Intent;
    const v4, 0x10008000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 34
    new-array v1, v10, [Landroid/content/Intent;

    aput-object v3, v1, v9

    aput-object v0, v1, v8

    .line 35
    .local v1, "intents":[Landroid/content/Intent;
    iget-object v4, p0, Leme$1;->a:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivities([Landroid/content/Intent;)V

    .line 42
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intents":[Landroid/content/Intent;
    .end local v2    # "isNoPwdOpen":Z
    .end local v3    # "pwdintent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 37
    .restart local v2    # "isNoPwdOpen":Z
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->a()Lcom/alibaba/android/dingtalk/userbase/AccountInterface;

    move-result-object v4

    iget-object v5, p0, Leme$1;->a:Landroid/content/Context;

    invoke-virtual {v4, v5, v8}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->a(Landroid/content/Context;Z)V

    goto :goto_0

    .line 40
    .end local v2    # "isNoPwdOpen":Z
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->a()Lcom/alibaba/android/dingtalk/userbase/AccountInterface;

    move-result-object v4

    iget-object v5, p0, Leme$1;->a:Landroid/content/Context;

    invoke-virtual {v4, v5, v8}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->a(Landroid/content/Context;Z)V

    goto :goto_0
.end method
