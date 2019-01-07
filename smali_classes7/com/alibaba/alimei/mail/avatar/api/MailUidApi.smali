.class public interface abstract Lcom/alibaba/alimei/mail/avatar/api/MailUidApi;
.super Ljava/lang/Object;
.source "MailUidApi.java"


# virtual methods
.method public abstract clearUidCache(Lxv;)V
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

.method public abstract queryUidByEmail(Ljava/lang/String;Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/mail/avatar/model/MailUidModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract saveUidByEmail(Ljava/lang/String;JLxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;)V"
        }
    .end annotation
.end method
