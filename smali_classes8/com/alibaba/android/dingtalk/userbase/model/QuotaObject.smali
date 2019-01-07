.class public Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;
.super Ljava/lang/Object;
.source "QuotaObject.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public desc:Ljava/lang/String;

.field public detail:Lcom/alibaba/android/dingtalk/userbase/model/QuotaDetailObject;

.field public lastTime:J

.field public remain:J

.field public title:Ljava/lang/String;

.field public total:J

.field public type:I

.field public used:J

.field public version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject$1;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->type:I

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->remain:J

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->total:J

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->lastTime:J

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->title:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->desc:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->used:J

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->version:I

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaDetailObject;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->detail:Lcom/alibaba/android/dingtalk/userbase/model/QuotaDetailObject;

    .line 106
    return-void
.end method

.method public constructor <init>(Lcfs;)V
    .locals 5
    .param p1, "model"    # Lcfs;

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    if-eqz p1, :cond_0

    .line 38
    iget-object v0, p1, Lcfs;->a:Ljava/lang/Integer;

    .line 1033
    invoke-static {v0, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 38
    iput v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->type:I

    .line 39
    iget-object v0, p1, Lcfs;->b:Ljava/lang/Long;

    .line 1044
    invoke-static {v0, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    .line 39
    iput-wide v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->remain:J

    .line 40
    iget-object v0, p1, Lcfs;->c:Ljava/lang/Long;

    .line 2044
    invoke-static {v0, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    .line 40
    iput-wide v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->total:J

    .line 41
    iget-object v0, p1, Lcfs;->d:Ljava/lang/Long;

    .line 3044
    invoke-static {v0, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    .line 41
    iput-wide v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->lastTime:J

    .line 42
    iget-object v0, p1, Lcfs;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->title:Ljava/lang/String;

    .line 43
    iget-object v0, p1, Lcfs;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->desc:Ljava/lang/String;

    .line 44
    iget-object v0, p1, Lcfs;->h:Ljava/lang/Long;

    .line 4044
    invoke-static {v0, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    .line 44
    iput-wide v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->used:J

    .line 45
    iget-object v0, p1, Lcfs;->i:Ljava/lang/Integer;

    .line 5033
    invoke-static {v0, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 45
    iput v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->version:I

    .line 46
    iget-object v0, p1, Lcfs;->j:Lcdg;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/QuotaDetailObject;->fromIDLModel(Lcdg;)Lcom/alibaba/android/dingtalk/userbase/model/QuotaDetailObject;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->detail:Lcom/alibaba/android/dingtalk/userbase/model/QuotaDetailObject;

    .line 48
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcfs;J)V
    .locals 6
    .param p1, "model"    # Lcfs;
    .param p2, "lastTime"    # J

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    if-eqz p1, :cond_0

    .line 52
    iget-object v0, p1, Lcfs;->a:Ljava/lang/Integer;

    .line 6033
    invoke-static {v0, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 52
    iput v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->type:I

    .line 53
    iget-object v0, p1, Lcfs;->b:Ljava/lang/Long;

    .line 6044
    invoke-static {v0, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    .line 53
    iput-wide v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->remain:J

    .line 54
    iget-object v0, p1, Lcfs;->c:Ljava/lang/Long;

    .line 7044
    invoke-static {v0, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    .line 54
    iput-wide v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->total:J

    .line 55
    iput-wide p2, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->lastTime:J

    .line 56
    iget-object v0, p1, Lcfs;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->title:Ljava/lang/String;

    .line 57
    iget-object v0, p1, Lcfs;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->desc:Ljava/lang/String;

    .line 58
    iget-object v0, p1, Lcfs;->h:Ljava/lang/Long;

    .line 8044
    invoke-static {v0, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    .line 58
    iput-wide v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->used:J

    .line 59
    iget-object v0, p1, Lcfs;->i:Ljava/lang/Integer;

    .line 9033
    invoke-static {v0, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 59
    iput v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->version:I

    .line 60
    iget-object v0, p1, Lcfs;->j:Lcdg;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/QuotaDetailObject;->fromIDLModel(Lcdg;)Lcom/alibaba/android/dingtalk/userbase/model/QuotaDetailObject;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->detail:Lcom/alibaba/android/dingtalk/userbase/model/QuotaDetailObject;

    .line 62
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public toIDLModel()Lcfs;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 65
    new-instance v0, Lcfs;

    invoke-direct {v0}, Lcfs;-><init>()V

    .line 66
    .local v0, "model":Lcfs;
    iget v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcfs;->a:Ljava/lang/Integer;

    .line 67
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->remain:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcfs;->b:Ljava/lang/Long;

    .line 68
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->total:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcfs;->c:Ljava/lang/Long;

    .line 69
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->lastTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcfs;->d:Ljava/lang/Long;

    .line 70
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->title:Ljava/lang/String;

    iput-object v1, v0, Lcfs;->f:Ljava/lang/String;

    .line 71
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->desc:Ljava/lang/String;

    iput-object v1, v0, Lcfs;->g:Ljava/lang/String;

    .line 72
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->used:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcfs;->h:Ljava/lang/Long;

    .line 73
    iget v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->version:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcfs;->i:Ljava/lang/Integer;

    .line 74
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->detail:Lcom/alibaba/android/dingtalk/userbase/model/QuotaDetailObject;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/QuotaDetailObject;->toIDLModel(Lcom/alibaba/android/dingtalk/userbase/model/QuotaDetailObject;)Lcdg;

    move-result-object v1

    iput-object v1, v0, Lcfs;->j:Lcdg;

    .line 75
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 85
    iget v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget-wide v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->remain:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 87
    iget-wide v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->total:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 88
    iget-wide v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->lastTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 89
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->desc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget-wide v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->used:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 92
    iget v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->version:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->detail:Lcom/alibaba/android/dingtalk/userbase/model/QuotaDetailObject;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 94
    return-void
.end method
