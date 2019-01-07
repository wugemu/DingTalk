.class final Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$3;
.super Ljava/lang/Object;
.source "LoginServiceImpl.java"

# interfaces
.implements Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;


# direct methods
.method constructor <init>(Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;

    .prologue
    .line 326
    iput-object p1, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$3;->b:Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;

    iput-boolean p2, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$3;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVerifyResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;)V
    .locals 4
    .param p1, "verifyId"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "bizName"    # Ljava/lang/String;
    .param p4, "result"    # Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 328
    invoke-virtual {p4}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->getCode()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1000"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    iget-object v1, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$3;->b:Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;

    iget-boolean v2, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$3;->a:Z

    invoke-static {v1, p1, v2}, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->a(Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;Ljava/lang/String;Z)V

    .line 338
    :goto_0
    return-void

    .line 332
    :cond_0
    iget-object v1, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$3;->b:Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;

    invoke-static {v1}, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->b(Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mybank/android/phone/common/service/login/LoginCallback;

    .line 333
    .local v0, "autoLoginCallback":Lcom/mybank/android/phone/common/service/login/LoginCallback;
    invoke-interface {v0, v3}, Lcom/mybank/android/phone/common/service/login/LoginCallback;->callback(Z)V

    goto :goto_1

    .line 335
    .end local v0    # "autoLoginCallback":Lcom/mybank/android/phone/common/service/login/LoginCallback;
    :cond_1
    iget-object v1, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$3;->b:Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;

    invoke-static {v1}, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->b(Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 336
    iget-object v1, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$3;->b:Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;

    invoke-static {v1, v3}, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->a(Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;Z)Z

    goto :goto_0
.end method
