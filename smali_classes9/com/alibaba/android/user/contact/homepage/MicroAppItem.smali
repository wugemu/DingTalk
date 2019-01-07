.class public Lcom/alibaba/android/user/contact/homepage/MicroAppItem;
.super Lcom/alibaba/android/user/contact/homepage/Component;
.source "MicroAppItem.java"


# static fields
.field public static final APPID_CUSTOMER:I = 0x41b

.field public static final APPID_EXTERNAL:I = -0x10


# instance fields
.field private mAppId:J

.field private mHomePage:Ljava/lang/String;

.field private mIsMainOrg:Z

.field private mMicroApp:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

.field private mOrgId:J

.field private mRole:I


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)V
    .locals 4
    .param p1, "orgObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .param p2, "microApp"    # Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/homepage/Component;-><init>()V

    .line 52
    iput-object p2, p0, Lcom/alibaba/android/user/contact/homepage/MicroAppItem;->mMicroApp:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 53
    if-eqz p2, :cond_0

    .line 54
    iget-object v0, p2, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/homepage/MicroAppItem;->setName(Ljava/lang/String;)V

    .line 55
    iget-wide v0, p2, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    iput-wide v0, p0, Lcom/alibaba/android/user/contact/homepage/MicroAppItem;->mAppId:J

    .line 57
    :cond_0
    iget-wide v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    iput-wide v0, p0, Lcom/alibaba/android/user/contact/homepage/MicroAppItem;->mOrgId:J

    .line 58
    iget-boolean v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->isMainOrg:Z

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/homepage/MicroAppItem;->mIsMainOrg:Z

    .line 59
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/user/contact/homepage/MicroAppItem;->mMicroApp:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "&staffid="

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgStaffId:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/homepage/MicroAppItem;->mHomePage:Ljava/lang/String;

    .line 60
    iget v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->role:I

    iput v0, p0, Lcom/alibaba/android/user/contact/homepage/MicroAppItem;->mRole:I

    .line 61
    return-void
.end method


# virtual methods
.method public getAppId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/homepage/MicroAppItem;->mAppId:J

    return-wide v0
.end method

.method public getHomePage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/MicroAppItem;->mHomePage:Ljava/lang/String;

    return-object v0
.end method

.method public getOrgId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/homepage/MicroAppItem;->mOrgId:J

    return-wide v0
.end method

.method public getRole()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/alibaba/android/user/contact/homepage/MicroAppItem;->mRole:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->MicroApp:Lcom/alibaba/android/user/contact/homepage/Component$ItemType;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->getValue()I

    move-result v0

    return v0
.end method

.method public isMainOrg()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/homepage/MicroAppItem;->mIsMainOrg:Z

    return v0
.end method

.method public setAppId(J)V
    .locals 1
    .param p1, "appId"    # J

    .prologue
    .line 90
    iput-wide p1, p0, Lcom/alibaba/android/user/contact/homepage/MicroAppItem;->mAppId:J

    .line 91
    return-void
.end method

.method public setOrgId(J)V
    .locals 1
    .param p1, "orgId"    # J

    .prologue
    .line 82
    iput-wide p1, p0, Lcom/alibaba/android/user/contact/homepage/MicroAppItem;->mOrgId:J

    .line 83
    return-void
.end method
