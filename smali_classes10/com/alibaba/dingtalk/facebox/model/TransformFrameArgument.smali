.class public Lcom/alibaba/dingtalk/facebox/model/TransformFrameArgument;
.super Ljava/lang/Object;
.source "TransformFrameArgument.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/dingtalk/facebox/model/TransformFrameArgument;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public extendFaceSize:Landroid/graphics/RectF;

.field public faceQuality:I

.field public maxImageWidth:I

.field public quality:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/alibaba/dingtalk/facebox/model/TransformFrameArgument$1;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/facebox/model/TransformFrameArgument$1;-><init>()V

    sput-object v0, Lcom/alibaba/dingtalk/facebox/model/TransformFrameArgument;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-class v0, Landroid/graphics/RectF;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/model/TransformFrameArgument;->extendFaceSize:Landroid/graphics/RectF;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/facebox/model/TransformFrameArgument;->maxImageWidth:I

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/facebox/model/TransformFrameArgument;->quality:I

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/facebox/model/TransformFrameArgument;->faceQuality:I

    .line 47
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/model/TransformFrameArgument;->extendFaceSize:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 34
    iget v0, p0, Lcom/alibaba/dingtalk/facebox/model/TransformFrameArgument;->maxImageWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    iget v0, p0, Lcom/alibaba/dingtalk/facebox/model/TransformFrameArgument;->quality:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    iget v0, p0, Lcom/alibaba/dingtalk/facebox/model/TransformFrameArgument;->faceQuality:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    return-void
.end method
