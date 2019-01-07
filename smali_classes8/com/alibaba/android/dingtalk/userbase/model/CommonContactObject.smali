.class public Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;
.super Ljava/lang/Object;
.source "CommonContactObject.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public alias:Ljava/lang/String;

.field public aliasPinyin:Ljava/lang/String;

.field public avatarMediaId:Ljava/lang/String;

.field public contactType:Ljava/lang/String;

.field public count:J

.field public dingTalkId:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public isActive:Z

.field public isDataComplete:Z

.field public isFriend:Z

.field public localContactName:Ljava/lang/String;

.field public mobile:Ljava/lang/String;

.field public modifyTime:J

.field public nick:Ljava/lang/String;

.field public nickPinyin:Ljava/lang/String;

.field public orgEmail:Ljava/lang/String;

.field public orgName:Ljava/lang/String;

.field public orgNickName:Ljava/lang/String;

.field public orgTitle:Ljava/lang/String;

.field public orgUserName:Ljava/lang/String;

.field public permission:Ljava/lang/String;

.field public refreshTime:J

.field public uid:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 185
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject$1;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->isFriend:Z

    .line 157
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->isFriend:Z

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->uid:J

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->nick:Ljava/lang/String;

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->nickPinyin:Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->alias:Ljava/lang/String;

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->aliasPinyin:Ljava/lang/String;

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->avatarMediaId:Ljava/lang/String;

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->orgTitle:Ljava/lang/String;

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->orgName:Ljava/lang/String;

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->orgEmail:Ljava/lang/String;

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->count:J

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->mobile:Ljava/lang/String;

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->isDataComplete:Z

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->permission:Ljava/lang/String;

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->orgUserName:Ljava/lang/String;

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->orgNickName:Ljava/lang/String;

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->isFriend:Z

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->localContactName:Ljava/lang/String;

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->contactType:Ljava/lang/String;

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->modifyTime:J

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->refreshTime:J

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->email:Ljava/lang/String;

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->dingTalkId:Ljava/lang/String;

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->isActive:Z

    .line 183
    return-void

    :cond_0
    move v0, v2

    .line 171
    goto :goto_0

    :cond_1
    move v0, v2

    .line 175
    goto :goto_1

    :cond_2
    move v1, v2

    .line 182
    goto :goto_2
.end method

.method public static fromLocalContact(Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;)Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;
    .locals 4
    .param p0, "localContactObject"    # Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    .prologue
    .line 77
    if-nez p0, :cond_0

    .line 78
    const/4 v0, 0x0

    .line 87
    :goto_0
    return-object v0

    .line 81
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;-><init>()V

    .line 82
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->uid:J

    .line 83
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->nick:Ljava/lang/String;

    .line 84
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->pinyin:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->nickPinyin:Ljava/lang/String;

    .line 85
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->phoneNumber:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->mobile:Ljava/lang/String;

    .line 86
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->isActive:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 2022
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 86
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->isActive:Z

    goto :goto_0
.end method

.method public static fromOrgEmployee(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;)Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;
    .locals 4
    .param p0, "orgEmployeeObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    .prologue
    .line 92
    if-nez p0, :cond_0

    .line 93
    const/4 v0, 0x0

    .line 102
    :goto_0
    return-object v0

    .line 96
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;-><init>()V

    .line 97
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->uid:J

    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->uid:J

    .line 98
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgNickName:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->nick:Ljava/lang/String;

    .line 99
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgUserMobile:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->mobile:Ljava/lang/String;

    .line 100
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgAvatarMediaId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->avatarMediaId:Ljava/lang/String;

    .line 101
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgEmail:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->email:Ljava/lang/String;

    goto :goto_0
.end method

.method public static fromUserIdentity(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;
    .locals 4
    .param p0, "userIdentityObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .prologue
    .line 107
    if-nez p0, :cond_0

    .line 108
    const/4 v0, 0x0

    .line 121
    :goto_0
    return-object v0

    .line 111
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;-><init>()V

    .line 112
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->uid:J

    .line 113
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->nick:Ljava/lang/String;

    .line 114
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nickPinyin:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->nickPinyin:Ljava/lang/String;

    .line 115
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->alias:Ljava/lang/String;

    .line 116
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->mobile:Ljava/lang/String;

    .line 117
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->avatarMediaId:Ljava/lang/String;

    .line 118
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->email:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->email:Ljava/lang/String;

    .line 119
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->dingTalkId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->dingTalkId:Ljava/lang/String;

    .line 120
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->isActive:Z

    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->isActive:Z

    goto :goto_0
.end method

.method public static fromUserProfile(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;
    .locals 4
    .param p0, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .prologue
    .line 57
    if-nez p0, :cond_0

    .line 58
    const/4 v0, 0x0

    .line 72
    :goto_0
    return-object v0

    .line 61
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;-><init>()V

    .line 62
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->uid:J

    .line 63
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->nick:Ljava/lang/String;

    .line 64
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nickPinyin:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->nickPinyin:Ljava/lang/String;

    .line 65
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->alias:Ljava/lang/String;

    .line 66
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->aliasPinyin:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->aliasPinyin:Ljava/lang/String;

    .line 67
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mobile:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->mobile:Ljava/lang/String;

    .line 68
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->avatarMediaId:Ljava/lang/String;

    .line 69
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->email:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->email:Ljava/lang/String;

    .line 70
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->dingTalkId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->dingTalkId:Ljava/lang/String;

    .line 71
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isActive:Ljava/lang/Boolean;

    .line 1022
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 71
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->isActive:Z

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 131
    iget-wide v4, p0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->uid:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 132
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->nick:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->nickPinyin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->alias:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->aliasPinyin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->avatarMediaId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->orgTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->orgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->orgEmail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    iget-wide v4, p0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->count:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 141
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->mobile:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->isDataComplete:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 143
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->permission:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->orgUserName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->orgNickName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->isFriend:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 147
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->localContactName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->contactType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    iget-wide v4, p0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->modifyTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 150
    iget-wide v4, p0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->refreshTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 151
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->email:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->dingTalkId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->isActive:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 154
    return-void

    :cond_0
    move v0, v2

    .line 142
    goto :goto_0

    :cond_1
    move v0, v2

    .line 146
    goto :goto_1

    :cond_2
    move v1, v2

    .line 153
    goto :goto_2
.end method
