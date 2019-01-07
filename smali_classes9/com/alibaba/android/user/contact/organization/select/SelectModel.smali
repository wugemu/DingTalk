.class public Lcom/alibaba/android/user/contact/organization/select/SelectModel;
.super Ljava/lang/Object;
.source "SelectModel.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public isClick:Z

.field public orgDeptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

.field public userObject:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;Z)V
    .locals 0
    .param p1, "orgDeptObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    .param p2, "click"    # Z

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/select/SelectModel;->orgDeptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 37
    iput-boolean p2, p0, Lcom/alibaba/android/user/contact/organization/select/SelectModel;->isClick:Z

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Z)V
    .locals 0
    .param p1, "userObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .param p2, "click"    # Z

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/select/SelectModel;->userObject:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 42
    iput-boolean p2, p0, Lcom/alibaba/android/user/contact/organization/select/SelectModel;->isClick:Z

    .line 43
    return-void
.end method
