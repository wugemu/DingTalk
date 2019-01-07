.class public Lcom/alibaba/alimei/sdk/model/ExtentionDataModel;
.super Lcom/alibaba/alimei/framework/model/AbsBaseModel;
.source "ExtentionDataModel.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/sdk/model/ExtentionDataModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public atList:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "x-aliyun-message-at"
    .end annotation
.end field

.field public imThrough:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "x-aliyun-mail-through-im"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/alibaba/alimei/sdk/model/ExtentionDataModel$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/model/ExtentionDataModel$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/sdk/model/ExtentionDataModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/model/AbsBaseModel;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/model/AbsBaseModel;-><init>()V

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/ExtentionDataModel;->atList:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/ExtentionDataModel;->imThrough:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "atList"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/model/AbsBaseModel;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/model/ExtentionDataModel;->atList:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 73
    if-ne p1, p0, :cond_1

    .line 74
    const/4 v1, 0x1

    .line 85
    :cond_0
    :goto_0
    return v1

    .line 76
    :cond_1
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/alibaba/alimei/sdk/model/AddressModel;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 80
    check-cast v0, Lcom/alibaba/alimei/sdk/model/AddressModel;

    .line 81
    .local v0, "model":Lcom/alibaba/alimei/sdk/model/AddressModel;
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/model/ExtentionDataModel;->atList:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 82
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/ExtentionDataModel;->atList:Ljava/lang/String;

    iget-object v2, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 66
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/ExtentionDataModel;->atList:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int/lit8 v1, v1, 0x1f

    iget-object v3, p0, Lcom/alibaba/alimei/sdk/model/ExtentionDataModel;->imThrough:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 67
    :goto_1
    add-int v0, v1, v2

    .line 68
    .local v0, "result":I
    return v0

    .line 66
    .end local v0    # "result":I
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/ExtentionDataModel;->atList:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/model/ExtentionDataModel;->imThrough:Ljava/lang/String;

    .line 67
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ExtentionDataModel [atList="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/ExtentionDataModel;->atList:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "][imThrough="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/ExtentionDataModel;->imThrough:Ljava/lang/String;

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
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/ExtentionDataModel;->atList:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/ExtentionDataModel;->imThrough:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    return-void
.end method
