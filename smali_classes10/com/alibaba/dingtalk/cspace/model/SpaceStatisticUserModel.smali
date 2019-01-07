.class public Lcom/alibaba/dingtalk/cspace/model/SpaceStatisticUserModel;
.super Ljava/lang/Object;
.source "SpaceStatisticUserModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/dingtalk/cspace/model/SpaceStatisticUserModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private access:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private isLeave:Z

.field private uid:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lcom/alibaba/dingtalk/cspace/model/SpaceStatisticUserModel$1;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/cspace/model/SpaceStatisticUserModel$1;-><init>()V

    sput-object v0, Lcom/alibaba/dingtalk/cspace/model/SpaceStatisticUserModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceStatisticUserModel;->uid:Ljava/lang/Long;

    .line 80
    const-class v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceStatisticUserModel;->access:Ljava/util/Map;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceStatisticUserModel;->isLeave:Z

    .line 82
    return-void

    .line 81
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 0
    .param p1, "uid"    # Ljava/lang/Long;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/util/Map;)V
    .locals 0
    .param p1, "uid"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p2, "access":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceStatisticUserModel;->uid:Ljava/lang/Long;

    .line 71
    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceStatisticUserModel;->access:Ljava/util/Map;

    .line 72
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public getAccess()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceStatisticUserModel;->access:Ljava/util/Map;

    return-object v0
.end method

.method public getUid()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceStatisticUserModel;->uid:Ljava/lang/Long;

    return-object v0
.end method

.method public isLeave()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceStatisticUserModel;->isLeave:Z

    return v0
.end method

.method public setAccess(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "access":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceStatisticUserModel;->access:Ljava/util/Map;

    .line 47
    return-void
.end method

.method public setLeave(Z)V
    .locals 0
    .param p1, "leave"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceStatisticUserModel;->isLeave:Z

    .line 51
    return-void
.end method

.method public setUid(Ljava/lang/Long;)V
    .locals 0
    .param p1, "uid"    # Ljava/lang/Long;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceStatisticUserModel;->uid:Ljava/lang/Long;

    .line 43
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceStatisticUserModel;->uid:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 65
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceStatisticUserModel;->access:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 66
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceStatisticUserModel;->isLeave:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    return-void

    .line 66
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
