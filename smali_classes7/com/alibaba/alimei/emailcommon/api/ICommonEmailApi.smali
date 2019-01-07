.class public interface abstract Lcom/alibaba/alimei/emailcommon/api/ICommonEmailApi;
.super Ljava/lang/Object;
.source "ICommonEmailApi.java"


# virtual methods
.method public abstract appendMail(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Lcom/alibaba/alimei/emailcommon/mail/Message;Luv;)V
.end method

.method public abstract changeMailFlagStatus(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JZLuv;)V
.end method

.method public abstract changeMailReadStatus(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JZLuv;)V
.end method

.method public abstract checkAccount(Landroid/content/Context;Lcom/alibaba/alimei/emailcommon/CommonAccount;)Lcom/alibaba/alimei/emailcommon/Account;
.end method

.method public abstract checkAcocunt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLuv;)V
.end method

.method public abstract checkOAuthAcocunt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLuv;)V
.end method

.method public abstract checkSmtp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLuv;)V
.end method

.method public abstract deleteMessage(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Ljava/util/List;Luv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/emailcommon/Account;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Luv;",
            ")V"
        }
    .end annotation
.end method

.method public abstract fetchAttachment(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLuv;)V
.end method

.method public abstract fetchEml(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Ljava/lang/Long;Luv;)V
.end method

.method public abstract fetchMailDetail(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Luv;)V
.end method

.method public abstract fetchMailSummary(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLuv;)V
.end method

.method public abstract fetchUids(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;IILuv;)V
.end method

.method public abstract getLastCertificateChain()[Ljava/security/cert/X509Certificate;
.end method

.method public abstract listFolders(Lcom/alibaba/alimei/emailcommon/Account;Luv;)V
.end method

.method public abstract logout(Lcom/alibaba/alimei/emailcommon/Account;)V
.end method

.method public abstract moveMessage(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Luv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/emailcommon/Account;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Luv;",
            ")V"
        }
    .end annotation
.end method

.method public abstract searchMail(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Luv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/emailcommon/Account;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/alibaba/alimei/emailcommon/mail/Flag;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/alibaba/alimei/emailcommon/mail/Flag;",
            ">;",
            "Luv;",
            ")V"
        }
    .end annotation
.end method

.method public abstract sendMail(Lcom/alibaba/alimei/emailcommon/Account;Lcom/alibaba/alimei/emailcommon/mail/Message;Luv;)V
.end method

.method public abstract syncchronizeFlag(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JJLuv;)V
.end method

.method public abstract synchronizeMailbox(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;IJLuv;)V
.end method

.method public abstract trustCertificateChain([Ljava/security/cert/X509Certificate;Luv;)V
.end method
