.class final Lipx$1;
.super Ljava/lang/Object;
.source "ZimPlatform.java"

# interfaces
.implements Lipz;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lipx;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lipx;


# direct methods
.method constructor <init>(Lipx;)V
    .locals 0
    .param p1, "this$0"    # Lipx;

    .prologue
    .line 83
    iput-object p1, p0, Lipx$1;->a:Lipx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwResponse;)V
    .locals 10
    .param p1, "response"    # Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwResponse;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 89
    iget-object v3, p0, Lipx$1;->a:Lipx;

    invoke-static {v3}, Lipx;->a(Lipx;)Lcom/alipay/biometrics/ui/widget/LoadingProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/biometrics/ui/widget/LoadingProgressDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 90
    iget-object v3, p0, Lipx$1;->a:Lipx;

    invoke-static {v3}, Lipx;->a(Lipx;)Lcom/alipay/biometrics/ui/widget/LoadingProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/biometrics/ui/widget/LoadingProgressDialog;->hide()V

    .line 92
    :cond_0
    const/4 v1, 0x0

    .line 95
    .local v1, "isNeedResponse":Z
    if-nez p1, :cond_2

    .line 96
    iget-object v3, p0, Lipx$1;->a:Lipx;

    invoke-static {v3}, Lipx;->c(Lipx;)Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    move-result-object v3

    invoke-static {v3}, Lipw;->a(Lcom/alipay/mobile/security/bio/service/BioServiceManager;)Lipw;

    move-result-object v3

    sget-object v4, Lipw;->e:Ljava/lang/String;

    new-instance v5, Lipv;

    iget-object v6, p0, Lipx$1;->a:Lipx;

    invoke-static {v6}, Lipx;->b(Lipx;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "0"

    invoke-direct {v5, v6, v9, v7}, Lipv;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lipw;->a(Ljava/lang/String;Lipv;)V

    .line 97
    const/4 v1, 0x1

    .line 174
    :goto_0
    if-eqz v1, :cond_1

    .line 175
    new-instance v2, Lcom/alipay/mobile/security/zim/api/ZIMResponse;

    invoke-direct {v2}, Lcom/alipay/mobile/security/zim/api/ZIMResponse;-><init>()V

    .line 176
    .local v2, "zimResponse":Lcom/alipay/mobile/security/zim/api/ZIMResponse;
    iget v3, p1, Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwResponse;->retCode:I

    iput v3, v2, Lcom/alipay/mobile/security/zim/api/ZIMResponse;->code:I

    .line 177
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwResponse;->retCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/mobile/security/zim/api/ZIMResponse;->reason:Ljava/lang/String;

    .line 179
    iget-object v3, p0, Lipx$1;->a:Lipx;

    invoke-static {v3, v2}, Lipx;->a(Lipx;Lcom/alipay/mobile/security/zim/api/ZIMResponse;)V

    .line 180
    iget-object v3, p0, Lipx$1;->a:Lipx;

    invoke-static {v3}, Lipx;->d(Lipx;)Lcom/alipay/mobile/security/zim/api/ZIMCallback;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 181
    iget-object v3, p0, Lipx$1;->a:Lipx;

    invoke-static {v3}, Lipx;->d(Lipx;)Lcom/alipay/mobile/security/zim/api/ZIMCallback;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/alipay/mobile/security/zim/api/ZIMCallback;->response(Lcom/alipay/mobile/security/zim/api/ZIMResponse;)V

    .line 184
    .end local v2    # "zimResponse":Lcom/alipay/mobile/security/zim/api/ZIMResponse;
    :cond_1
    return-void

    .line 101
    :cond_2
    iget v3, p1, Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwResponse;->retCode:I

    const/16 v4, 0x3e9

    if-eq v3, v4, :cond_3

    iget v3, p1, Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwResponse;->retCode:I

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_4

    .line 102
    :cond_3
    const/4 v1, 0x1

    .line 103
    iget-object v3, p0, Lipx$1;->a:Lipx;

    invoke-static {v3}, Lipx;->c(Lipx;)Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    move-result-object v3

    invoke-static {v3}, Lipw;->a(Lcom/alipay/mobile/security/bio/service/BioServiceManager;)Lipw;

    move-result-object v3

    sget-object v4, Lipw;->e:Ljava/lang/String;

    new-instance v5, Lipv;

    iget-object v6, p0, Lipx$1;->a:Lipx;

    invoke-static {v6}, Lipx;->b(Lipx;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p1, Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwResponse;->retCode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v9, v7}, Lipv;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lipw;->a(Ljava/lang/String;Lipv;)V

    goto :goto_0

    .line 107
    :cond_4
    iget-object v3, p0, Lipx$1;->a:Lipx;

    invoke-static {v3}, Lipx;->c(Lipx;)Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    move-result-object v3

    invoke-static {v3}, Lipw;->a(Lcom/alipay/mobile/security/bio/service/BioServiceManager;)Lipw;

    move-result-object v3

    sget-object v4, Lipw;->e:Ljava/lang/String;

    new-instance v5, Lipv;

    iget-object v6, p0, Lipx$1;->a:Lipx;

    invoke-static {v6}, Lipx;->b(Lipx;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-direct {v5, v6, v8, v7}, Lipv;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lipw;->a(Ljava/lang/String;Lipv;)V

    .line 162
    new-instance v0, Lcom/alipay/mobile/security/bio/api/BioParameter;

    invoke-direct {v0}, Lcom/alipay/mobile/security/bio/api/BioParameter;-><init>()V

    .line 163
    .local v0, "bioParameter":Lcom/alipay/mobile/security/bio/api/BioParameter;
    iget-object v3, p1, Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwResponse;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/security/bio/api/BioParameter;->setProtocol(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v0, v8}, Lcom/alipay/mobile/security/bio/api/BioParameter;->setAutoClose(Z)V

    .line 165
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/security/bio/api/BioParameter;->setBundle(Landroid/os/Bundle;)V

    .line 166
    const-string/jumbo v3, "verifyid"

    iget-object v4, p0, Lipx$1;->a:Lipx;

    invoke-static {v4}, Lipx;->b(Lipx;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alipay/mobile/security/bio/api/BioParameter;->addExtProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string/jumbo v3, "TOKEN_ID"

    iget-object v4, p0, Lipx$1;->a:Lipx;

    invoke-static {v4}, Lipx;->b(Lipx;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alipay/mobile/security/bio/api/BioParameter;->addExtProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v3, p0, Lipx$1;->a:Lipx;

    invoke-static {v3}, Lipx;->c(Lipx;)Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    move-result-object v3

    invoke-static {v3}, Lipw;->a(Lcom/alipay/mobile/security/bio/service/BioServiceManager;)Lipw;

    move-result-object v3

    sget-object v4, Lipw;->f:Ljava/lang/String;

    new-instance v5, Lipu;

    iget-object v6, p0, Lipx$1;->a:Lipx;

    invoke-static {v6}, Lipx;->b(Lipx;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lipu;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lipw;->a(Ljava/lang/String;Lipu;)V

    .line 170
    iget-object v3, p0, Lipx$1;->a:Lipx;

    invoke-static {v3, v0}, Lipx;->a(Lipx;Lcom/alipay/mobile/security/bio/api/BioParameter;)V

    goto/16 :goto_0
.end method

.method public final a(Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;)V
    .locals 6
    .param p1, "response"    # Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 189
    iget-object v3, p0, Lipx$1;->a:Lipx;

    invoke-static {v3}, Lipx;->a(Lipx;)Lcom/alipay/biometrics/ui/widget/LoadingProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/biometrics/ui/widget/LoadingProgressDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 190
    iget-object v3, p0, Lipx$1;->a:Lipx;

    invoke-static {v3}, Lipx;->a(Lipx;)Lcom/alipay/biometrics/ui/widget/LoadingProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/biometrics/ui/widget/LoadingProgressDialog;->hide()V

    .line 193
    :cond_0
    iget-object v3, p0, Lipx$1;->a:Lipx;

    invoke-static {v3, p1}, Lipx;->a(Lipx;Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;)V

    .line 195
    new-instance v2, Lcom/alipay/mobile/security/zim/api/ZIMResponse;

    invoke-direct {v2}, Lcom/alipay/mobile/security/zim/api/ZIMResponse;-><init>()V

    .line 196
    .local v2, "zimResponse":Lcom/alipay/mobile/security/zim/api/ZIMResponse;
    const/4 v0, 0x0

    .line 200
    .local v0, "isNeedResponse":Z
    if-nez p1, :cond_3

    .line 201
    const/4 v0, 0x1

    .line 202
    const/16 v3, 0x3e9

    iput v3, v2, Lcom/alipay/mobile/security/zim/api/ZIMResponse;->code:I

    .line 225
    :cond_1
    :goto_0
    iget-object v3, p0, Lipx$1;->a:Lipx;

    invoke-static {v3}, Lipx;->d(Lipx;)Lcom/alipay/mobile/security/zim/api/ZIMCallback;

    move-result-object v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    .line 226
    iget-object v3, p0, Lipx$1;->a:Lipx;

    invoke-static {v3}, Lipx;->e(Lipx;)Lcom/alipay/mobile/security/bio/api/BioDetector;

    move-result-object v3

    const/16 v4, 0x1003

    invoke-interface {v3, v4}, Lcom/alipay/mobile/security/bio/api/BioDetector;->command(I)V

    .line 227
    iget-object v3, p0, Lipx$1;->a:Lipx;

    invoke-static {v3, v2}, Lipx;->a(Lipx;Lcom/alipay/mobile/security/zim/api/ZIMResponse;)V

    .line 228
    iget-object v3, p0, Lipx$1;->a:Lipx;

    invoke-static {v3}, Lipx;->d(Lipx;)Lcom/alipay/mobile/security/zim/api/ZIMCallback;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/alipay/mobile/security/zim/api/ZIMCallback;->response(Lcom/alipay/mobile/security/zim/api/ZIMResponse;)V

    .line 231
    :cond_2
    return-void

    .line 207
    :cond_3
    iget-object v3, p1, Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;->nextProtocol:Ljava/lang/String;

    iput-object v3, v2, Lcom/alipay/mobile/security/zim/api/ZIMResponse;->bizData:Ljava/lang/String;

    .line 208
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;->productRetCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/mobile/security/zim/api/ZIMResponse;->reason:Ljava/lang/String;

    .line 209
    iget v3, p1, Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;->validationRetCode:I

    iput v3, v2, Lcom/alipay/mobile/security/zim/api/ZIMResponse;->code:I

    .line 211
    iget-object v3, p1, Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;->extParams:Ljava/util/Map;

    if-eqz v3, :cond_4

    .line 213
    iget-object v3, p1, Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;->extParams:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 214
    .local v1, "key":Ljava/lang/String;
    iget-object v4, v2, Lcom/alipay/mobile/security/zim/api/ZIMResponse;->extInfo:Ljava/util/Map;

    iget-object v5, p1, Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;->extParams:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 218
    .end local v1    # "key":Ljava/lang/String;
    :cond_4
    iget v3, p1, Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;->validationRetCode:I

    const/16 v4, 0xbb9

    if-eq v3, v4, :cond_1

    iget v3, p1, Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;->validationRetCode:I

    const/16 v4, 0xbba

    if-eq v3, v4, :cond_1

    .line 221
    const/4 v0, 0x1

    goto :goto_0
.end method
