.class public interface abstract Lcom/alibaba/alimei/mail/search/api/MailSearchApi;
.super Ljava/lang/Object;
.source "MailSearchApi.java"


# virtual methods
.method public abstract clearHistory(ILxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract clearHistory(Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queryAllSearchHistory(Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract saveHistory(ILjava/lang/String;Ljava/lang/String;Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract saveHistory(ILjava/lang/String;Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method
