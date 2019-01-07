.class public Luv;
.super Ljava/lang/Object;
.source "MessagingListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addCertificateFail(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 19
    return-void
.end method

.method public addCertificateSuccess()V
    .locals 0

    .prologue
    .line 17
    return-void
.end method

.method public appendMailFailed(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Lcom/alibaba/alimei/emailcommon/mail/Message;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "message"    # Lcom/alibaba/alimei/emailcommon/mail/Message;
    .param p4, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 115
    return-void
.end method

.method public appendMailFinished(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Lcom/alibaba/alimei/emailcommon/mail/Message;)V
    .locals 0
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "message"    # Lcom/alibaba/alimei/emailcommon/mail/Message;

    .prologue
    .line 110
    return-void
.end method

.method public appendMailStarted(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Lcom/alibaba/alimei/emailcommon/mail/Message;)V
    .locals 0
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "message"    # Lcom/alibaba/alimei/emailcommon/mail/Message;

    .prologue
    .line 102
    return-void
.end method

.method public changeFlagFailed(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JZLjava/lang/Exception;)V
    .locals 0
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "uid"    # J
    .param p5, "flag"    # Z
    .param p6, "e"    # Ljava/lang/Exception;

    .prologue
    .line 143
    return-void
.end method

.method public changeFlagFinished(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JZ)V
    .locals 0
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "uid"    # J
    .param p5, "flag"    # Z

    .prologue
    .line 141
    return-void
.end method

.method public changeFlagStarted(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JZ)V
    .locals 0
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "uid"    # J
    .param p5, "flag"    # Z

    .prologue
    .line 139
    return-void
.end method

.method public changeReadStatusFailed(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JZLjava/lang/String;)V
    .locals 0
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "uid"    # J
    .param p5, "isRead"    # Z
    .param p6, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 46
    return-void
.end method

.method public changeReadStatusFinished(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JZ)V
    .locals 0
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "uid"    # J
    .param p5, "isRead"    # Z

    .prologue
    .line 44
    return-void
.end method

.method public changeReadStatusStarted(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JZ)V
    .locals 0
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "uid"    # J
    .param p5, "isRead"    # Z

    .prologue
    .line 42
    return-void
.end method

.method public checkAccount(Lcom/alibaba/alimei/emailcommon/Account;)V
    .locals 0
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;

    .prologue
    .line 21
    return-void
.end method

.method public checkAccountFailed(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 23
    return-void
.end method

.method public checkSmtp(Lcom/alibaba/alimei/emailcommon/Account;I)V
    .locals 0
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "securityType"    # I

    .prologue
    .line 25
    return-void
.end method

.method public checkSmtpFailed(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 27
    return-void
.end method

.method public deletMailFinished(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/emailcommon/Account;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p3, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    return-void
.end method

.method public deleteMailFailed(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p4, "exception"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/emailcommon/Account;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 94
    .local p3, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    return-void
.end method

.method public deleteMailStarted(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/emailcommon/Account;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p3, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    return-void
.end method

.method public fetchAttachmentFailed(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "uid"    # J
    .param p5, "exception"    # Ljava/lang/String;

    .prologue
    .line 78
    return-void
.end method

.method public fetchAttachmentFinished(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JLcom/alibaba/alimei/emailcommon/mail/Message;)V
    .locals 0
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "uid"    # J
    .param p5, "part"    # Lcom/alibaba/alimei/emailcommon/mail/Message;

    .prologue
    .line 76
    return-void
.end method

.method public fetchAttachmentProgress(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JI)V
    .locals 0
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "uid"    # J
    .param p5, "progress"    # I

    .prologue
    .line 77
    return-void
.end method

.method public fetchAttachmentStarted(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "uid"    # J
    .param p5, "partId"    # Ljava/lang/String;

    .prologue
    .line 75
    return-void
.end method

.method public fetchEmlFailed(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folderName"    # Ljava/lang/String;
    .param p3, "uid"    # Ljava/lang/Long;
    .param p4, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 35
    return-void
.end method

.method public fetchEmlFinish(Lcom/alibaba/alimei/emailcommon/Account;Lcom/alibaba/alimei/emailcommon/mail/Message;Ljava/lang/String;)V
    .locals 0
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "message"    # Lcom/alibaba/alimei/emailcommon/mail/Message;
    .param p3, "emlPath"    # Ljava/lang/String;

    .prologue
    .line 33
    return-void
.end method

.method public fetchMailDetailFailed(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JLjava/lang/Exception;)V
    .locals 0
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "uid"    # J
    .param p5, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 73
    return-void
.end method

.method public fetchMailDetailFinished(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JLcom/alibaba/alimei/emailcommon/mail/Message;)V
    .locals 0
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "uid"    # J
    .param p5, "part"    # Lcom/alibaba/alimei/emailcommon/mail/Message;

    .prologue
    .line 72
    return-void
.end method

.method public fetchMailDetailStarted(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "uid"    # J
    .param p5, "partId"    # Ljava/lang/String;

    .prologue
    .line 71
    return-void
.end method

.method public fetchMailSummaryFailed(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JLjava/lang/Exception;)V
    .locals 0
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "uid"    # J
    .param p5, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 82
    return-void
.end method

.method public fetchMailSummaryFinished(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JLcom/alibaba/alimei/emailcommon/mail/Message;)V
    .locals 0
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "uid"    # J
    .param p5, "part"    # Lcom/alibaba/alimei/emailcommon/mail/Message;

    .prologue
    .line 81
    return-void
.end method

.method public fetchMailSummaryStarted(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "uid"    # J
    .param p5, "partId"    # Ljava/lang/String;

    .prologue
    .line 80
    return-void
.end method

.method public listFoldersFailed(Lcom/alibaba/alimei/emailcommon/Account;)V
    .locals 0
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;

    .prologue
    .line 39
    return-void
.end method

.method public listRemoteFolders(Lcom/alibaba/alimei/emailcommon/Account;Ljava/util/List;Lwl;)V
    .locals 0
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p3, "imapServer"    # Lwl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/emailcommon/Account;",
            "Ljava/util/List",
            "<+",
            "Lcom/alibaba/alimei/emailcommon/mail/Folder;",
            ">;",
            "Lwl;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    .local p2, "allRemoteFolder":Ljava/util/List;, "Ljava/util/List<+Lcom/alibaba/alimei/emailcommon/mail/Folder;>;"
    return-void
.end method

.method public listRemoteUids(Lcom/alibaba/alimei/emailcommon/Account;[Lcom/alibaba/alimei/emailcommon/mail/Message;)V
    .locals 0
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "messages"    # [Lcom/alibaba/alimei/emailcommon/mail/Message;

    .prologue
    .line 29
    return-void
.end method

.method public listRemoteUidsFailed(Lcom/alibaba/alimei/emailcommon/Account;)V
    .locals 0
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;

    .prologue
    .line 31
    return-void
.end method

.method public moveMailFailed(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "srcFolder"    # Ljava/lang/String;
    .param p3, "destFolder"    # Ljava/lang/String;
    .param p5, "exception"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/emailcommon/Account;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 90
    .local p4, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    return-void
.end method

.method public moveMailFinished(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "srcFolder"    # Ljava/lang/String;
    .param p3, "destFolder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/emailcommon/Account;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p4, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    return-void
.end method

.method public moveMailStarted(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "srcFolder"    # Ljava/lang/String;
    .param p3, "destFolder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/emailcommon/Account;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p4, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    return-void
.end method

.method public searchMailFailed(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "query"    # Ljava/lang/String;
    .param p4, "exception"    # Ljava/lang/String;

    .prologue
    .line 86
    return-void
.end method

.method public searchMailFinished(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/emailcommon/Account;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/emailcommon/mail/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p4, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/emailcommon/mail/Message;>;"
    return-void
.end method

.method public searchMailStarted(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "query"    # Ljava/lang/String;

    .prologue
    .line 84
    return-void
.end method

.method public sendMailFailed(Lcom/alibaba/alimei/emailcommon/Account;Lcom/alibaba/alimei/emailcommon/mail/Message;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "message"    # Lcom/alibaba/alimei/emailcommon/mail/Message;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 136
    return-void
.end method

.method public sendMailFinish(Lcom/alibaba/alimei/emailcommon/Account;Lcom/alibaba/alimei/emailcommon/mail/Message;)V
    .locals 0
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "message"    # Lcom/alibaba/alimei/emailcommon/mail/Message;

    .prologue
    .line 129
    return-void
.end method

.method public sendMailStarted(Lcom/alibaba/alimei/emailcommon/Account;Lcom/alibaba/alimei/emailcommon/mail/Message;)V
    .locals 0
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "message"    # Lcom/alibaba/alimei/emailcommon/mail/Message;

    .prologue
    .line 122
    return-void
.end method

.method public synchronizeMailFlagFailed(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 65
    return-void
.end method

.method public synchronizeMailFlagFinished(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JJ[Lcom/alibaba/alimei/emailcommon/mail/Message;)V
    .locals 0
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "startUid"    # J
    .param p5, "endUid"    # J
    .param p7, "messages"    # [Lcom/alibaba/alimei/emailcommon/mail/Message;

    .prologue
    .line 67
    return-void
.end method

.method public synchronizeMailFlagQueryUnSyncedMail(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JJ[Lcom/alibaba/alimei/emailcommon/mail/Message;)Ljava/util/List;
    .locals 1
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "startUid"    # J
    .param p5, "endUid"    # J
    .param p7, "messages"    # [Lcom/alibaba/alimei/emailcommon/mail/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/emailcommon/Account;",
            "Ljava/lang/String;",
            "JJ[",
            "Lcom/alibaba/alimei/emailcommon/mail/Message;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/emailcommon/mail/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public synchronizeMailFlagStarted(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JJ)V
    .locals 0
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "startUid"    # J
    .param p5, "endUid"    # J

    .prologue
    .line 63
    return-void
.end method

.method public synchronizeMailboxFailed(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 60
    return-void
.end method

.method public synchronizeMailboxFinished(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;II)V
    .locals 0
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "totalMessagesInMailbox"    # I
    .param p4, "numNewMessages"    # I

    .prologue
    .line 58
    return-void
.end method

.method public synchronizeMailboxHeadersFinished(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;II)V
    .locals 0
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "totalMessagesInMailbox"    # I
    .param p4, "numNewMessages"    # I

    .prologue
    .line 56
    return-void
.end method

.method public synchronizeMailboxHeadersProgress(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;II)V
    .locals 0
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "offset"    # I
    .param p4, "total"    # I

    .prologue
    .line 53
    return-void
.end method

.method public synchronizeMailboxHeadersProgress(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/emailcommon/Account;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/emailcommon/mail/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p3, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/emailcommon/mail/Message;>;"
    return-void
.end method

.method public synchronizeMailboxHeadersStarted(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;)V
    .locals 0
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;

    .prologue
    .line 51
    return-void
.end method

.method public synchronizeMailboxStarted(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;)V
    .locals 0
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;

    .prologue
    .line 49
    return-void
.end method
