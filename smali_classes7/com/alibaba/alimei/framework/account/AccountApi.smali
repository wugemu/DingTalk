.class public interface abstract Lcom/alibaba/alimei/framework/account/AccountApi;
.super Ljava/lang/Object;
.source "AccountApi.java"


# virtual methods
.method public abstract getAccessToken(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getDefaultAccessToken()Ljava/lang/String;
.end method

.method public abstract getDefaultAccountName()Ljava/lang/String;
.end method

.method public abstract getDefaultUserAccount()Lcom/alibaba/alimei/framework/model/UserAccountModel;
.end method

.method public abstract getImageCheckCode(Ljava/lang/String;IILxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/framework/model/ImageCheckCodeModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getWebToken(Ljava/lang/String;ILjava/lang/String;Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/framework/model/WebTokenModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract hasAccountLogin()Z
.end method

.method public abstract hasLogin(Ljava/lang/String;)Z
.end method

.method public abstract login(Ljava/lang/String;Ljava/lang/String;Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/framework/model/UserAccountModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract login(Ljava/lang/String;Ljava/lang/String;ZLxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/framework/model/UserAccountModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract loginAllowReplace(Ljava/lang/String;Ljava/lang/String;ZLxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/framework/model/UserAccountModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract loginForAlilang(Ljava/lang/String;Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/framework/model/UserAccountModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract loginForAlilang(Ljava/lang/String;ZLxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/framework/model/UserAccountModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract loginWithThirdAccessToken(Ljava/lang/String;Ljava/lang/String;Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/framework/model/UserAccountModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract loginWithThirdAccessToken(Ljava/lang/String;Ljava/lang/String;ZLxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/framework/model/UserAccountModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract logout(Ljava/lang/String;Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract logoutAll(Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queryAccount(J)Lcom/alibaba/alimei/framework/model/UserAccountModel;
.end method

.method public abstract queryAccountByName(Ljava/lang/String;Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/framework/model/UserAccountModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queryAccountByNameSync(Ljava/lang/String;)Lcom/alibaba/alimei/framework/model/UserAccountModel;
.end method

.method public abstract queryAccountSetting(Ljava/lang/String;Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/framework/model/AccountSettingModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queryAllAccounts(Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/framework/model/UserAccountModel;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract refreshAllAccountToken(JLxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract refreshToken(Ljava/lang/String;Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/framework/model/UserAccountModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removeAccount(Ljava/lang/String;Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setDefaultAccount(Ljava/lang/String;Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateAccountSetting(Ljava/lang/String;Lcom/alibaba/alimei/framework/model/AccountSettingModel;Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/framework/model/AccountSettingModel;",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateDisplayName(Ljava/lang/String;Ljava/lang/String;Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateFolderSynckey(Ljava/lang/String;Ljava/lang/String;Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateForwardWithAttachments(Ljava/lang/String;ZLxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateSignature(Ljava/lang/String;Ljava/lang/String;Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateTagSynckey(Ljava/lang/String;Ljava/lang/String;Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract verifyImageCheckCode(Ljava/lang/String;Ljava/lang/String;Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;)V"
        }
    .end annotation
.end method
