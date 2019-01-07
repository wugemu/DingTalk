.class final Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeResult$1;
.super Ljava/lang/Object;
.source "FaceAnalyzeResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 115
    .line 2118
    new-instance v0, Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeResult;

    invoke-direct {v0, p1}, Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeResult;-><init>(Landroid/os/Parcel;)V

    .line 115
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 115
    .line 1123
    new-array v0, p1, [Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeResult;

    .line 115
    return-object v0
.end method
