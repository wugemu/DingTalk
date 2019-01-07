.class public interface abstract Lcom/alibaba/alimei/contact/datasource/ContactDatasource;
.super Ljava/lang/Object;
.source "ContactDatasource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/contact/datasource/ContactDatasource$InstanceHolder;
    }
.end annotation


# virtual methods
.method public abstract addBlackUser(JLjava/lang/String;)Z
.end method

.method public abstract deleteAllBlackUser(J)V
.end method

.method public abstract deleteBlackUser(JLjava/lang/String;)V
.end method

.method public abstract deleteContact(J)Z
.end method

.method public abstract handleSyncBlackContactResult(JLcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncBlackContactResult;)V
.end method

.method public abstract handleSyncContactResult(JLcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncContactResult;)V
.end method

.method public abstract handleSyncRecentedContactResult(JLcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncRecentedContactResult;)V
.end method

.method public abstract handleSyncUserSelfContact(JLcom/alibaba/alimei/restfulapi/data/contact/UserSelfContact;)V
.end method

.method public abstract isBlackUser(JLjava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract queryAllBlackContacts(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/contact/model/BlackContactModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryAllContacts(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/contact/model/ContactModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryAllEmailContacts(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/contact/model/ContactModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryCallLog()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/contact/model/CallLogModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryContact(JJ)Lcom/alibaba/alimei/contact/model/ContactModel;
.end method

.method public abstract queryContact(JLjava/lang/String;)Lcom/alibaba/alimei/contact/model/ContactModel;
.end method

.method public abstract queryDirtyContacts(JLjava/util/HashMap;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryUserSelfContact(J)Lcom/alibaba/alimei/contact/model/UserSelfContactModel;
.end method

.method public abstract saveCallLog(Lcom/alibaba/alimei/contact/db/entry/CallLog;)J
.end method

.method public abstract saveContact(JLcom/alibaba/alimei/contact/model/ContactModel;)Lcom/alibaba/alimei/contact/model/ContactModel;
.end method

.method public abstract saveSelfUser(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract searchContacts(JLjava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/contact/model/SearchContactModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract updateDirtyContact(JLcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleContactUpdateResult;)V
.end method

.method public abstract updateSelfInfo(JLjava/lang/String;Ljava/lang/String;)Z
.end method
