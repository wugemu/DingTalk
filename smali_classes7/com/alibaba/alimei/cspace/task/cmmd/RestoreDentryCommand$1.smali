.class final Lcom/alibaba/alimei/cspace/task/cmmd/RestoreDentryCommand$1;
.super Ljava/lang/Object;
.source "RestoreDentryCommand.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/cspace/task/cmmd/RestoreDentryCommand;
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
        "Lcom/alibaba/alimei/cspace/task/cmmd/RestoreDentryCommand;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 60
    .line 2062
    new-instance v0, Lcom/alibaba/alimei/cspace/task/cmmd/RestoreDentryCommand;

    invoke-direct {v0, p1}, Lcom/alibaba/alimei/cspace/task/cmmd/RestoreDentryCommand;-><init>(Landroid/os/Parcel;)V

    .line 60
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 60
    .line 1065
    new-array v0, p1, [Lcom/alibaba/alimei/cspace/task/cmmd/RestoreDentryCommand;

    .line 60
    return-object v0
.end method
