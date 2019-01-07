.class public Lcom/alibaba/android/user/contact/homepage/DeviceItem;
.super Lcom/alibaba/android/user/contact/homepage/Component;
.source "DeviceItem.java"


# instance fields
.field public mOrgId:J

.field private mOrgObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V
    .locals 2
    .param p1, "orgObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .param p2, "nodeItem"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/homepage/Component;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/alibaba/android/user/contact/homepage/DeviceItem;->mOrgObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 38
    iget-wide v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    iput-wide v0, p0, Lcom/alibaba/android/user/contact/homepage/DeviceItem;->mOrgId:J

    .line 39
    invoke-static {p2}, Lfxe;->e(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/homepage/Component;->mName:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public getOrgObject()Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/DeviceItem;->mOrgObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->Device:Lcom/alibaba/android/user/contact/homepage/Component$ItemType;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->getValue()I

    move-result v0

    return v0
.end method

.method public setOrgObject(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)V
    .locals 0
    .param p1, "orgObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alibaba/android/user/contact/homepage/DeviceItem;->mOrgObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 53
    return-void
.end method
