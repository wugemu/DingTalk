.class public Lcom/alibaba/android/user/contact/homepage/CommonContactItem;
.super Lcom/alibaba/android/user/contact/homepage/Component;
.source "CommonContactItem.java"


# instance fields
.field public mContact:Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;

.field public mNick:Ljava/lang/String;

.field public mSubTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;)V
    .locals 3
    .param p1, "contact"    # Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/homepage/Component;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/alibaba/android/user/contact/homepage/CommonContactItem;->mContact:Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;

    .line 37
    if-nez p1, :cond_0

    .line 73
    :goto_0
    return-void

    .line 44
    :cond_0
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->orgName:Ljava/lang/String;

    invoke-static {v1}, Lcpt;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->orgName:Ljava/lang/String;

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->nick:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    const-string/jumbo v1, ""

    iput-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->orgName:Ljava/lang/String;

    .line 48
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/contact/homepage/CommonContactItem;->mContact:Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->nick:Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/homepage/CommonContactItem;->mNick:Ljava/lang/String;

    .line 49
    iget-object v1, p0, Lcom/alibaba/android/user/contact/homepage/CommonContactItem;->mContact:Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->orgTitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 50
    iget-object v1, p0, Lcom/alibaba/android/user/contact/homepage/CommonContactItem;->mContact:Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;

    iget-boolean v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->isFriend:Z

    if-eqz v1, :cond_2

    .line 51
    iget-object v1, p0, Lcom/alibaba/android/user/contact/homepage/CommonContactItem;->mContact:Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;

    invoke-static {v1}, Lflr;->a(Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/homepage/CommonContactItem;->setName(Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lcom/alibaba/android/user/contact/homepage/CommonContactItem;->mContact:Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->orgName:Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/homepage/CommonContactItem;->mSubTitle:Ljava/lang/String;

    goto :goto_0

    .line 53
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/user/contact/homepage/CommonContactItem;->mContact:Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->localContactName:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 54
    iget-object v1, p0, Lcom/alibaba/android/user/contact/homepage/CommonContactItem;->mContact:Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->alias:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alibaba/android/user/contact/homepage/CommonContactItem;->mContact:Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->localContactName:Ljava/lang/String;

    :goto_1
    iput-object v1, p0, Lcom/alibaba/android/user/contact/homepage/CommonContactItem;->mNick:Ljava/lang/String;

    .line 55
    iget-object v1, p0, Lcom/alibaba/android/user/contact/homepage/CommonContactItem;->mNick:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/homepage/CommonContactItem;->setName(Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lcom/alibaba/android/user/contact/homepage/CommonContactItem;->mContact:Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->mobile:Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/homepage/CommonContactItem;->mSubTitle:Ljava/lang/String;

    .line 57
    iget-object v1, p0, Lcom/alibaba/android/user/contact/homepage/CommonContactItem;->mContact:Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/homepage/CommonContactItem;->mNick:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->nick:Ljava/lang/String;

    goto :goto_0

    .line 54
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/user/contact/homepage/CommonContactItem;->mContact:Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->alias:Ljava/lang/String;

    goto :goto_1

    .line 59
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/user/contact/homepage/CommonContactItem;->mContact:Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;

    invoke-static {v1}, Lflr;->a(Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/homepage/CommonContactItem;->setName(Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcom/alibaba/android/user/contact/homepage/CommonContactItem;->mContact:Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->orgName:Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/homepage/CommonContactItem;->mSubTitle:Ljava/lang/String;

    goto :goto_0

    .line 63
    :cond_5
    iget-object v1, p0, Lcom/alibaba/android/user/contact/homepage/CommonContactItem;->mContact:Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;

    iget-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->orgUserName:Ljava/lang/String;

    .line 64
    .local v0, "orgUserName":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/android/user/contact/homepage/CommonContactItem;->mContact:Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->orgNickName:Ljava/lang/String;

    invoke-static {v1}, Lcpt;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/homepage/CommonContactItem;->mContact:Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->orgNickName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    :cond_6
    invoke-static {v0}, Lcpt;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 68
    iget-object v1, p0, Lcom/alibaba/android/user/contact/homepage/CommonContactItem;->mContact:Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;

    invoke-static {v1}, Lflr;->a(Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;)Ljava/lang/String;

    move-result-object v0

    .line 70
    :cond_7
    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/homepage/CommonContactItem;->setName(Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcom/alibaba/android/user/contact/homepage/CommonContactItem;->mContact:Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->orgTitle:Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/homepage/CommonContactItem;->mSubTitle:Ljava/lang/String;

    goto/16 :goto_0
.end method


# virtual methods
.method public getAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/CommonContactItem;->mContact:Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;

    invoke-static {v0}, Lflr;->a(Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/CommonContactItem;->mContact:Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;

    if-nez v0, :cond_0

    .line 82
    const-string/jumbo v0, ""

    .line 85
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/CommonContactItem;->mContact:Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->avatarMediaId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->Contact:Lcom/alibaba/android/user/contact/homepage/Component$ItemType;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->getValue()I

    move-result v0

    return v0
.end method

.method public getUid()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 89
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/CommonContactItem;->mContact:Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;

    if-nez v0, :cond_0

    .line 90
    const-wide/16 v0, 0x0

    .line 93
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/CommonContactItem;->mContact:Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->uid:J

    goto :goto_0
.end method
