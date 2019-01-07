.class public Lcom/alibaba/alimei/emailcommon/mail/CertificateValidationException;
.super Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
.source "CertificateValidationException.java"


# static fields
.field public static final serialVersionUID:J = -0x1L


# direct methods
.method public constructor <init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Lcom/alibaba/alimei/framework/SDKError;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "code"    # Lcom/alibaba/alimei/framework/SDKError;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    return-void
.end method
