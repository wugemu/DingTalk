.class public Lcom/alibaba/alimei/oauth/OAuthRequestClient;
.super Lcom/alibaba/alimei/framework/model/AbsBaseModel;
.source "OAuthRequestClient.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/oauth/OAuthRequestClient;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public clientId:Ljava/lang/String;

.field public lang:Ljava/lang/String;

.field public loginAccount:Ljava/lang/String;

.field public loginAccountRange:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public modifyAccount:Z

.field public redirectUri:Ljava/lang/String;

.field public state:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lcom/alibaba/alimei/oauth/OAuthRequestClient$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/oauth/OAuthRequestClient$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/oauth/OAuthRequestClient;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/model/AbsBaseModel;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/oauth/OAuthRequestClient;->modifyAccount:Z

    .line 54
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/model/AbsBaseModel;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/oauth/OAuthRequestClient;->modifyAccount:Z

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/oauth/OAuthRequestClient;->clientId:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/oauth/OAuthRequestClient;->state:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/oauth/OAuthRequestClient;->loginAccount:Ljava/lang/String;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/oauth/OAuthRequestClient;->loginAccountRange:Ljava/util/List;

    .line 78
    iget-object v0, p0, Lcom/alibaba/alimei/oauth/OAuthRequestClient;->loginAccountRange:Ljava/util/List;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/oauth/OAuthRequestClient;->getBooleanValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/alimei/oauth/OAuthRequestClient;->modifyAccount:Z

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/oauth/OAuthRequestClient;->redirectUri:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/oauth/OAuthRequestClient;->lang:Ljava/lang/String;

    .line 82
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alibaba/alimei/oauth/OAuthRequestClient$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/alibaba/alimei/oauth/OAuthRequestClient$1;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/oauth/OAuthRequestClient;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "state"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/model/AbsBaseModel;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/oauth/OAuthRequestClient;->modifyAccount:Z

    .line 57
    iput-object p1, p0, Lcom/alibaba/alimei/oauth/OAuthRequestClient;->clientId:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/alibaba/alimei/oauth/OAuthRequestClient;->state:Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alibaba/alimei/oauth/OAuthRequestClient;->clientId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/alibaba/alimei/oauth/OAuthRequestClient;->state:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/alibaba/alimei/oauth/OAuthRequestClient;->loginAccount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/alibaba/alimei/oauth/OAuthRequestClient;->loginAccountRange:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 67
    iget-boolean v0, p0, Lcom/alibaba/alimei/oauth/OAuthRequestClient;->modifyAccount:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/oauth/OAuthRequestClient;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget-object v0, p0, Lcom/alibaba/alimei/oauth/OAuthRequestClient;->redirectUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/alibaba/alimei/oauth/OAuthRequestClient;->lang:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    return-void
.end method
