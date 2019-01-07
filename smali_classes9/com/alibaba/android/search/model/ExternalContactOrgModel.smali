.class public Lcom/alibaba/android/search/model/ExternalContactOrgModel;
.super Lcom/alibaba/android/search/model/BaseModel;
.source "ExternalContactOrgModel.java"


# instance fields
.field private mOrgExternalObject:Lept;

.field private orgId:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/alibaba/android/search/model/BaseModel;-><init>()V

    .line 35
    sget-object v0, Lcom/alibaba/android/search/model/BaseModel$ModelType;->ExternalContactOrg:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/model/ExternalContactOrgModel;->setModelType(Lcom/alibaba/android/search/model/BaseModel$ModelType;)V

    .line 36
    return-void
.end method

.method public constructor <init>(JLept;)V
    .locals 1
    .param p1, "orgId"    # J
    .param p3, "orgExternalObject"    # Lept;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/alibaba/android/search/model/BaseModel;-><init>()V

    .line 39
    sget-object v0, Lcom/alibaba/android/search/model/BaseModel$ModelType;->ExternalContactOrg:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/model/ExternalContactOrgModel;->setModelType(Lcom/alibaba/android/search/model/BaseModel$ModelType;)V

    .line 40
    iput-object p3, p0, Lcom/alibaba/android/search/model/ExternalContactOrgModel;->mOrgExternalObject:Lept;

    .line 41
    iput-wide p1, p0, Lcom/alibaba/android/search/model/ExternalContactOrgModel;->orgId:J

    .line 42
    return-void
.end method


# virtual methods
.method public getExternalItemCount()I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/android/search/model/ExternalContactOrgModel;->mOrgExternalObject:Lept;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/model/ExternalContactOrgModel;->mOrgExternalObject:Lept;

    iget v0, v0, Lept;->c:I

    goto :goto_0
.end method

.method public getExternalLastModify()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/android/search/model/ExternalContactOrgModel;->mOrgExternalObject:Lept;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/model/ExternalContactOrgModel;->mOrgExternalObject:Lept;

    iget-object v0, v0, Lept;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public getExternalMemberCount()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alibaba/android/search/model/ExternalContactOrgModel;->mOrgExternalObject:Lept;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/model/ExternalContactOrgModel;->mOrgExternalObject:Lept;

    iget v0, v0, Lept;->b:I

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/alibaba/android/search/model/ExternalContactOrgModel;->orgId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/android/search/model/ExternalContactOrgModel;->mOrgExternalObject:Lept;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/model/ExternalContactOrgModel;->mOrgExternalObject:Lept;

    iget-object v0, v0, Lept;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public onClick(Landroid/app/Activity;Landroid/view/View;)V
    .locals 4
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 67
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/android/search/model/ExternalContactOrgModel;->orgId:J

    invoke-virtual {p0}, Lcom/alibaba/android/search/model/ExternalContactOrgModel;->getOrgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v2, v3, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;JLjava/lang/String;)V

    .line 68
    return-void
.end method
