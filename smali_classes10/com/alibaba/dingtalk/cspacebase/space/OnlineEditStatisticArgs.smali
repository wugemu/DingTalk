.class public Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;
.super Ljava/lang/Object;
.source "OnlineEditStatisticArgs.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public convId:Ljava/lang/String;

.field public fileId:Ljava/lang/String;

.field public spaceDo:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

.field public spaceId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs$1;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs$1;-><init>()V

    sput-object v0, Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;->spaceId:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;->fileId:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;->convId:Ljava/lang/String;

    .line 23
    const-class v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;->spaceDo:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 24
    return-void
.end method

.method public static fix(Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;)Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;
    .locals 0
    .param p0, "args"    # Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;

    .prologue
    .line 36
    if-nez p0, :cond_0

    .line 37
    new-instance p0, Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;

    .end local p0    # "args":Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;-><init>()V

    .line 39
    .restart local p0    # "args":Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;
    :cond_0
    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;->spaceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;->fileId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;->convId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;->spaceDo:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 33
    return-void
.end method
