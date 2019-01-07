.class final Lfrm$4;
.super Ljava/lang/Object;
.source "NotReceiveSmsCodePresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfrm;->b(Ljava/lang/String;Ljava/lang/String;)V
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
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/SimVerifyInitObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfrm;


# direct methods
.method constructor <init>(Lfrm;)V
    .locals 0
    .param p1, "this$0"    # Lfrm;

    .prologue
    .line 192
    iput-object p1, p0, Lfrm$4;->a:Lfrm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 192
    check-cast p1, Ljava/util/List;

    .line 4195
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 4196
    :cond_0
    iget-object v0, p0, Lfrm$4;->a:Lfrm;

    .line 5032
    invoke-virtual {v0}, Lfrm;->a()Z

    move-result v0

    .line 4196
    if-nez v0, :cond_4

    .line 4199
    iget-object v0, p0, Lfrm$4;->a:Lfrm;

    .line 6032
    iget-object v0, v0, Lfrm;->b:Lfrl$b;

    .line 4199
    invoke-interface {v0}, Lfrl$b;->h()V

    .line 4201
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4202
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/SimVerifyInitObject;

    .line 4203
    if-eqz v0, :cond_2

    .line 4206
    new-instance v3, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VendorConfig;

    invoke-direct {v3}, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VendorConfig;-><init>()V

    .line 4207
    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/SimVerifyInitObject;->vendorKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VendorConfig;->setVendorKey(Ljava/lang/String;)V

    .line 4208
    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/SimVerifyInitObject;->vendorAccessId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VendorConfig;->setVendorAccessId(Ljava/lang/String;)V

    .line 4209
    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/SimVerifyInitObject;->vendorAccessSecret:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VendorConfig;->setVendorAccessSecret(Ljava/lang/String;)V

    .line 4210
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/SimVerifyInitObject;->keyParam:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VendorConfig;->setKeyParam(Ljava/lang/String;)V

    .line 4212
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4214
    :cond_3
    iget-object v0, p0, Lfrm$4;->a:Lfrm;

    .line 7032
    iget-object v0, v0, Lfrm;->d:Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;

    .line 4214
    invoke-virtual {v0, v1}, Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;->getAuthToken(Ljava/util/List;)V

    .line 192
    :cond_4
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 224
    iget-object v0, p0, Lfrm$4;->a:Lfrm;

    .line 1032
    iget-object v0, v0, Lfrm;->d:Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;

    .line 224
    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lfrm$4;->a:Lfrm;

    .line 2032
    iget-object v0, v0, Lfrm;->d:Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;

    .line 225
    invoke-virtual {v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;->onDestroy()V

    .line 227
    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "NotReceiveSmsCodePresenter.initSim.simInitCallback.onException: "

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string/jumbo v2, "code:"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, ", reason:"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object p2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    iget-object v0, p0, Lfrm$4;->a:Lfrm;

    .line 3032
    invoke-virtual {v0}, Lfrm;->a()Z

    move-result v0

    .line 229
    if-eqz v0, :cond_1

    .line 233
    :goto_0
    return-void

    .line 232
    :cond_1
    iget-object v0, p0, Lfrm$4;->a:Lfrm;

    .line 4032
    iget-object v0, v0, Lfrm;->b:Lfrl$b;

    .line 232
    invoke-interface {v0}, Lfrl$b;->h()V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 220
    return-void
.end method
