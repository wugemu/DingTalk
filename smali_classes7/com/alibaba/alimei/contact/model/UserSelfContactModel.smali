.class public Lcom/alibaba/alimei/contact/model/UserSelfContactModel;
.super Lcom/alibaba/alimei/framework/model/AbsBaseModel;
.source "UserSelfContactModel.java"

# interfaces
.implements Lyd;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/contact/model/UserSelfContactModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public aliases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public avatarAddr:Ljava/lang/String;

.field public defName:Ljava/lang/String;

.field public defSendMail:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public extend:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lsw;",
            ">;"
        }
    .end annotation
.end field

.field private id:J

.field public name:Ljava/lang/String;

.field public popAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/contact/PopAccounts;",
            ">;"
        }
    .end annotation
.end field

.field public serverId:Ljava/lang/String;

.field public smtpAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/contact/SmtpAccounts;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/alibaba/alimei/contact/model/UserSelfContactModel$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/contact/model/UserSelfContactModel$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/model/AbsBaseModel;-><init>()V

    .line 25
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->id:J

    .line 29
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/model/AbsBaseModel;-><init>()V

    .line 25
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->id:J

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->id:J

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->serverId:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->name:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->email:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->avatarAddr:Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->aliases:Ljava/util/List;

    .line 73
    iget-object v0, p0, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->aliases:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->popAccounts:Ljava/util/List;

    .line 75
    iget-object v0, p0, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->popAccounts:Ljava/util/List;

    const-class v1, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->smtpAccounts:Ljava/util/List;

    .line 77
    iget-object v0, p0, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->smtpAccounts:Ljava/util/List;

    const-class v1, Lcom/alibaba/alimei/restfulapi/data/contact/UserSelfContact;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->extend:Ljava/util/List;

    .line 79
    iget-object v0, p0, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->extend:Ljava/util/List;

    const-class v1, Lsw;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 80
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alibaba/alimei/contact/model/UserSelfContactModel$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/alibaba/alimei/contact/model/UserSelfContactModel$1;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->id:J

    return-wide v0
.end method

.method public setId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 32
    iput-wide p1, p0, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->id:J

    .line 33
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
    .line 54
    invoke-virtual {p0}, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->getId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 55
    iget-object v0, p0, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->serverId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->email:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->avatarAddr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->aliases:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 60
    iget-object v0, p0, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->popAccounts:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 61
    iget-object v0, p0, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->smtpAccounts:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 62
    iget-object v0, p0, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->extend:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 63
    return-void
.end method
