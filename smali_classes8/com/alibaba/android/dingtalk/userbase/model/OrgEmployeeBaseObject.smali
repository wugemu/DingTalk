.class public Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;
.super Ljava/lang/Object;
.source "OrgEmployeeBaseObject.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x6ec7d04b9481288bL


# instance fields
.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public namePinyin:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public nick:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public nickPinyin:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgAuthEmail:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgEmail:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgId:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public staffId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public uid:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public ver:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject$1;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;->uid:J

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;->orgId:J

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;->name:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;->namePinyin:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;->staffId:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;->orgEmail:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;->orgAuthEmail:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;->ver:J

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;->title:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;->nick:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;->nickPinyin:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public static fromIDLModel(Lcet;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;
    .locals 6
    .param p0, "model"    # Lcet;

    .prologue
    const-wide/16 v4, 0x0

    .line 87
    if-nez p0, :cond_0

    .line 88
    const/4 v0, 0x0

    .line 102
    :goto_0
    return-object v0

    .line 90
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;-><init>()V

    .line 91
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;
    iget-object v1, p0, Lcet;->a:Ljava/lang/Long;

    .line 1044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 91
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;->uid:J

    .line 92
    iget-object v1, p0, Lcet;->b:Ljava/lang/Long;

    .line 2044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 92
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;->orgId:J

    .line 93
    iget-object v1, p0, Lcet;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;->name:Ljava/lang/String;

    .line 94
    iget-object v1, p0, Lcet;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;->namePinyin:Ljava/lang/String;

    .line 95
    iget-object v1, p0, Lcet;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;->staffId:Ljava/lang/String;

    .line 96
    iget-object v1, p0, Lcet;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;->orgEmail:Ljava/lang/String;

    .line 97
    iget-object v1, p0, Lcet;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;->orgAuthEmail:Ljava/lang/String;

    .line 98
    iget-object v1, p0, Lcet;->h:Ljava/lang/Long;

    .line 3044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 98
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;->ver:J

    .line 99
    iget-object v1, p0, Lcet;->i:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;->title:Ljava/lang/String;

    .line 100
    iget-object v1, p0, Lcet;->j:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;->nick:Ljava/lang/String;

    .line 101
    iget-object v1, p0, Lcet;->k:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;->nickPinyin:Ljava/lang/String;

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

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 112
    iget-wide v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;->uid:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 113
    iget-wide v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;->orgId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 114
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;->namePinyin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;->staffId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;->orgEmail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;->orgAuthEmail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    iget-wide v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;->ver:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 120
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;->nick:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;->nickPinyin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    return-void
.end method
