.class public Lcom/alibaba/android/dingtalkim/models/GroupOrgIdsObject;
.super Ljava/lang/Object;
.source "GroupOrgIdsObject.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/GroupOrgIdsObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public deptServiceOrgId:Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;

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

.field public innerServiceOrgId:Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;

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

.field public serviceOrgIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/alibaba/android/dingtalkim/models/GroupOrgIdsObject$1;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/models/GroupOrgIdsObject$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalkim/models/GroupOrgIdsObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const-class v1, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 64
    .local v0, "loader":Ljava/lang/ClassLoader;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/models/GroupOrgIdsObject;->innerOrgIds:Ljava/util/List;

    .line 65
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/GroupOrgIdsObject;->innerOrgIds:Ljava/util/List;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/models/GroupOrgIdsObject;->ownerOrgIds:Ljava/util/List;

    .line 68
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/GroupOrgIdsObject;->ownerOrgIds:Ljava/util/List;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 70
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/models/GroupOrgIdsObject;->memberOrgIds:Ljava/util/List;

    .line 71
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/GroupOrgIdsObject;->memberOrgIds:Ljava/util/List;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 73
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/models/GroupOrgIdsObject;->serviceOrgIds:Ljava/util/List;

    .line 74
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/GroupOrgIdsObject;->serviceOrgIds:Ljava/util/List;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 76
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/models/GroupOrgIdsObject;->innerServiceOrgId:Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;

    .line 77
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/models/GroupOrgIdsObject;->deptServiceOrgId:Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;

    .line 78
    return-void
.end method

.method public static fromModelIDL(Ldtp;)Lcom/alibaba/android/dingtalkim/models/GroupOrgIdsObject;
    .locals 2
    .param p0, "model"    # Ldtp;

    .prologue
    .line 34
    new-instance v0, Lcom/alibaba/android/dingtalkim/models/GroupOrgIdsObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/models/GroupOrgIdsObject;-><init>()V

    .line 35
    .local v0, "object":Lcom/alibaba/android/dingtalkim/models/GroupOrgIdsObject;
    if-eqz p0, :cond_0

    .line 36
    iget-object v1, p0, Ldtp;->a:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;->getListFromModelIDL(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/GroupOrgIdsObject;->innerOrgIds:Ljava/util/List;

    .line 37
    iget-object v1, p0, Ldtp;->b:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;->getListFromModelIDL(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/GroupOrgIdsObject;->ownerOrgIds:Ljava/util/List;

    .line 38
    iget-object v1, p0, Ldtp;->c:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;->getListFromModelIDL(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/GroupOrgIdsObject;->memberOrgIds:Ljava/util/List;

    .line 39
    iget-object v1, p0, Ldtp;->d:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;->getListFromModelIDL(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/GroupOrgIdsObject;->serviceOrgIds:Ljava/util/List;

    .line 40
    iget-object v1, p0, Ldtp;->e:Ldud;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;->fromModelIDL(Ldud;)Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/GroupOrgIdsObject;->innerServiceOrgId:Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;

    .line 41
    iget-object v1, p0, Ldtp;->f:Ldud;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;->fromModelIDL(Ldud;)Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/GroupOrgIdsObject;->deptServiceOrgId:Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;

    .line 43
    :cond_0
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/GroupOrgIdsObject;->innerOrgIds:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 54
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/GroupOrgIdsObject;->ownerOrgIds:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 55
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/GroupOrgIdsObject;->memberOrgIds:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 56
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/GroupOrgIdsObject;->serviceOrgIds:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 57
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/GroupOrgIdsObject;->innerServiceOrgId:Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 58
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/GroupOrgIdsObject;->deptServiceOrgId:Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 59
    return-void
.end method
