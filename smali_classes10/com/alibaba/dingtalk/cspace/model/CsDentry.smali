.class public Lcom/alibaba/dingtalk/cspace/model/CsDentry;
.super Ljava/lang/Object;
.source "CsDentry.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/dingtalk/cspace/model/CsDentry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private dentryExtModel:Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;

.field private dentryModel:Lcom/alibaba/alimei/cspace/model/DentryModel;

.field private space:Lcom/alibaba/dingtalk/cspace/model/CsSpace;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/alibaba/dingtalk/cspace/model/CsDentry$1;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/cspace/model/CsDentry$1;-><init>()V

    sput-object v0, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-class v0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->space:Lcom/alibaba/dingtalk/cspace/model/CsSpace;

    .line 32
    const-class v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->dentryModel:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 33
    const-class v0, Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->dentryExtModel:Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;

    .line 34
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alibaba/dingtalk/cspace/model/CsDentry$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/alibaba/dingtalk/cspace/model/CsDentry$1;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static create()Lcom/alibaba/dingtalk/cspace/model/CsDentry;
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;-><init>()V

    return-object v0
.end method


# virtual methods
.method public checkAdmin(Z)Z
    .locals 4
    .param p1, "defaultValue"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getSpace()Lcom/alibaba/dingtalk/cspace/model/CsSpace;

    move-result-object v0

    .line 65
    .local v0, "csSpace":Lcom/alibaba/dingtalk/cspace/model/CsSpace;
    if-nez v0, :cond_1

    .line 76
    .end local p1    # "defaultValue":Z
    :cond_0
    :goto_0
    return p1

    .line 68
    .restart local p1    # "defaultValue":Z
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->isAclEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 69
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v1

    .line 70
    .local v1, "dentry":Lcom/alibaba/alimei/cspace/model/DentryModel;
    if-eqz v1, :cond_0

    .line 73
    invoke-static {}, Lgqd;->a()Lgqd;

    move-result-object v2

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAuthFlag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgqd;->c(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    .line 76
    .end local v1    # "dentry":Lcom/alibaba/alimei/cspace/model/DentryModel;
    :cond_2
    invoke-virtual {v0, p1}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->checkAdmin(Z)Z

    move-result p1

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public getDentryExtModel()Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->dentryExtModel:Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;

    return-object v0
.end method

.method public getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->dentryModel:Lcom/alibaba/alimei/cspace/model/DentryModel;

    return-object v0
.end method

.method public getSpace()Lcom/alibaba/dingtalk/cspace/model/CsSpace;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->space:Lcom/alibaba/dingtalk/cspace/model/CsSpace;

    return-object v0
.end method

.method public setDentryExtModel(Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;)V
    .locals 0
    .param p1, "dentryExtModel"    # Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->dentryExtModel:Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;

    .line 103
    return-void
.end method

.method public setDentryModel(Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 0
    .param p1, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->dentryModel:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 95
    return-void
.end method

.method public setSpace(Lcom/alibaba/dingtalk/cspace/model/CsSpace;)V
    .locals 0
    .param p1, "space"    # Lcom/alibaba/dingtalk/cspace/model/CsSpace;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->space:Lcom/alibaba/dingtalk/cspace/model/CsSpace;

    .line 87
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->space:Lcom/alibaba/dingtalk/cspace/model/CsSpace;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 39
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->dentryModel:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 40
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->dentryExtModel:Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 41
    return-void
.end method
