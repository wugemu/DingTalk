.class public interface abstract Lcom/alibaba/alimei/mail/search/datasource/MailSearchHistoryDatasource;
.super Ljava/lang/Object;
.source "MailSearchHistoryDatasource.java"


# virtual methods
.method public abstract clearHistory(J)V
.end method

.method public abstract clearHistory(JI)V
.end method

.method public abstract queryAllSearchHistory(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract saveHistory(JILjava/lang/String;)V
.end method

.method public abstract saveHistory(JILjava/lang/String;Ljava/lang/String;)V
.end method
