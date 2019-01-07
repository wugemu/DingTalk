.class final Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity$4;
.super Ljava/lang/Object;
.source "AlipayLoginProcessActivity.java"

# interfaces
.implements Llhg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Llhg",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;


# direct methods
.method constructor <init>(Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity$4;->a:Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 91
    move-object v0, p1

    check-cast v0, Lcom/alipay/fc/custprod/biz/service/gw/result/login/UserLoginResult;

    .line 92
    .local v0, "loginResult":Lcom/alipay/fc/custprod/biz/service/gw/result/login/UserLoginResult;
    iget-object v1, p0, Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity$4;->a:Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;

    invoke-virtual {v1}, Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Ljfu;->a(Landroid/content/Context;Lcom/alipay/fc/custprod/biz/service/gw/result/login/UserLoginResult;)V

    .line 94
    iget-object v1, p0, Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity$4;->a:Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;

    invoke-virtual {v1}, Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;->finish()V

    .line 95
    return-void
.end method
