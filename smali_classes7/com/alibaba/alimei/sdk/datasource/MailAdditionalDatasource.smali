.class public interface abstract Lcom/alibaba/alimei/sdk/datasource/MailAdditionalDatasource;
.super Ljava/lang/Object;
.source "MailAdditionalDatasource.java"


# virtual methods
.method public abstract blurredLookUpQuery(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/db/lookup/entry/RecipientLookup;",
            ">;"
        }
    .end annotation
.end method

.method public abstract deleteAllRevokeStatus(J)V
.end method

.method public abstract deleteRevokeStatus(JLjava/lang/String;)V
.end method

.method public abstract handleMailInfoStatus(JLjava/lang/String;Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult;)V
.end method

.method public abstract handleMailReadListResult(JLjava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/response/data/MailReadListResult;)V
.end method

.method public abstract handleMailRecipientIntoParticipants(JLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/alibaba/alimei/restfulapi/data/AliAddress;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/AliAddress;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/AliAddress;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/AliAddress;",
            ">;",
            "Lcom/alibaba/alimei/restfulapi/data/AliAddress;",
            ")V"
        }
    .end annotation
.end method

.method public abstract handleMailSendStatus(JLjava/lang/String;Lcom/alibaba/alimei/restfulapi/data/MailSendStatus;)I
.end method

.method public abstract handleRevokeStatus(JLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/RevokeMailQueryResult;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract insertLookUp(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/db/lookup/entry/RecipientLookup;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract loadMailRecipientIntoParticipants(JLjava/lang/String;Z)V
.end method

.method public abstract lookupContains(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract queryAllRevokeStatus(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/RevokeStatusModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryMailParticipantsMap(JLjava/lang/String;Z)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract queryMailReadStatus(JLjava/lang/String;)Lcom/alibaba/alimei/sdk/model/MailReadStatusModel;
.end method

.method public abstract queryRevokeStatus(JLjava/lang/String;)Lcom/alibaba/alimei/sdk/model/RevokeStatusModel;
.end method
