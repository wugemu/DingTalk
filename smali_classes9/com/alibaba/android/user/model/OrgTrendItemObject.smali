.class public Lcom/alibaba/android/user/model/OrgTrendItemObject;
.super Ljava/lang/Object;
.source "OrgTrendItemObject.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/user/model/OrgTrendItemObject;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x441e3bbf7fb837ccL


# instance fields
.field public dayTime:Ljava/lang/String;

.field public scoreCharacter:J

.field public scoreCommunicate:J

.field public scoreStr:Ljava/lang/String;

.field public scoreTeamwork:J

.field public scoreTotal:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/alibaba/android/user/model/OrgTrendItemObject$1;

    invoke-direct {v0}, Lcom/alibaba/android/user/model/OrgTrendItemObject$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/user/model/OrgTrendItemObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/os/Parcel;)Lcom/alibaba/android/user/model/OrgTrendItemObject;
    .locals 1
    .param p0, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 30
    invoke-static {p0}, Lcom/alibaba/android/user/model/OrgTrendItemObject;->readFromParcel(Landroid/os/Parcel;)Lcom/alibaba/android/user/model/OrgTrendItemObject;

    move-result-object v0

    return-object v0
.end method

.method private static readFromParcel(Landroid/os/Parcel;)Lcom/alibaba/android/user/model/OrgTrendItemObject;
    .locals 8
    .param p0, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 77
    new-instance v1, Lcom/alibaba/android/user/model/OrgTrendItemObject;

    invoke-direct {v1}, Lcom/alibaba/android/user/model/OrgTrendItemObject;-><init>()V

    .line 78
    .local v1, "object":Lcom/alibaba/android/user/model/OrgTrendItemObject;
    new-array v0, v7, [Ljava/lang/String;

    .line 79
    .local v0, "array":[Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 80
    aget-object v3, v0, v4

    iput-object v3, v1, Lcom/alibaba/android/user/model/OrgTrendItemObject;->dayTime:Ljava/lang/String;

    .line 81
    aget-object v3, v0, v6

    iput-object v3, v1, Lcom/alibaba/android/user/model/OrgTrendItemObject;->scoreStr:Ljava/lang/String;

    .line 83
    const/4 v3, 0x4

    new-array v2, v3, [J

    .line 84
    .local v2, "scores":[J
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 85
    aget-wide v4, v2, v4

    iput-wide v4, v1, Lcom/alibaba/android/user/model/OrgTrendItemObject;->scoreTeamwork:J

    .line 86
    aget-wide v4, v2, v6

    iput-wide v4, v1, Lcom/alibaba/android/user/model/OrgTrendItemObject;->scoreCharacter:J

    .line 87
    aget-wide v4, v2, v7

    iput-wide v4, v1, Lcom/alibaba/android/user/model/OrgTrendItemObject;->scoreCommunicate:J

    .line 88
    const/4 v3, 0x3

    aget-wide v4, v2, v3

    iput-wide v4, v1, Lcom/alibaba/android/user/model/OrgTrendItemObject;->scoreTotal:J

    .line 89
    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public fromIDLModel(Lfpu;)Lcom/alibaba/android/user/model/OrgTrendItemObject;
    .locals 6
    .param p1, "itemModel"    # Lfpu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    .line 48
    new-instance v0, Lcom/alibaba/android/user/model/OrgTrendItemObject;

    invoke-direct {v0}, Lcom/alibaba/android/user/model/OrgTrendItemObject;-><init>()V

    .line 49
    .local v0, "object":Lcom/alibaba/android/user/model/OrgTrendItemObject;
    if-eqz p1, :cond_0

    .line 50
    iget-object v1, p1, Lfpu;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/model/OrgTrendItemObject;->dayTime:Ljava/lang/String;

    .line 51
    iget-object v1, p1, Lfpu;->b:Ljava/lang/Long;

    .line 1044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 51
    iput-wide v2, v0, Lcom/alibaba/android/user/model/OrgTrendItemObject;->scoreTeamwork:J

    .line 52
    iget-object v1, p1, Lfpu;->c:Ljava/lang/Long;

    .line 2044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 52
    iput-wide v2, v0, Lcom/alibaba/android/user/model/OrgTrendItemObject;->scoreCharacter:J

    .line 53
    iget-object v1, p1, Lfpu;->d:Ljava/lang/Long;

    .line 3044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 53
    iput-wide v2, v0, Lcom/alibaba/android/user/model/OrgTrendItemObject;->scoreCommunicate:J

    .line 54
    iget-object v1, p1, Lfpu;->e:Ljava/lang/Long;

    .line 4044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 54
    iput-wide v2, v0, Lcom/alibaba/android/user/model/OrgTrendItemObject;->scoreTotal:J

    .line 55
    iget-object v1, p1, Lfpu;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/model/OrgTrendItemObject;->scoreStr:Ljava/lang/String;

    .line 57
    :cond_0
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 94
    new-array v0, v6, [Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/android/user/model/OrgTrendItemObject;->dayTime:Ljava/lang/String;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/alibaba/android/user/model/OrgTrendItemObject;->scoreStr:Ljava/lang/String;

    aput-object v1, v0, v5

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 95
    const/4 v0, 0x4

    new-array v0, v0, [J

    iget-wide v2, p0, Lcom/alibaba/android/user/model/OrgTrendItemObject;->scoreTeamwork:J

    aput-wide v2, v0, v4

    iget-wide v2, p0, Lcom/alibaba/android/user/model/OrgTrendItemObject;->scoreCharacter:J

    aput-wide v2, v0, v5

    iget-wide v2, p0, Lcom/alibaba/android/user/model/OrgTrendItemObject;->scoreCommunicate:J

    aput-wide v2, v0, v6

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/alibaba/android/user/model/OrgTrendItemObject;->scoreTotal:J

    aput-wide v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 96
    return-void
.end method
