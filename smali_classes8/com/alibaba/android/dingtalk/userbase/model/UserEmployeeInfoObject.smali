.class public Lcom/alibaba/android/dingtalk/userbase/model/UserEmployeeInfoObject;
.super Ljava/lang/Object;
.source "UserEmployeeInfoObject.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserEmployeeInfoObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public employeeBaseObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/UserEmployeeInfoObject$1;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserEmployeeInfoObject$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalk/userbase/model/UserEmployeeInfoObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-class v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserEmployeeInfoObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 39
    const-class v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserEmployeeInfoObject;->employeeBaseObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;

    .line 40
    return-void
.end method

.method public static fromIDLModel(Lcgc;)Lcom/alibaba/android/dingtalk/userbase/model/UserEmployeeInfoObject;
    .locals 2
    .param p0, "userEmployeeInfoModel"    # Lcgc;

    .prologue
    .line 43
    if-nez p0, :cond_0

    .line 44
    const/4 v0, 0x0

    .line 50
    :goto_0
    return-object v0

    .line 47
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/UserEmployeeInfoObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserEmployeeInfoObject;-><init>()V

    .line 48
    .local v0, "userEmployeeInfoObject":Lcom/alibaba/android/dingtalk/userbase/model/UserEmployeeInfoObject;
    iget-object v1, p0, Lcgc;->a:Lcgk;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->fromIDLModel(Lcgk;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserEmployeeInfoObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 49
    iget-object v1, p0, Lcgc;->b:Lcet;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;->fromIDLModel(Lcet;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserEmployeeInfoObject;->employeeBaseObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserEmployeeInfoObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 61
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserEmployeeInfoObject;->employeeBaseObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 62
    return-void
.end method
