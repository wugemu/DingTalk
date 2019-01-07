.class public Lcom/alibaba/alimei/emailcommon/mail/store/UnavailableStorageException;
.super Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
.source "UnavailableStorageException.java"


# static fields
.field private static final serialVersionUID:J = 0x12b60208c0610878L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 15
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/alibaba/alimei/emailcommon/mail/store/UnavailableStorageException;-><init>(Ljava/lang/String;Z)V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 26
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/alibaba/alimei/emailcommon/mail/store/UnavailableStorageException;-><init>(Ljava/lang/String;ZLjava/lang/Throwable;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "perm"    # Z

    .prologue
    .line 20
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->UNAVAILABLE_STORAGE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    invoke-direct {p0, v0, p1, p2}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Z)V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "perm"    # Z
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 31
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->UNAVAILABLE_STORAGE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;ZLjava/lang/Throwable;)V

    .line 32
    return-void
.end method
