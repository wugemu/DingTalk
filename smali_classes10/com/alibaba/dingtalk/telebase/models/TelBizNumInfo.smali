.class public Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;
.super Ljava/lang/Object;
.source "TelBizNumInfo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAdminUids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public mBeValid:Z

.field public mCallType:I

.field public mContactName:Ljava/lang/String;

.field public mCorpId:Ljava/lang/String;

.field public mNumType:I

.field public mNumber:Ljava/lang/String;

.field public mOrgId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo$1;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo$1;-><init>()V

    sput-object v0, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-boolean v1, p0, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mBeValid:Z

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mCorpId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mContactName:Ljava/lang/String;

    .line 42
    iput v1, p0, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mCallType:I

    iput v1, p0, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mNumType:I

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mOrgId:J

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mAdminUids:Ljava/util/List;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    if-nez p1, :cond_0

    .line 68
    :goto_0
    return-void

    .line 51
    :cond_0
    new-array v0, v5, [Z

    .line 52
    .local v0, "flags":[Z
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 53
    aget-boolean v3, v0, v4

    iput-boolean v3, p0, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mBeValid:Z

    .line 54
    const/4 v3, 0x3

    new-array v1, v3, [Ljava/lang/String;

    .line 55
    .local v1, "names":[Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 56
    aget-object v3, v1, v4

    iput-object v3, p0, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mContactName:Ljava/lang/String;

    .line 57
    aget-object v3, v1, v5

    iput-object v3, p0, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mNumber:Ljava/lang/String;

    .line 58
    aget-object v3, v1, v6

    iput-object v3, p0, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mCorpId:Ljava/lang/String;

    .line 59
    new-array v2, v6, [I

    .line 60
    .local v2, "types":[I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readIntArray([I)V

    .line 61
    aget v3, v2, v4

    iput v3, p0, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mNumType:I

    .line 62
    aget v3, v2, v5

    iput v3, p0, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mCallType:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mOrgId:J

    .line 64
    iget-object v3, p0, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mAdminUids:Ljava/util/List;

    if-nez v3, :cond_1

    .line 65
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mAdminUids:Ljava/util/List;

    .line 67
    :cond_1
    iget-object v3, p0, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mAdminUids:Ljava/util/List;

    const-class v4, Ljava/util/List;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 77
    new-array v0, v3, [Z

    iget-boolean v1, p0, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mBeValid:Z

    aput-boolean v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 78
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mContactName:Ljava/lang/String;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mNumber:Ljava/lang/String;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mCorpId:Ljava/lang/String;

    aput-object v1, v0, v4

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 79
    new-array v0, v4, [I

    iget v1, p0, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mNumType:I

    aput v1, v0, v2

    iget v1, p0, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mCallType:I

    aput v1, v0, v3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 80
    iget-wide v0, p0, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mOrgId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 81
    iget-object v0, p0, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mAdminUids:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 82
    return-void
.end method
