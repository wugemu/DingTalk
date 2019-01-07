.class public Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;
.super Ljava/lang/Object;
.source "ShareMemberModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;",
            ">;"
        }
    .end annotation
.end field

.field public static final ROLE_ADD:I = 0x4

.field public static final ROLE_DELETE:I = 0x5


# instance fields
.field private active:Z

.field private check:Z

.field private checkEnable:Z

.field private externalStaff:Z

.field private mediaId:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private namePinyin:Ljava/lang/String;

.field private nick:Ljava/lang/String;

.field private role:I

.field private roleName:Ljava/lang/String;

.field private uid:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 303
    new-instance v0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel$1;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel$1;-><init>()V

    sput-object v0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "role"    # I

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput p1, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->role:I

    .line 162
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->uid:J

    .line 292
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->name:Ljava/lang/String;

    .line 293
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->namePinyin:Ljava/lang/String;

    .line 294
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->nick:Ljava/lang/String;

    .line 295
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->role:I

    .line 296
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->mediaId:Ljava/lang/String;

    .line 297
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->roleName:Ljava/lang/String;

    .line 298
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->checkEnable:Z

    .line 299
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->check:Z

    .line 300
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->externalStaff:Z

    .line 301
    return-void

    :cond_0
    move v0, v2

    .line 298
    goto :goto_0

    :cond_1
    move v0, v2

    .line 299
    goto :goto_1

    :cond_2
    move v1, v2

    .line 300
    goto :goto_2
.end method

