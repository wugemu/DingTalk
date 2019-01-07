.class public final Lcom/alibaba/android/user/contact/org/model/SelectModel;
.super Ljava/lang/Object;
.source "SelectModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/contact/org/model/SelectModel$ModelType;
    }
.end annotation


# instance fields
.field public a:Lcom/alibaba/android/user/contact/org/model/SelectModel$ModelType;

.field public b:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

.field public c:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

.field public d:Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static a(Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;)Lcom/alibaba/android/user/contact/org/model/SelectModel;
    .locals 2
    .param p0, "crmObject"    # Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;

    .prologue
    .line 47
    new-instance v0, Lcom/alibaba/android/user/contact/org/model/SelectModel;

    invoke-direct {v0}, Lcom/alibaba/android/user/contact/org/model/SelectModel;-><init>()V

    .line 48
    .local v0, "model":Lcom/alibaba/android/user/contact/org/model/SelectModel;
    iput-object p0, v0, Lcom/alibaba/android/user/contact/org/model/SelectModel;->d:Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;

    .line 49
    sget-object v1, Lcom/alibaba/android/user/contact/org/model/SelectModel$ModelType;->CRM:Lcom/alibaba/android/user/contact/org/model/SelectModel$ModelType;

    iput-object v1, v0, Lcom/alibaba/android/user/contact/org/model/SelectModel;->a:Lcom/alibaba/android/user/contact/org/model/SelectModel$ModelType;

    .line 50
    return-object v0
.end method

.method public static a(Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;)Lcom/alibaba/android/user/contact/org/model/SelectModel;
    .locals 2
    .param p0, "deptObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .prologue
    .line 54
    new-instance v0, Lcom/alibaba/android/user/contact/org/model/SelectModel;

    invoke-direct {v0}, Lcom/alibaba/android/user/contact/org/model/SelectModel;-><init>()V

    .line 55
    .local v0, "model":Lcom/alibaba/android/user/contact/org/model/SelectModel;
    iput-object p0, v0, Lcom/alibaba/android/user/contact/org/model/SelectModel;->c:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 56
    sget-object v1, Lcom/alibaba/android/user/contact/org/model/SelectModel$ModelType;->DEPT:Lcom/alibaba/android/user/contact/org/model/SelectModel$ModelType;

    iput-object v1, v0, Lcom/alibaba/android/user/contact/org/model/SelectModel;->a:Lcom/alibaba/android/user/contact/org/model/SelectModel$ModelType;

    .line 57
    return-object v0
.end method

.method public static a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Lcom/alibaba/android/user/contact/org/model/SelectModel;
    .locals 2
    .param p0, "userObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .prologue
    .line 40
    new-instance v0, Lcom/alibaba/android/user/contact/org/model/SelectModel;

    invoke-direct {v0}, Lcom/alibaba/android/user/contact/org/model/SelectModel;-><init>()V

    .line 41
    .local v0, "model":Lcom/alibaba/android/user/contact/org/model/SelectModel;
    iput-object p0, v0, Lcom/alibaba/android/user/contact/org/model/SelectModel;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 42
    sget-object v1, Lcom/alibaba/android/user/contact/org/model/SelectModel$ModelType;->USER:Lcom/alibaba/android/user/contact/org/model/SelectModel$ModelType;

    iput-object v1, v0, Lcom/alibaba/android/user/contact/org/model/SelectModel;->a:Lcom/alibaba/android/user/contact/org/model/SelectModel$ModelType;

    .line 43
    return-object v0
.end method
