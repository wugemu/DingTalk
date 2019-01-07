.class public Lcom/alibaba/alimei/sdk/model/FrequentContactModel;
.super Lcom/alibaba/alimei/framework/model/AbsBaseModel;
.source "FrequentContactModel.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FrequentContactModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private displayName:Ljava/lang/String;

.field private mailAddress:Ljava/lang/String;

.field private modifyTime:J

.field private pinyinAll:Ljava/lang/String;

.field private pinyinInitial:Ljava/lang/String;

.field private useCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lcom/alibaba/alimei/sdk/model/FrequentContactModel$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/model/FrequentContactModel$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/sdk/model/FrequentContactModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/model/AbsBaseModel;-><init>()V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/model/AbsBaseModel;-><init>()V

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/FrequentContactModel;->displayName:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/FrequentContactModel;->mailAddress:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/FrequentContactModel;->pinyinAll:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/FrequentContactModel;->pinyinInitial:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/sdk/model/FrequentContactModel;->useCount:I

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/sdk/model/FrequentContactModel;->modifyTime:J

    .line 94
    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/FrequentContactModel;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getMailAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/FrequentContactModel;->mailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getModifyTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/model/FrequentContactModel;->modifyTime:J

    return-wide v0
.end method

.method public getPinyinAll()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/FrequentContactModel;->pinyinAll:Ljava/lang/String;

    return-object v0
.end method

.method public getPinyinInitial()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/FrequentContactModel;->pinyinInitial:Ljava/lang/String;

    return-object v0
.end method

.method public getUseCount()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/FrequentContactModel;->useCount:I

    return v0
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/model/FrequentContactModel;->displayName:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setMailAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "mailAddress"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/model/FrequentContactModel;->mailAddress:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setModifyTime(J)V
    .locals 1
    .param p1, "modifyTime"    # J

    .prologue
    .line 70
    iput-wide p1, p0, Lcom/alibaba/alimei/sdk/model/FrequentContactModel;->modifyTime:J

    .line 71
    return-void
.end method

.method public setPinyinAll(Ljava/lang/String;)V
    .locals 0
    .param p1, "pinyinAll"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/model/FrequentContactModel;->pinyinAll:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setPinyinInitial(Ljava/lang/String;)V
    .locals 0
    .param p1, "pinyinInitial"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/model/FrequentContactModel;->pinyinInitial:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setUseCount(I)V
    .locals 0
    .param p1, "useCount"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/alibaba/alimei/sdk/model/FrequentContactModel;->useCount:I

    .line 63
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/FrequentContactModel;->displayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/FrequentContactModel;->mailAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/FrequentContactModel;->pinyinAll:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/FrequentContactModel;->pinyinInitial:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/FrequentContactModel;->useCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/model/FrequentContactModel;->modifyTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 85
    return-void
.end method
