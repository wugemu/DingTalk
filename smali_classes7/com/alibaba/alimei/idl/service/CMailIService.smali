.class public interface abstract Lcom/alibaba/alimei/idl/service/CMailIService;
.super Ljava/lang/Object;
.source "CMailIService.java"

# interfaces
.implements Lizm;


# annotations
.annotation runtime Lcom/laiwang/idl/AppName;
    value = "DD"
.end annotation


# virtual methods
.method public abstract bind(Ljava/lang/String;Ljava/lang/String;Lzs;Lccx;Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lzs;",
            "Lccx;",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindEmail(Ljava/lang/String;Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindOrgDomainAndUpdateOrgAgentConfig(Ljava/lang/String;Ljava/lang/Long;Lccx;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Lccx;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract call4Aid(Ljava/lang/Long;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract canDeleteEmpOrgMail(JLiyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Liyv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract canUnbindEmail(Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liyv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract changePopRule(Lzu;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzu;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract checkQrCodeToken(Lzw;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzw;",
            "Liyv",
            "<",
            "Lzv;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract closeOrgSignature(Lzy;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzy;",
            "Liyv",
            "<",
            "Lzx;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract createConversationEmails(Labi;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labi;",
            "Liyv",
            "<",
            "Ljava/util/List",
            "<",
            "Labw;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract deleteOrgEmail(JLjava/lang/String;Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract dispatchOrgEmails(JILiyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Liyv",
            "<",
            "Labt;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract dispatchOrgMailByUid(JILjava/util/List;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Liyv",
            "<",
            "Labt;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getAutoDispatchConfig(Laad;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laad;",
            "Liyv",
            "<",
            "Laac;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getCommonMemo(Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liyv",
            "<",
            "Lzz;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getConversationGroupsInfo(Laab;Lcmi;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laab;",
            "Lcmi",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getLoginMode(Liyv;)V
    .annotation runtime Lcom/laiwang/idl/AntRpcCache;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liyv",
            "<",
            "Labx;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getMailAdminOrgList(Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liyv",
            "<",
            "Ljava/util/List",
            "<",
            "Labk;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract getMailCid(Ljava/util/List;JLiyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;J",
            "Liyv",
            "<",
            "Ljava/util/List",
            "<",
            "Labn;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract getMailHelperConversationId(Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liyv",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getMailMessageReceiverMail(Ljava/lang/Long;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Liyv",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getMailTicket(Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Lcef;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getMailTicketV2(Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liyv",
            "<",
            "Labz;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getOrgMails(Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liyv",
            "<",
            "Ljava/util/List",
            "<",
            "Labf;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract getOrgMailsV2(Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liyv",
            "<",
            "Ljava/util/List",
            "<",
            "Labf;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract getReceiverListByConversationId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Liyv",
            "<",
            "Labv;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getReceivers(Labi;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labi;",
            "Liyv",
            "<",
            "Labv;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getThirdAccountsSubscribeInfo(Laba;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laba;",
            "Liyv",
            "<",
            "Labb;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getUidInfoByEmails(Ljava/util/List;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Liyv",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract getUserExtInfo(Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liyv",
            "<",
            "Labd;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getUserIsAdminOrgs(Ljava/lang/Integer;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Liyv",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract getUserMailSwitch(Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liyv",
            "<",
            "Laaz;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getUserOrgList(Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liyv",
            "<",
            "Laae;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract initAndSetTopDingMailConversation(Laah;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laah;",
            "Liyv",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract isSubscribeEmail(Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liyv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract isSubscribedCainiao(Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liyv",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract listAgentConfig(Ljava/lang/String;Ljava/lang/Long;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Liyv",
            "<",
            "Lccy;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract listAgentConfigV2(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Liyv",
            "<",
            "Lccy;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract listEmailSignatureV2(Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Ljava/util/List",
            "<",
            "Labr;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract listGroupMembersInfo(Laaj;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laaj;",
            "Liyv",
            "<",
            "Laai;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract listMailSignatureTemplate(Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Ljava/util/List",
            "<",
            "Labr;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract oneKeyBindWithOrgId(Laal;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laal;",
            "Liyv",
            "<",
            "Laak;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract oneKeyBindWithOrgName(Laam;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laam;",
            "Liyv",
            "<",
            "Laak;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract oneKeyEmpBindToOrg(Laao;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laao;",
            "Liyv",
            "<",
            "Laan;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract openOrgSignature(JILiyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Liyv",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queryBusSubscribeStatusList(Laaq;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laaq;",
            "Liyv",
            "<",
            "Laap;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queryChildChannelSubscribeStatusList(Laar;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laar;",
            "Liyv",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queryDomainAliasByEmail(Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract queryEmailDomainInfo(Ljava/lang/Long;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Liyv",
            "<",
            "Labs;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queryMailAutoLoginTicket(Ljava/lang/Long;Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Laby;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queryOrgEmailManageUrl(Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queryOrgEmailManageUrlV2(Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queryOrgEmailManageUrlWithExtend(Ljava/lang/String;Ljava/util/Map;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Liyv",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queryPopRule(Laau;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laau;",
            "Liyv",
            "<",
            "Laat;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queryQuickReply(Ljava/lang/String;Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Labu;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract reportGuidenceStatus(Laag;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laag;",
            "Liyv",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract saveOrUpdateEmailSignature(Ljava/util/List;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract saveOrUpdateEmailSignatureV2(Labr;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labr;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract saveQuickReply(Ljava/lang/String;Ljava/util/List;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Liyv",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract searchConversation(Ljava/lang/String;IILiyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Liyv",
            "<",
            "Labp;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendMailMessage(Labq;Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labq;",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendMailMsgWithUidEmailMap(Labq;Ljava/lang/String;Ljava/util/Map;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labq;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setAutoDispatchConfig(Laaw;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laaw;",
            "Liyv",
            "<",
            "Laav;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setThirdAccountsSubscribeInfo(Labb;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labb;",
            "Liyv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setUserMailSwitch(Laaz;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laaz;",
            "Liyv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract startShadeEmailPop(Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract submitMailSubscribe(Laay;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laay;",
            "Liyv",
            "<",
            "Laax;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract unbindEmail(Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract unbindEmailV2(Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liyv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract unbindEmailV5(Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Labg;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract unbindEmailV6(Ljava/lang/String;Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Labg;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateAgentConfig(Ljava/lang/String;Lccx;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lccx;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateEmailSignatureStatusV2(Ljava/util/List;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Labr;",
            ">;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateOrgAgentConfig(Ljava/lang/String;Ljava/lang/Long;Lccx;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Lccx;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract uploadClientInfo(Labc;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labc;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract userUpgradeAppVer(Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method
