.class public Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceRenameDentryArgs;
.super Ljava/lang/Object;
.source "SpaceRenameDentryArgs.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceRenameDentryArgs;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public dentry:Lcom/alibaba/alimei/cspace/model/DentryModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceRenameDentryArgs$1;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceRenameDentryArgs$1;-><init>()V

    sput-object v0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceRenameDentryArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-class v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceRenameDentryArgs;->dentry:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 22
    return-void
.end method

.method public static fix(Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceRenameDentryArgs;)Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceRenameDentryArgs;
    .locals 0
    .param p0, "args"    # Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceRenameDentryArgs;

    .prologue
    .line 30
    if-nez p0, :cond_0

    .line 31
    new-instance p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceRenameDentryArgs;

    .end local p0    # "args":Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceRenameDentryArgs;
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceRenameDentryArgs;-><init>()V

    .line 33
    .restart local p0    # "args":Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceRenameDentryArgs;
    :cond_0
    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceRenameDentryArgs;->dentry:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 27
    return-void
.end method
