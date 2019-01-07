.class final Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity$3;
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
        "Ljava/lang/Throwable;",
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
    .line 73
    iput-object p1, p0, Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity$3;->a:Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 73
    check-cast p1, Ljava/lang/Throwable;

    .line 1077
    instance-of v0, p1, Lcom/mybank/android/phone/common/component/custom/RpcBizException;

    if-eqz v0, :cond_0

    .line 1078
    check-cast p1, Lcom/mybank/android/phone/common/component/custom/RpcBizException;

    invoke-virtual {p1}, Lcom/mybank/android/phone/common/component/custom/RpcBizException;->getResult()Lcom/mybank/mrpc/result/CommonResult;

    move-result-object v0

    check-cast v0, Lcom/alipay/fc/custprod/biz/service/gw/result/login/UserLoginResult;

    check-cast v0, Lcom/alipay/fc/custprod/biz/service/gw/result/login/UserLoginResult;

    .line 1079
    iget-object v1, p0, Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity$3;->a:Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;

    invoke-static {v1, v0}, Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;->a(Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;Lcom/alipay/fc/custprod/biz/service/gw/result/login/UserLoginResult;)V

    .line 1080
    :goto_0
    return-void

    .line 1082
    :cond_0
    iget-object v0, p0, Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity$3;->a:Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;

    invoke-virtual {v0}, Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;->finish()V

    goto :goto_0
.end method
