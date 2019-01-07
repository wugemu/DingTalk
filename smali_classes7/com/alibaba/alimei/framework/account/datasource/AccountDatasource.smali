.class public interface abstract Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;
.super Ljava/lang/Object;
.source "AccountDatasource.java"


# virtual methods
.method public abstract getAccountById(J)Lcom/alibaba/alimei/framework/db/Account;
.end method

.method public abstract getAccountByName(Ljava/lang/String;)Lcom/alibaba/alimei/framework/db/Account;
.end method

.method public abstract getAccountSyncKey(J)Ljava/lang/String;
.end method

.method public abstract getDefaultUserAccount()Lcom/alibaba/alimei/framework/model/UserAccountModel;
.end method

.method public abstract getHostAuthByAccountName(Ljava/lang/String;)Lcom/alibaba/alimei/framework/db/HostAuth;
.end method

.method public abstract getHostAuthById(J)Lcom/alibaba/alimei/framework/db/HostAuth;
.end method

.method public abstract getSimpleHostAuthById(J)Lcom/alibaba/alimei/framework/db/HostAuth;
.end method

.method public abstract getTagSyncKey(J)Ljava/lang/String;
.end method

.method public abstract handleAccountDelete(Ljava/lang/String;Z)I
.end method

.method public abstract hasAccountLogin()Z
.end method

.method public abstract hasLogin(Ljava/lang/String;)Z
.end method

.method public abstract insertAccountWithHostAuth(Ljava/lang/String;ZLcom/alibaba/alimei/framework/db/HostAuth;)Lcom/alibaba/alimei/framework/model/UserAccountModel;
.end method

.method public abstract insertCommonAccount(Lcom/alibaba/alimei/framework/model/UserAccountModel;Z)Lcom/alibaba/alimei/framework/model/UserAccountModel;
.end method

.method public abstract loadAuthInfoByAccountName(Ljava/lang/String;)Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;
.end method

.method public abstract queryAccountByAccountName(Ljava/lang/String;)Lcom/alibaba/alimei/framework/model/UserAccountModel;
.end method

.method public abstract queryAccountById(J)Lcom/alibaba/alimei/framework/model/UserAccountModel;
.end method

.method public abstract queryAllAccount()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/framework/model/UserAccountModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryAllHostAuth()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/framework/db/HostAuth;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setDefaultAccount(Ljava/lang/String;)I
.end method

.method public abstract storeAuthInfo(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;)Lcom/alibaba/alimei/framework/db/HostAuth;
.end method

.method public abstract updateAccountSyncKey(JLjava/lang/String;)V
.end method

.method public abstract updateAuthInfo(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/auth/RefreshAuthInfo;)Lcom/alibaba/alimei/framework/db/HostAuth;
.end method

.method public abstract updateTagSyncKey(JLjava/lang/String;)V
.end method
