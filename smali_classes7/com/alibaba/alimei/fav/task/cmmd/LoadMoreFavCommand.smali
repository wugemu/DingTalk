.class public Lcom/alibaba/alimei/fav/task/cmmd/LoadMoreFavCommand;
.super Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;
.source "LoadMoreFavCommand.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/fav/task/cmmd/LoadMoreFavCommand;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "LoadMoreFavCommand"


# instance fields
.field private loadMoreId:Ljava/lang/String;

.field private spaceId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcom/alibaba/alimei/fav/task/cmmd/LoadMoreFavCommand$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/fav/task/cmmd/LoadMoreFavCommand$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/fav/task/cmmd/LoadMoreFavCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>()V

    .line 53
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/fav/task/cmmd/LoadMoreFavCommand;->buildFromParcel(Landroid/os/Parcel;)V

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/fav/task/cmmd/LoadMoreFavCommand;->spaceId:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/fav/task/cmmd/LoadMoreFavCommand;->loadMoreId:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "spaceId"    # Ljava/lang/String;
    .param p3, "loadMoreId"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>(Ljava/lang/String;)V

    .line 23
    iput-object p2, p0, Lcom/alibaba/alimei/fav/task/cmmd/LoadMoreFavCommand;->spaceId:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/alibaba/alimei/fav/task/cmmd/LoadMoreFavCommand;->loadMoreId:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public buildCommandTask(Landroid/content/Context;)Lyq;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 29
    new-instance v0, Lxi;

    iget-object v1, p0, Lcom/alibaba/alimei/fav/task/cmmd/LoadMoreFavCommand;->mAccountName:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/alimei/fav/task/cmmd/LoadMoreFavCommand;->spaceId:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/alimei/fav/task/cmmd/LoadMoreFavCommand;->loadMoreId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lxi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public genBizUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v1, "LoadMoreFavCommand"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 35
    .local v0, "sbStr":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 36
    iget-object v1, p0, Lcom/alibaba/alimei/fav/task/cmmd/LoadMoreFavCommand;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 37
    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 38
    iget-object v1, p0, Lcom/alibaba/alimei/fav/task/cmmd/LoadMoreFavCommand;->spaceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 39
    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 40
    iget-object v1, p0, Lcom/alibaba/alimei/fav/task/cmmd/LoadMoreFavCommand;->loadMoreId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/alimei/fav/task/cmmd/LoadMoreFavCommand;->writeToParcelParent(Landroid/os/Parcel;I)V

    .line 47
    iget-object v0, p0, Lcom/alibaba/alimei/fav/task/cmmd/LoadMoreFavCommand;->spaceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/alibaba/alimei/fav/task/cmmd/LoadMoreFavCommand;->loadMoreId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    return-void
.end method
