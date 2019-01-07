.class public interface abstract Lcom/alibaba/alimei/sdk/datasource/FrequentContactDataSource;
.super Ljava/lang/Object;
.source "FrequentContactDataSource.java"


# virtual methods
.method public abstract checkAndDeleteTopByModifyTimeOrder(IILjava/lang/String;)V
.end method

.method public abstract insertOrUpdateFrequentContactsInAddress(Ljava/lang/String;JLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/AliAddress;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract insertOrUpdateFrequentContactsInMails(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/Mail;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queryFrequentContacts(Ljava/lang/String;IZLjava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FrequentContactModel;",
            ">;"
        }
    .end annotation
.end method
