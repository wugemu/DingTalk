.class public Lcom/alibaba/android/dingtalk/userbase/model/bizcard/SimpleCardFriendObject;
.super Ljava/lang/Object;
.source "SimpleCardFriendObject.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/bizcard/SimpleCardFriendObject;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x25b9e36a89e86ad2L


# instance fields
.field public orgName:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public uid:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/bizcard/SimpleCardFriendObject$1;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/bizcard/SimpleCardFriendObject$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalk/userbase/model/bizcard/SimpleCardFriendObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/bizcard/SimpleCardFriendObject;->uid:J

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/bizcard/SimpleCardFriendObject;->title:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/bizcard/SimpleCardFriendObject;->orgName:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 44
    if-nez p1, :cond_1

    .line 55
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v1

    .line 47
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v5, p1, Lcom/alibaba/android/dingtalk/userbase/model/bizcard/SimpleCardFriendObject;

    if-eqz v5, :cond_2

    move-object v0, p1

    .line 48
    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/bizcard/SimpleCardFriendObject;

    .line 49
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/bizcard/SimpleCardFriendObject;
    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/bizcard/SimpleCardFriendObject;->uid:J

    iget-wide v8, p0, Lcom/alibaba/android/dingtalk/userbase/model/bizcard/SimpleCardFriendObject;->uid:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    move v1, v4

    goto :goto_0

    .line 51
    .end local v0    # "object":Lcom/alibaba/android/dingtalk/userbase/model/bizcard/SimpleCardFriendObject;
    :cond_2
    instance-of v5, p1, Ljava/lang/Long;

    if-eqz v5, :cond_0

    .line 52
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 53
    .local v2, "uid":J
    iget-wide v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/bizcard/SimpleCardFriendObject;->uid:J

    cmp-long v5, v2, v6

    if-nez v5, :cond_0

    move v1, v4

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/bizcard/SimpleCardFriendObject;->uid:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/bizcard/SimpleCardFriendObject;->uid:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 72
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/bizcard/SimpleCardFriendObject;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/bizcard/SimpleCardFriendObject;->orgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    return-void
.end method
