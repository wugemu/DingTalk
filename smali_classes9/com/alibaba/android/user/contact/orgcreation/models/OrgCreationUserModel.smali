.class public Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;
.super Ljava/lang/Object;
.source "OrgCreationUserModel.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x49c92ed7c4eda822L


# instance fields
.field private mIsBoss:Z

.field private mUserIdentityObject:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel$1;

    invoke-direct {v0}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v2, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;->mIsBoss:Z

    .line 111
    const/4 v1, 0x1

    new-array v0, v1, [Z

    .line 112
    .local v0, "bools":[Z
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 113
    aget-boolean v1, v0, v2

    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;->mIsBoss:Z

    .line 114
    const-class v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;->mUserIdentityObject:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 115
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V
    .locals 1
    .param p1, "userIdentityObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;->mIsBoss:Z

    .line 40
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;->mUserIdentityObject:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 41
    return-void
.end method

.method public static fromUserIdentityObjectList(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "userIdentityObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-nez p0, :cond_1

    .line 74
    const/4 v0, 0x0

    .line 85
    :cond_0
    return-object v0

    .line 77
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v0, "orgCreationUserModelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 79
    .local v1, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v1, :cond_2

    .line 82
    new-instance v3, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;

    invoke-direct {v3, v1}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static toUserIdentityObjectList(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "orgCreationUserModelList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;>;"
    if-nez p0, :cond_1

    .line 91
    const/4 v1, 0x0

    .line 102
    :cond_0
    return-object v1

    .line 94
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v1, "userIdentityObjectList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;

    .line 96
    .local v0, "orgCreationUserModel":Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;->getUserIdentityObject()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 99
    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;->getUserIdentityObject()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 125
    if-ne p0, p1, :cond_1

    .line 140
    :cond_0
    :goto_0
    return v1

    .line 127
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 128
    goto :goto_0

    .line 129
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 130
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 131
    check-cast v0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;

    .line 133
    .local v0, "other":Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;->mUserIdentityObject:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-nez v3, :cond_4

    .line 134
    iget-object v3, v0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;->mUserIdentityObject:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v3, :cond_0

    move v1, v2

    .line 137
    goto :goto_0

    .line 140
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;->mUserIdentityObject:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v2, v0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;->mUserIdentityObject:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getUserIdentityObject()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;->mUserIdentityObject:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 146
    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;->mIsBoss:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 147
    .local v0, "result":I
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;->mUserIdentityObject:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v1, :cond_0

    .line 148
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;->mUserIdentityObject:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 150
    :cond_0
    return v0

    .line 146
    .end local v0    # "result":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isBoss()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;->mIsBoss:Z

    return v0
.end method

.method public setIsBoss(Z)V
    .locals 0
    .param p1, "isBoss"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;->mIsBoss:Z

    .line 69
    return-void
.end method

.method public setUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V
    .locals 0
    .param p1, "userIdentityObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;->mUserIdentityObject:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 61
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 119
    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;->mIsBoss:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 120
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;->mUserIdentityObject:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 121
    return-void
.end method
