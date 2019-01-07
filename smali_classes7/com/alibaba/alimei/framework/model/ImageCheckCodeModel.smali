.class public Lcom/alibaba/alimei/framework/model/ImageCheckCodeModel;
.super Lcom/alibaba/alimei/framework/model/AbsBaseModel;
.source "ImageCheckCodeModel.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/framework/model/ImageCheckCodeModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private imgBase64:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/alibaba/alimei/framework/model/ImageCheckCodeModel$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/framework/model/ImageCheckCodeModel$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/framework/model/ImageCheckCodeModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/model/AbsBaseModel;-><init>()V

    .line 14
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/model/AbsBaseModel;-><init>()V

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/framework/model/ImageCheckCodeModel;->imgBase64:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public getImgBase64()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alibaba/alimei/framework/model/ImageCheckCodeModel;->imgBase64:Ljava/lang/String;

    return-object v0
.end method

.method public setImgBase64(Ljava/lang/String;)V
    .locals 0
    .param p1, "imgBase64"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/alibaba/alimei/framework/model/ImageCheckCodeModel;->imgBase64:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/alimei/framework/model/ImageCheckCodeModel;->imgBase64:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 31
    return-void
.end method
