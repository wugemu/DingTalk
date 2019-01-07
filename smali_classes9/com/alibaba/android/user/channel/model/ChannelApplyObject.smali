.class public Lcom/alibaba/android/user/channel/model/ChannelApplyObject;
.super Ljava/lang/Object;
.source "ChannelApplyObject.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/user/channel/model/ChannelApplyObject;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x6fd083f373fda6d9L


# instance fields
.field public content:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public id:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public isInOrgExtContact:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public isRead:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgId:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public status:I
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
    .line 41
    new-instance v0, Lcom/alibaba/android/user/channel/model/ChannelApplyObject$1;

    invoke-direct {v0}, Lcom/alibaba/android/user/channel/model/ChannelApplyObject$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method static synthetic access$000(Landroid/os/Parcel;)Lcom/alibaba/android/user/channel/model/ChannelApplyObject;
    .locals 1
    .param p0, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 17
    invoke-static {p0}, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->readFromParcel(Landroid/os/Parcel;)Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    move-result-object v0

    return-object v0
.end method

.method private static readFromParcel(Landroid/os/Parcel;)Lcom/alibaba/android/user/channel/model/ChannelApplyObject;
    .locals 4
    .param p0, "source"    # Landroid/os/Parcel;

    .prologue
    .line 63
    new-instance v1, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    invoke-direct {v1}, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;-><init>()V

    .line 64
    .local v1, "info":Lcom/alibaba/android/user/channel/model/ChannelApplyObject;
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->id:J

    .line 65
    const/4 v2, 0x2

    new-array v0, v2, [Z

    .line 66
    .local v0, "bools":[Z
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 67
    const/4 v2, 0x0

    aget-boolean v2, v0, v2

    iput-boolean v2, v1, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->isRead:Z

    .line 68
    const/4 v2, 0x1

    aget-boolean v2, v0, v2

    iput-boolean v2, v1, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->isInOrgExtContact:Z

    .line 69
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->orgName:Ljava/lang/String;

    .line 70
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->content:Ljava/lang/String;

    .line 71
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->status:I

    .line 72
    const-class v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iput-object v2, v1, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 73
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->orgId:J

    .line 74
    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public fromIDLModel(Lfod;)Lcom/alibaba/android/user/channel/model/ChannelApplyObject;
    .locals 6
    .param p1, "model"    # Lfod;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 91
    if-nez p1, :cond_0

    .line 92
    const/4 p0, 0x0

    .line 102
    .end local p0    # "this":Lcom/alibaba/android/user/channel/model/ChannelApplyObject;
    :goto_0
    return-object p0

    .line 94
    .restart local p0    # "this":Lcom/alibaba/android/user/channel/model/ChannelApplyObject;
    :cond_0
    iget-object v0, p1, Lfod;->a:Ljava/lang/Long;

    .line 1044
    invoke-static {v0, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    .line 94
    iput-wide v0, p0, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->id:J

    .line 95
    iget-object v0, p1, Lfod;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->orgName:Ljava/lang/String;

    .line 96
    iget-object v0, p1, Lfod;->d:Lcgk;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->fromIDLModel(Lcgk;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 97
    iget-object v0, p1, Lfod;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->content:Ljava/lang/String;

    .line 98
    iget-object v0, p1, Lfod;->f:Ljava/lang/Integer;

    .line 2033
    invoke-static {v0, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 98
    iput v0, p0, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->status:I

    .line 99
    iget-object v0, p1, Lfod;->g:Ljava/lang/Boolean;

    .line 3022
    invoke-static {v0, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 99
    iput-boolean v0, p0, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->isRead:Z

    .line 100
    iget-object v0, p1, Lfod;->b:Ljava/lang/Long;

    .line 3044
    invoke-static {v0, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    .line 100
    iput-wide v0, p0, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->orgId:J

    .line 101
    iget-object v0, p1, Lfod;->h:Ljava/lang/Boolean;

    .line 4022
    invoke-static {v0, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 101
    iput-boolean v0, p0, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->isInOrgExtContact:Z

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 81
    const/4 v0, 0x2

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->isRead:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->isInOrgExtContact:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 82
    iget-object v0, p0, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->orgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget v0, p0, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget-object v0, p0, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 86
    iget-wide v0, p0, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->orgId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 88
    return-void
.end method
