.class public Lcom/alibaba/alimei/framework/model/WebTokenModel;
.super Lcom/alibaba/alimei/framework/model/AbsBaseModel;
.source "WebTokenModel.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/framework/model/WebTokenModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private expireTime:J

.field private webToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/alibaba/alimei/framework/model/WebTokenModel$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/framework/model/WebTokenModel$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/framework/model/WebTokenModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/model/AbsBaseModel;-><init>()V

    .line 22
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/model/AbsBaseModel;-><init>()V

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/framework/model/WebTokenModel;->webToken:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/framework/model/WebTokenModel;->expireTime:J

    .line 50
    return-void
.end method


# virtual methods
.method public getExpireTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/alibaba/alimei/framework/model/WebTokenModel;->expireTime:J

    return-wide v0
.end method

.method public getWebToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alibaba/alimei/framework/model/WebTokenModel;->webToken:Ljava/lang/String;

    return-object v0
.end method

.method public setExpireTime(J)V
    .locals 1
    .param p1, "expireTime"    # J

    .prologue
    .line 37
    iput-wide p1, p0, Lcom/alibaba/alimei/framework/model/WebTokenModel;->expireTime:J

    .line 38
    return-void
.end method

.method public setWebToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "webToken"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/alibaba/alimei/framework/model/WebTokenModel;->webToken:Ljava/lang/String;

    .line 30
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
    .line 42
    iget-object v0, p0, Lcom/alibaba/alimei/framework/model/WebTokenModel;->webToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    iget-wide v0, p0, Lcom/alibaba/alimei/framework/model/WebTokenModel;->expireTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 44
    return-void
.end method
