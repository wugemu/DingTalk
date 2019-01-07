.class final Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity$6;
.super Ljava/lang/Object;
.source "AlipayLoginProcessActivity.java"

# interfaces
.implements Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;


# direct methods
.method constructor <init>(Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity$6;->a:Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVerifyResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;)V
    .locals 3
    .param p1, "verifyId"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "bizName"    # Ljava/lang/String;
    .param p4, "result"    # Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 171
    invoke-virtual {p4}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1000"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity$6;->a:Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;

    iget-object v1, p0, Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity$6;->a:Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;

    iget-object v1, v1, Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;->b:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;->a(Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :goto_0
    return-void

    .line 175
    :cond_0
    invoke-virtual {p4}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1003"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity$6;->a:Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u8c03\u7528\u6838\u8eab\u63a7\u4ef6\u5931\u8d25:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;->a(Ljava/lang/String;I)V

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity$6;->a:Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;

    invoke-static {v0}, Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;->a(Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;)V

    goto :goto_0
.end method
