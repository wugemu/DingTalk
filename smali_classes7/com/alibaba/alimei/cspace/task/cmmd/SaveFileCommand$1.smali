.class final Lcom/alibaba/alimei/cspace/task/cmmd/SaveFileCommand$1;
.super Ljava/lang/Object;
.source "SaveFileCommand.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/cspace/task/cmmd/SaveFileCommand;
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
        "Lcom/alibaba/alimei/cspace/task/cmmd/SaveFileCommand;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    .line 2067
    new-instance v0, Lcom/alibaba/alimei/cspace/task/cmmd/SaveFileCommand;

    invoke-direct {v0, p1}, Lcom/alibaba/alimei/cspace/task/cmmd/SaveFileCommand;-><init>(Landroid/os/Parcel;)V

    .line 65
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    .line 1070
    new-array v0, p1, [Lcom/alibaba/alimei/cspace/task/cmmd/SaveFileCommand;

    .line 65
    return-object v0
.end method
