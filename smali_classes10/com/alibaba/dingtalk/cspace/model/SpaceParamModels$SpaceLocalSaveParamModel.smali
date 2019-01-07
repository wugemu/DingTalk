.class public Lcom/alibaba/dingtalk/cspace/model/SpaceParamModels$SpaceLocalSaveParamModel;
.super Lcom/alibaba/dingtalk/cspace/model/SpaceBaseParam;
.source "SpaceParamModels.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/model/SpaceParamModels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpaceLocalSaveParamModel"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/dingtalk/cspace/model/SpaceParamModels$SpaceLocalSaveParamModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field localFilesPath:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 158
    new-instance v0, Lcom/alibaba/dingtalk/cspace/model/SpaceParamModels$SpaceLocalSaveParamModel$1;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/cspace/model/SpaceParamModels$SpaceLocalSaveParamModel$1;-><init>()V

    sput-object v0, Lcom/alibaba/dingtalk/cspace/model/SpaceParamModels$SpaceLocalSaveParamModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/cspace/model/SpaceBaseParam;-><init>(Landroid/os/Parcel;)V

    .line 149
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceParamModels$SpaceLocalSaveParamModel;->localFilesPath:Ljava/util/List;

    .line 150
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 154
    invoke-super {p0, p1, p2}, Lcom/alibaba/dingtalk/cspace/model/SpaceBaseParam;->writeToParcel(Landroid/os/Parcel;I)V

    .line 155
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceParamModels$SpaceLocalSaveParamModel;->localFilesPath:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 156
    return-void
.end method
