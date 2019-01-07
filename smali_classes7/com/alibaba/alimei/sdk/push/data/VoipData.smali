.class public Lcom/alibaba/alimei/sdk/push/data/VoipData;
.super Lcom/alibaba/alimei/sdk/push/data/PushData;
.source "VoipData.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/sdk/push/data/VoipData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lcom/alibaba/alimei/sdk/push/data/VoipData$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/push/data/VoipData$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/sdk/push/data/VoipData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/alibaba/alimei/sdk/push/data/PushData;-><init>()V

    .line 29
    const-string/jumbo v0, "900"

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/push/data/VoipData;->setType(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/alibaba/alimei/sdk/push/data/PushData;-><init>()V

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/push/data/VoipData;->setType(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/push/data/VoipData;->u:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/push/data/VoipData;->c:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/push/data/VoipData;->v:Ljava/lang/String;

    .line 70
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alibaba/alimei/sdk/push/data/VoipData$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/alibaba/alimei/sdk/push/data/VoipData$1;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/push/data/VoipData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public getC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/push/data/VoipData;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getU()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/push/data/VoipData;->u:Ljava/lang/String;

    return-object v0
.end method

.method public getV()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/push/data/VoipData;->v:Ljava/lang/String;

    return-object v0
.end method

.method public setC(Ljava/lang/String;)V
    .locals 0
    .param p1, "c"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/push/data/VoipData;->c:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setU(Ljava/lang/String;)V
    .locals 0
    .param p1, "u"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/push/data/VoipData;->u:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setV(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/push/data/VoipData;->v:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/push/data/VoipData;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/push/data/VoipData;->u:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/push/data/VoipData;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/push/data/VoipData;->v:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    return-void
.end method
