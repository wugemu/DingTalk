.class public Lcom/alibaba/android/search/model/MailModel;
.super Lcom/alibaba/android/search/model/BaseModel;
.source "MailModel.java"


# instance fields
.field private mDesc:Ljava/lang/String;

.field private mHasAttachment:Z

.field private mHaveRead:Z

.field private mIsStarMail:Z

.field private mMailId:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mRelateCount:I

.field private mSendTime:J

.field private mSenderName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lchq;Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Lchq;
    .param p2, "keyword"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/alibaba/android/search/model/BaseModel;-><init>()V

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/search/model/MailModel;->init(Lchq;Ljava/lang/String;)V

    .line 46
    sget-object v0, Lcom/alibaba/android/search/model/BaseModel$ModelType;->Mail:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/model/MailModel;->setModelType(Lcom/alibaba/android/search/model/BaseModel$ModelType;)V

    .line 47
    return-void
.end method

.method private init(Lchq;Ljava/lang/String;)V
    .locals 4
    .param p1, "data"    # Lchq;
    .param p2, "keyword"    # Ljava/lang/String;

    .prologue
    .line 51
    if-nez p1, :cond_0

    .line 76
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v2, p1, Lchq;->h:Ljava/util/Map;

    if-eqz v2, :cond_2

    .line 57
    iget-object v2, p1, Lchq;->h:Ljava/util/Map;

    const-string/jumbo v3, "mail_related_count"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 58
    .local v1, "relateCountStr":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 60
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/search/model/MailModel;->mRelateCount:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :cond_1
    :goto_1
    iget-object v2, p1, Lchq;->h:Ljava/util/Map;

    const-string/jumbo v3, "mail_have_read"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alibaba/android/search/model/MailModel;->mHaveRead:Z

    .line 67
    iget-object v2, p1, Lchq;->h:Ljava/util/Map;

    const-string/jumbo v3, "mail_have_attachment"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alibaba/android/search/model/MailModel;->mHasAttachment:Z

    .line 70
    .end local v1    # "relateCountStr":Ljava/lang/String;
    :cond_2
    iget-object v2, p1, Lchq;->b:Ljava/lang/String;

    invoke-static {v2, p2}, Lcos;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/search/model/MailModel;->mName:Ljava/lang/String;

    .line 71
    iget-object v2, p1, Lchq;->c:Ljava/lang/String;

    invoke-static {v2, p2}, Lcos;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/search/model/MailModel;->mDesc:Ljava/lang/String;

    .line 72
    iget-object v2, p1, Lchq;->d:Ljava/lang/String;

    invoke-static {v2, p2}, Lcos;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/search/model/MailModel;->mSenderName:Ljava/lang/String;

    .line 73
    iget-wide v2, p1, Lchq;->e:J

    iput-wide v2, p0, Lcom/alibaba/android/search/model/MailModel;->mSendTime:J

    .line 74
    iget-object v2, p1, Lchq;->g:Ljava/lang/String;

    iput-object v2, p0, Lcom/alibaba/android/search/model/MailModel;->mMailId:Ljava/lang/String;

    .line 75
    iget-object v2, p1, Lchq;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alibaba/android/search/model/MailModel;->mIsStarMail:Z

    goto :goto_0

    .line 61
    .restart local v1    # "relateCountStr":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public getDesc(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alibaba/android/search/model/MailModel;->mDesc:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/model/MailModel;->mDesc:Ljava/lang/String;

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/alibaba/android/search/model/MailModel;->mMailId:Ljava/lang/String;

    return-object v0
.end method

.method public getMailId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/alibaba/android/search/model/MailModel;->mMailId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/android/search/model/MailModel;->mName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/model/MailModel;->mName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getRelateCount()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/alibaba/android/search/model/MailModel;->mRelateCount:I

    return v0
.end method

.method public getSendTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 124
    iget-wide v0, p0, Lcom/alibaba/android/search/model/MailModel;->mSendTime:J

    return-wide v0
.end method

.method public getSenderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/alibaba/android/search/model/MailModel;->mSenderName:Ljava/lang/String;

    return-object v0
.end method

.method public isHasAttachment()Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/alibaba/android/search/model/MailModel;->mHasAttachment:Z

    return v0
.end method

.method public isHaveRead()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/alibaba/android/search/model/MailModel;->mHaveRead:Z

    return v0
.end method

.method public isStarMail()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/alibaba/android/search/model/MailModel;->mIsStarMail:Z

    return v0
.end method

.method public onClick(Landroid/app/Activity;Landroid/view/View;)V
    .locals 3
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 98
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v0

    .line 99
    .local v0, "mailInterface":Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;
    iget-object v1, p0, Lcom/alibaba/android/search/model/MailModel;->mMailId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->a(Landroid/content/Context;Ljava/lang/String;Lcma;)V

    .line 101
    iget-boolean v1, p0, Lcom/alibaba/android/search/model/MailModel;->mHaveRead:Z

    if-nez v1, :cond_0

    .line 102
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alibaba/android/search/model/MailModel;->mHaveRead:Z

    .line 105
    :cond_0
    return-void
.end method

.method public setHasAttachment(Z)V
    .locals 0
    .param p1, "hasAttachment"    # Z

    .prologue
    .line 160
    iput-boolean p1, p0, Lcom/alibaba/android/search/model/MailModel;->mHasAttachment:Z

    .line 161
    return-void
.end method

.method public setHaveRead(Z)V
    .locals 0
    .param p1, "haveRead"    # Z

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/alibaba/android/search/model/MailModel;->mHaveRead:Z

    .line 153
    return-void
.end method

.method public setIsStarMail(Z)V
    .locals 0
    .param p1, "isStarMail"    # Z

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/alibaba/android/search/model/MailModel;->mIsStarMail:Z

    .line 113
    return-void
.end method

.method public setMailId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mailId"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/alibaba/android/search/model/MailModel;->mMailId:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setRelateCount(I)V
    .locals 0
    .param p1, "relateCount"    # I

    .prologue
    .line 144
    iput p1, p0, Lcom/alibaba/android/search/model/MailModel;->mRelateCount:I

    .line 145
    return-void
.end method

.method public setSendTime(J)V
    .locals 1
    .param p1, "sendTime"    # J

    .prologue
    .line 128
    iput-wide p1, p0, Lcom/alibaba/android/search/model/MailModel;->mSendTime:J

    .line 129
    return-void
.end method

.method public setSenderName(Ljava/lang/String;)V
    .locals 0
    .param p1, "senderName"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/alibaba/android/search/model/MailModel;->mSenderName:Ljava/lang/String;

    .line 121
    return-void
.end method
