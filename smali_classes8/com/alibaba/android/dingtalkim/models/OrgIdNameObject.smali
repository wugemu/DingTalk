.class public Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;
.super Ljava/lang/Object;
.source "OrgIdNameObject.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public coopId:Ljava/lang/String;

.field public orgId:J

.field public orgName:Ljava/lang/String;

.field public select:Z

.field public token:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject$1;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;->orgId:J

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;->orgName:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;->select:Z

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;->coopId:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;->token:Ljava/lang/String;

    .line 78
    return-void

    .line 75
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static fromModelIDL(Ldud;)Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;
    .locals 4
    .param p0, "model"    # Ldud;

    .prologue
    .line 33
    if-nez p0, :cond_0

    .line 34
    const/4 v0, 0x0

    .line 42
    :goto_0
    return-object v0

    .line 36
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;-><init>()V

    .line 37
    .local v0, "object":Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;
    iget-object v1, p0, Ldud;->a:Ljava/lang/Long;

    .line 1044
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 37
    iput-wide v2, v0, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;->orgId:J

    .line 38
    iget-object v1, p0, Ldud;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;->orgName:Ljava/lang/String;

    .line 39
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;->select:Z

    .line 40
    iget-object v1, p0, Ldud;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;->coopId:Ljava/lang/String;

    .line 41
    iget-object v1, p0, Ldud;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;->token:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getListFromModelIDL(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ldud;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "modelList":Ljava/util/List;, "Ljava/util/List<Ldud;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 47
    :cond_0
    const/4 v0, 0x0

    .line 55
    :cond_1
    return-object v0

    .line 50
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldud;

    .line 52
    .local v1, "model":Ldud;
    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;->fromModelIDL(Ldud;)Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 60
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
    .line 65
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;->orgId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 66
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;->orgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;->select:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;->coopId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;->token:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    return-void

    .line 67
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
