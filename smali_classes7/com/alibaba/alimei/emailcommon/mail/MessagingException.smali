.class public Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
.super Ljava/lang/Exception;
.source "MessagingException.java"


# static fields
.field public static final serialVersionUID:J = -0x1L


# instance fields
.field private error:Lcom/alibaba/alimei/framework/SDKError;

.field permanentFailure:Z


# direct methods
.method public constructor <init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Lcom/alibaba/alimei/framework/SDKError;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->permanentFailure:Z

    .line 17
    iput-object p1, p0, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->error:Lcom/alibaba/alimei/framework/SDKError;

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "code"    # Lcom/alibaba/alimei/framework/SDKError;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 29
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->permanentFailure:Z

    .line 30
    iput-object p1, p0, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->error:Lcom/alibaba/alimei/framework/SDKError;

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "code"    # Lcom/alibaba/alimei/framework/SDKError;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "perm"    # Z

    .prologue
    .line 22
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->permanentFailure:Z

    .line 23
    iput-object p1, p0, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->error:Lcom/alibaba/alimei/framework/SDKError;

    .line 24
    iput-boolean p3, p0, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->permanentFailure:Z

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;ZLjava/lang/Throwable;)V
    .locals 1
    .param p1, "code"    # Lcom/alibaba/alimei/framework/SDKError;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "perm"    # Z
    .param p4, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 35
    invoke-direct {p0, p2, p4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->permanentFailure:Z

    .line 36
    iput-object p1, p0, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->error:Lcom/alibaba/alimei/framework/SDKError;

    .line 37
    iput-boolean p3, p0, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->permanentFailure:Z

    .line 38
    return-void
.end method


# virtual methods
.method public getError()Lcom/alibaba/alimei/framework/SDKError;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->error:Lcom/alibaba/alimei/framework/SDKError;

    return-object v0
.end method

.method public isPermanentFailure()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->permanentFailure:Z

    return v0
.end method

.method public setPermanentFailure(Z)V
    .locals 0
    .param p1, "permanentFailure"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->permanentFailure:Z

    .line 48
    return-void
.end method
