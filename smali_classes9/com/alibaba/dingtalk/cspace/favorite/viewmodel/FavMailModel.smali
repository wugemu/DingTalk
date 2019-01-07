.class public Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavMailModel;
.super Ljava/lang/Object;
.source "FavMailModel.java"


# instance fields
.field private fileCount:I

.field private mailAddress:Ljava/lang/String;

.field private mailAuthor:Ljava/lang/String;

.field private mailDate:J

.field private mailId:Ljava/lang/String;

.field private mailMsgId:Ljava/lang/String;

.field private mailType:Ljava/lang/String;

.field private msgTip:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;)V
    .locals 2
    .param p1, "mailDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    if-eqz p1, :cond_0

    .line 15
    iget-object v0, p1, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavMailModel;->mailId:Ljava/lang/String;

    .line 16
    iget-object v0, p1, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailMessageID:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavMailModel;->mailMsgId:Ljava/lang/String;

    .line 17
    iget v0, p1, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailFileCount:I

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavMailModel;->fileCount:I

    .line 18
    iget v0, p1, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailType:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavMailModel;->mailType:Ljava/lang/String;

    .line 19
    iget-object v0, p1, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailAuthor:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavMailModel;->mailAuthor:Ljava/lang/String;

    .line 20
    iget-object v0, p1, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavMailModel;->mailAddress:Ljava/lang/String;

    .line 21
    iget-object v0, p1, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->msgTip:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavMailModel;->msgTip:Ljava/lang/String;

    .line 22
    iget-wide v0, p1, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailDate:J

    iput-wide v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavMailModel;->mailDate:J

    .line 24
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/google/gson/internal/LinkedTreeMap;)V
    .locals 4
    .param p1, "map"    # Lcom/google/gson/internal/LinkedTreeMap;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    if-nez p1, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    :try_start_0
    const-string/jumbo v1, "mailId"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 33
    const-string/jumbo v1, "mailId"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavMailModel;->mailId:Ljava/lang/String;

    .line 35
    :cond_2
    const-string/jumbo v1, "mailMsgId"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 36
    const-string/jumbo v1, "mailMsgId"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavMailModel;->mailMsgId:Ljava/lang/String;

    .line 38
    :cond_3
    const-string/jumbo v1, "mailType"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 39
    const-string/jumbo v1, "mailType"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavMailModel;->mailType:Ljava/lang/String;

    .line 41
    :cond_4
    const-string/jumbo v1, "mailAuthor"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 42
    const-string/jumbo v1, "mailAuthor"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavMailModel;->mailAuthor:Ljava/lang/String;

    .line 44
    :cond_5
    const-string/jumbo v1, "mailAddress"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 45
    const-string/jumbo v1, "mailAddress"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavMailModel;->mailAddress:Ljava/lang/String;

    .line 47
    :cond_6
    const-string/jumbo v1, "msgTip"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 48
    const-string/jumbo v1, "msgTip"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavMailModel;->msgTip:Ljava/lang/String;

    .line 50
    :cond_7
    const-string/jumbo v1, "mailDate"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 51
    const-string/jumbo v1, "mailDate"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavMailModel;->mailDate:J

    .line 53
    :cond_8
    const-string/jumbo v1, "fileCount"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    const-string/jumbo v1, "fileCount"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    iput v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavMailModel;->fileCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method


# virtual methods
.method public getFileCount()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavMailModel;->fileCount:I

    return v0
.end method

.method public getMailAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavMailModel;->mailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getMailAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavMailModel;->mailAuthor:Ljava/lang/String;

    return-object v0
.end method

.method public getMailDate()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 158
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavMailModel;->mailDate:J

    return-wide v0
.end method

.method public getMailId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavMailModel;->mailId:Ljava/lang/String;

    return-object v0
.end method

.method public getMailMsgId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavMailModel;->mailMsgId:Ljava/lang/String;

    return-object v0
.end method

.method public getMailType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavMailModel;->mailType:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgTip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavMailModel;->msgTip:Ljava/lang/String;

    return-object v0
.end method

.method public setFileCount(I)V
    .locals 0
    .param p1, "fileCount"    # I

    .prologue
    .line 122
    iput p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavMailModel;->fileCount:I

    .line 123
    return-void
.end method

.method public setMailAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "mailAddress"    # Ljava/lang/String;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavMailModel;->mailAddress:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setMailAuthor(Ljava/lang/String;)V
    .locals 0
    .param p1, "mailAuthor"    # Ljava/lang/String;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavMailModel;->mailAuthor:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setMailDate(J)V
    .locals 1
    .param p1, "mailDate"    # J

    .prologue
    .line 162
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavMailModel;->mailDate:J

    .line 163
    return-void
.end method

.method public setMailId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mailId"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavMailModel;->mailId:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setMailMsgId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mailMsgId"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavMailModel;->mailMsgId:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setMailType(Ljava/lang/String;)V
    .locals 0
    .param p1, "mailType"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavMailModel;->mailType:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setMsgTip(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgTip"    # Ljava/lang/String;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavMailModel;->msgTip:Ljava/lang/String;

    .line 155
    return-void
.end method
