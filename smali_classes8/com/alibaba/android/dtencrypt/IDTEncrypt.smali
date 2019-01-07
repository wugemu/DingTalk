.class public interface abstract Lcom/alibaba/android/dtencrypt/IDTEncrypt;
.super Ljava/lang/Object;
.source "IDTEncrypt.java"


# virtual methods
.method public abstract decryptData(Ljava/lang/String;[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/android/dtencrypt/DTEncryptException;
        }
    .end annotation
.end method

.method public abstract decryptFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/android/dtencrypt/DTEncryptException;
        }
    .end annotation
.end method

.method public abstract decryptMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/android/dtencrypt/DTEncryptException;
        }
    .end annotation
.end method

.method public abstract encryptData(Ljava/lang/String;[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/android/dtencrypt/DTEncryptException;
        }
    .end annotation
.end method

.method public abstract encryptFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/android/dtencrypt/DTEncryptException;
        }
    .end annotation
.end method

.method public abstract encryptMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/android/dtencrypt/DTEncryptException;
        }
    .end annotation
.end method

.method public abstract init(Landroid/content/Context;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/android/dtencrypt/DTEncryptException;
        }
    .end annotation
.end method

.method public abstract setDTGetCodeProxy(Lcom/alibaba/android/dtencrypt/DTGetCodeProxy;)V
.end method

.method public abstract setDTHttpRequestProxy(Lcom/alibaba/android/dtencrypt/DTHttpRequestProxy;)V
.end method

.method public abstract setDTLogProxy(Lcom/alibaba/android/dtencrypt/DTLogProxy;)V
.end method

.method public abstract setDTSendBroadcastProxy(Lcom/alibaba/android/dtencrypt/DTSendBroadcastProxy;)V
.end method

.method public abstract setPushData(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/android/dtencrypt/DTEncryptException;
        }
    .end annotation
.end method
