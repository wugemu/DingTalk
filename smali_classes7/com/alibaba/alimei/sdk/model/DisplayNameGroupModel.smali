.class public Lcom/alibaba/alimei/sdk/model/DisplayNameGroupModel;
.super Lcom/alibaba/alimei/framework/datasource/DataGroupModel;
.source "DisplayNameGroupModel.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/sdk/model/DisplayNameGroupModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccountId:J

.field public mDisplayName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/alibaba/alimei/sdk/model/DisplayNameGroupModel$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/model/DisplayNameGroupModel$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/sdk/model/DisplayNameGroupModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 1
    .param p1, "accountId"    # J
    .param p3, "displayName"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/datasource/DataGroupModel;-><init>()V

    .line 20
    iput-wide p1, p0, Lcom/alibaba/alimei/sdk/model/DisplayNameGroupModel;->mAccountId:J

    .line 21
    iput-object p3, p0, Lcom/alibaba/alimei/sdk/model/DisplayNameGroupModel;->mDisplayName:Ljava/lang/String;

    .line 22
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/datasource/DataGroupModel;-><init>()V

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/sdk/model/DisplayNameGroupModel;->mAccountId:J

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/DisplayNameGroupModel;->mDisplayName:Ljava/lang/String;

    .line 50
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alibaba/alimei/sdk/model/DisplayNameGroupModel$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/alibaba/alimei/sdk/model/DisplayNameGroupModel$1;

    .prologue
    .line 7
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/model/DisplayNameGroupModel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public getAccountId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/model/DisplayNameGroupModel;->mAccountId:J

    return-wide v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/DisplayNameGroupModel;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public setAccountId(J)V
    .locals 1
    .param p1, "accountId"    # J

    .prologue
    .line 29
    iput-wide p1, p0, Lcom/alibaba/alimei/sdk/model/DisplayNameGroupModel;->mAccountId:J

    .line 30
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/model/DisplayNameGroupModel;->mDisplayName:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "DisplayNameGroupModel [mAccountId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/model/DisplayNameGroupModel;->mAccountId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " , mDisplayName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/DisplayNameGroupModel;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/model/DisplayNameGroupModel;->mAccountId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 43
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/DisplayNameGroupModel;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return-void
.end method
