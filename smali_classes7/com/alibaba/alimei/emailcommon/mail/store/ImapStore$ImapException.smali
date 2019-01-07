.class Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapException;
.super Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
.source "ImapStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImapException"
.end annotation


# instance fields
.field mResponse:Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;


# direct methods
.method public constructor <init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;)V
    .locals 0
    .param p1, "code"    # Lcom/alibaba/alimei/framework/SDKError;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "response"    # Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;

    .prologue
    .line 4051
    invoke-direct {p0, p1, p2}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;)V

    .line 4052
    iput-object p3, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapException;->mResponse:Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;

    .line 4053
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "code"    # Lcom/alibaba/alimei/framework/SDKError;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "response"    # Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;
    .param p4, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 4045
    invoke-direct {p0, p1, p2, p4}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4046
    iput-object p3, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapException;->mResponse:Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;

    .line 4047
    return-void
.end method


# virtual methods
.method public getAlertText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4057
    iget-object v0, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapException;->mResponse:Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;

    if-eqz v0, :cond_0

    .line 4058
    iget-object v0, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapException;->mResponse:Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;

    invoke-virtual {v0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->getAlertText()Ljava/lang/String;

    move-result-object v0

    .line 4060
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getReponseString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4065
    iget-object v0, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapException;->mResponse:Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;

    if-eqz v0, :cond_0

    .line 4066
    iget-object v0, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapException;->mResponse:Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;

    invoke-virtual {v0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4068
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method
