.class public interface abstract Luu;
.super Ljava/lang/Object;
.source "MessageRetrievalListener.java"


# virtual methods
.method public abstract messageFinished(Lcom/alibaba/alimei/emailcommon/mail/Message;II)V
.end method

.method public abstract messageProgress(Ljava/lang/String;I)V
.end method

.method public abstract messageStarted(Ljava/lang/String;II)V
.end method

.method public abstract messagesFinished(Ljava/util/List;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/emailcommon/mail/Message;",
            ">;II)V"
        }
    .end annotation
.end method