.method public constructor <init>(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;II)V
    .locals 3
    .param p1, "user"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .param p2, "role"    # I
    .param p3, "myRole"    # I

    .prologue
    const/4 v2, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p2, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->role:I

    .line 23
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->setRoleName()V

    .line 24
    if-eqz p1, :cond_1

    .line 25
    iget-wide v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    iput-wide v0, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->uid:J

    .line 26
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 27
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->name:Ljava/lang/String;

    .line 28
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->initPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_0
    :goto_0
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->mediaId:Ljava/lang/String;

    .line 38
    iget-boolean v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->isActive:Z

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->active:Z

    .line 41
    :cond_1
    invoke-direct {p0, p3}, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->initCheckEnable(I)V

    .line 42
    return-void

    .line 29
    :cond_2
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 30
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->name:Ljava/lang/String;

    .line 31
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nickPinyin:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->initPinyin(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 32
    :cond_3
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->orgUserName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->orgUserName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->name:Ljava/lang/String;

    .line 34
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->orgUserName:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->initPinyin(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;II)V
    .locals 2
    .param p1, "userProfileExtensionObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    .param p2, "role"    # I
    .param p3, "myRole"    # I

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p2, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->role:I

    .line 46
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->setRoleName()V

    .line 47
    if-eqz p1, :cond_1

    .line 48
    iget-wide v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    iput-wide v0, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->uid:J

    .line 49
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->alias:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 50
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->alias:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->name:Ljava/lang/String;

    .line 51
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->alias:Ljava/lang/String;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->aliasPinyin:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->initPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_0
    :goto_0
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->avatarMediaId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->mediaId:Ljava/lang/String;

    .line 60
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->isActive:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->active:Z

    .line 62
    :cond_1
    invoke-direct {p0, p3}, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->initCheckEnable(I)V

    .line 63
    return-void

    .line 52
    :cond_2
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nick:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 53
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nick:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->name:Ljava/lang/String;

    .line 54
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nick:Ljava/lang/String;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nickPinyin:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->initPinyin(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_3
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->realName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->realName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->name:Ljava/lang/String;

    .line 57
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->realName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->initPinyin(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;II)V
    .locals 2
    .param p1, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .param p2, "role"    # I
    .param p3, "myRole"    # I

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput p2, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->role:I

    .line 67
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->setRoleName()V

    .line 68
    if-eqz p1, :cond_1

    .line 69
    iget-wide v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    iput-wide v0, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->uid:J

    .line 70
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 71
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->name:Ljava/lang/String;

    .line 72
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->aliasPinyin:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->initPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_0
    :goto_0
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->mediaId:Ljava/lang/String;

    .line 81
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isActive:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->active:Z

    .line 83
    :cond_1
    invoke-direct {p0, p3}, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->initCheckEnable(I)V

    .line 84
    return-void

    .line 73
    :cond_2
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 74
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->name:Ljava/lang/String;

    .line 75
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nickPinyin:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->initPinyin(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_3
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->realName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->realName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->name:Ljava/lang/String;

    .line 78
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->realName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->initPinyin(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(Lgiq;I)V
    .locals 4
    .param p1, "dpCoFolderMemberModel"    # Lgiq;
    .param p2, "myRole"    # I

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    if-eqz p1, :cond_0

    .line 88
    iget-object v0, p1, Lgiq;->c:Ljava/lang/Integer;

    .line 1033
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 88
    iput v0, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->role:I

    .line 89
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->setRoleName()V

    .line 90
    iget-object v0, p1, Lgiq;->a:Ljava/lang/Long;

    .line 1044
    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    .line 90
    iput-wide v0, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->uid:J

    .line 91
    iget-object v0, p1, Lgiq;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->name:Ljava/lang/String;

    .line 92
    iget-object v0, p1, Lgiq;->b:Ljava/lang/String;

    iget-object v1, p1, Lgiq;->f:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->initPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v0, p1, Lgiq;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->mediaId:Ljava/lang/String;

    .line 94
    iget-object v0, p1, Lgiq;->g:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->active:Z

    .line 96
    :cond_0
    invoke-direct {p0, p2}, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->initCheckEnable(I)V

    .line 97
    return-void

    .line 94
    :cond_1
    iget-object v0, p1, Lgiq;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public constructor <init>(Lgoh;Ljava/lang/Integer;I)V
    .locals 2
    .param p1, "userBaseInfoModel"    # Lgoh;
    .param p2, "role"    # Ljava/lang/Integer;
    .param p3, "myRole"    # I

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    if-nez p2, :cond_0

    const/16 v0, 0x67

    :goto_0
    iput v0, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->role:I

    .line 102
    if-nez p1, :cond_1

    .line 120
    :goto_1
    return-void

    .line 100
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 106
    :cond_1
    iget-wide v0, p1, Lgoh;->a:J

    iput-wide v0, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->uid:J

    .line 107
    iget-object v0, p1, Lgoh;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->mediaId:Ljava/lang/String;

    .line 108
    iget-boolean v0, p1, Lgoh;->f:Z

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->active:Z

    .line 110
    iget-object v0, p1, Lgoh;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 111
    iget-object v0, p1, Lgoh;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->name:Ljava/lang/String;

    .line 118
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->name:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->initPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-direct {p0, p3}, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->initCheckEnable(I)V

    goto :goto_1

    .line 112
    :cond_3
    iget-object v0, p1, Lgoh;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 113
    iget-object v0, p1, Lgoh;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->name:Ljava/lang/String;

    goto :goto_2

    .line 114
    :cond_4
    iget-object v0, p1, Lgoh;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 115
    iget-object v0, p1, Lgoh;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->name:Ljava/lang/String;

    goto :goto_2
.end method

.method private initCheckEnable(I)V
    .locals 3
    .param p1, "myRole"    # I

    .prologue
    const/16 v2, 0x65

    const/4 v1, 0x1

    .line 123
    if-ne p1, v1, :cond_1

    .line 124
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->role:I

    if-eq v0, v1, :cond_0

    .line 125
    iput-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->checkEnable:Z

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    if-ne p1, v2, :cond_0

    .line 128
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->role:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->role:I

    if-eq v0, v2, :cond_0

    .line 129
    iput-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->checkEnable:Z

    goto :goto_0
.end method

.method private initPinyin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "nick"    # Ljava/lang/String;
    .param p2, "pinyin"    # Ljava/lang/String;

    .prologue
    .line 135
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    :goto_0
    return-void

    .line 138
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgpw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->namePinyin:Ljava/lang/String;

    goto :goto_0

    .line 141
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->namePinyin:Ljava/lang/String;

    goto :goto_0
.end method

.method private setRoleName()V
    .locals 0

    .prologue
    .line 158
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x0

    return v0
.end method

.method public getMediaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->mediaId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNamePinyin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->namePinyin:Ljava/lang/String;

    return-object v0
.end method

.method public getNick()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->nick:Ljava/lang/String;

    return-object v0
.end method

.method public getRole()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->role:I

    return v0
.end method

.method public getRoleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->roleName:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 200
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->uid:J

    return-wide v0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->active:Z

    return v0
.end method

.method public isCheck()Z
    .locals 1

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->check:Z

    return v0
.end method

.method public isCheckEnable()Z
    .locals 1

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->checkEnable:Z

    return v0
.end method

.method public isExternalStaff()Z
    .locals 1

    .prologue
    .line 264
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->externalStaff:Z

    return v0
.end method

.method public setCheck(Z)V
    .locals 0
    .param p1, "check"    # Z

    .prologue
    .line 260
    iput-boolean p1, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->check:Z

    .line 261
    return-void
.end method

.method public setCheckEnable(Z)V
    .locals 0
    .param p1, "checkEnable"    # Z

    .prologue
    .line 252
    iput-boolean p1, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->checkEnable:Z

    .line 253
    return-void
.end method

.method public setExternalStaff(Z)V
    .locals 0
    .param p1, "externalStaff"    # Z

    .prologue
    .line 268
    iput-boolean p1, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->externalStaff:Z

    .line 269
    return-void
.end method

.method public setMediaId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mediaId"    # Ljava/lang/String;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->mediaId:Ljava/lang/String;

    .line 237
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->name:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public setNamePinyin(Ljava/lang/String;)V
    .locals 0
    .param p1, "namePinyin"    # Ljava/lang/String;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->namePinyin:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public setNick(Ljava/lang/String;)V
    .locals 0
    .param p1, "nick"    # Ljava/lang/String;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->nick:Ljava/lang/String;

    .line 229
    return-void
.end method

.method public setRole(I)V
    .locals 0
    .param p1, "role"    # I

    .prologue
    .line 191
    iput p1, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->role:I

    .line 192
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->setRoleName()V

    .line 193
    return-void
.end method

.method public setRoleName(Ljava/lang/String;)V
    .locals 0
    .param p1, "roleName"    # Ljava/lang/String;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->roleName:Ljava/lang/String;

    .line 245
    return-void
.end method

.method public setUid(J)V
    .locals 1
    .param p1, "uid"    # J

    .prologue
    .line 204
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->uid:J

    .line 205
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 278
    iget-wide v4, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->uid:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 279
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->namePinyin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->nick:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 282
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->role:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->mediaId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->roleName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 285
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->checkEnable:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->check:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 287
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->externalStaff:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    return-void

    :cond_0
    move v0, v2

    .line 285
    goto :goto_0

    :cond_1
    move v0, v2

    .line 286
    goto :goto_1

    :cond_2
    move v1, v2

    .line 287
    goto :goto_2
.end method
