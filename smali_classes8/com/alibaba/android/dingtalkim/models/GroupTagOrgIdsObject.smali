.class public Lcom/alibaba/android/dingtalkim/models/GroupTagOrgIdsObject;
.super Ljava/lang/Object;
.source "GroupTagOrgIdsObject.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/GroupTagOrgIdsObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public innerOrgIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;",
            ">;"
        }
    .end annotation
.end field

.field public memberOrgIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;",
            ">;"
        }
    .end annotation
.end field

.field public ownerOrgIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;",
            ">;"
        }
    .end annotation
.end field

.field public tag:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/alibaba/android/dingtalkim/models/GroupTagOrgIdsObject$1;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/models/GroupTagOrgIdsObject$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalkim/models/GroupTagOrgIdsObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/dingtalkim/models/GroupTagOrgIdsObject;->tag:J

    .line 60
    const-class v1, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 61
    .local v0, "loader":Ljava/lang/ClassLoader;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/models/GroupTagOrgIdsObject;->innerOrgIds:Ljava/util/List;

    .line 62
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/GroupTagOrgIdsObject;->innerOrgIds:Ljava/util/List;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 64
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/models/GroupTagOrgIdsObject;->ownerOrgIds:Ljava/util/List;

    .line 65
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/GroupTagOrgIdsObject;->ownerOrgIds:Ljava/util/List;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/models/GroupTagOrgIdsObject;->memberOrgIds:Ljava/util/List;

    .line 68
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/GroupTagOrgIdsObject;->memberOrgIds:Ljava/util/List;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 69
    return-void
.end method

.method public static fromModelIDL(Ldtq;)Lcom/alibaba/android/dingtalkim/models/GroupTagOrgIdsObject;
    .locals 4
    .param p0, "model"    # Ldtq;

    .prologue
    .line 32
    if-nez p0, :cond_0

    .line 33
    const/4 v0, 0x0

    .line 40
    :goto_0
    return-object v0

    .line 35
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkim/models/GroupTagOrgIdsObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/models/GroupTagOrgIdsObject;-><init>()V

    .line 36
    .local v0, "object":Lcom/alibaba/android/dingtalkim/models/GroupTagOrgIdsObject;
    iget-object v1, p0, Ldtq;->a:Ljava/lang/Long;

    .line 1044
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 36
    iput-wide v2, v0, Lcom/alibaba/android/dingtalkim/models/GroupTagOrgIdsObject;->tag:J

    .line 37
    iget-object v1, p0, Ldtq;->b:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;->getListFromModelIDL(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/GroupTagOrgIdsObject;->innerOrgIds:Ljava/util/List;

    .line 38
    iget-object v1, p0, Ldtq;->c:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;->getListFromModelIDL(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/GroupTagOrgIdsObject;->ownerOrgIds:Ljava/util/List;

    .line 39
    iget-object v1, p0, Ldtq;->d:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;->getListFromModelIDL(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/GroupTagOrgIdsObject;->memberOrgIds:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public canShowSelect()Z
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/models/GroupTagOrgIdsObject;->hasInnerOrg()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/models/GroupTagOrgIdsObject;->hasCooperativeOrg()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ldjl;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public hasCooperativeOrg()Z
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/GroupTagOrgIdsObject;->ownerOrgIds:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/GroupTagOrgIdsObject;->ownerOrgIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/GroupTagOrgIdsObject;->memberOrgIds:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/GroupTagOrgIdsObject;->memberOrgIds:Ljava/util/List;

    .line 87
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasInnerOrg()Z
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/GroupTagOrgIdsObject;->innerOrgIds:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/GroupTagOrgIdsObject;->innerOrgIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/models/GroupTagOrgIdsObject;->tag:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 51
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/GroupTagOrgIdsObject;->innerOrgIds:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 52
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/GroupTagOrgIdsObject;->ownerOrgIds:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 53
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/GroupTagOrgIdsObject;->memberOrgIds:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 54
    return-void
.end method
