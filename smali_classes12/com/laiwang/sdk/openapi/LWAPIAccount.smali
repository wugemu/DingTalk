.class public Lcom/laiwang/sdk/openapi/LWAPIAccount;
.super Ljava/lang/Object;
.source "LWAPIAccount.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/laiwang/sdk/openapi/LWAPIAccount;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private lwapiClassname:Ljava/lang/String;

.field private lwapiRandomKey:I

.field private lwapiSecret:Ljava/lang/String;

.field private lwapiToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/laiwang/sdk/openapi/LWAPIAccount$1;

    invoke-direct {v0}, Lcom/laiwang/sdk/openapi/LWAPIAccount$1;-><init>()V

    sput-object v0, Lcom/laiwang/sdk/openapi/LWAPIAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p0, p1}, Lcom/laiwang/sdk/openapi/LWAPIAccount;->readFromParcel(Landroid/os/Parcel;)V

    .line 24
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/laiwang/sdk/openapi/LWAPIAccount;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/laiwang/sdk/openapi/LWAPIAccount;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public getLwapiClassname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/laiwang/sdk/openapi/LWAPIAccount;->lwapiClassname:Ljava/lang/String;

    return-object v0
.end method

.method public getLwapiRandomKey()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/laiwang/sdk/openapi/LWAPIAccount;->lwapiRandomKey:I

    return v0
.end method

.method public getLwapiSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/laiwang/sdk/openapi/LWAPIAccount;->lwapiSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getLwapiToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/laiwang/sdk/openapi/LWAPIAccount;->lwapiToken:Ljava/lang/String;

    return-object v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "prev"    # Landroid/os/Parcel;

    .prologue
    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/laiwang/sdk/openapi/LWAPIAccount;->lwapiRandomKey:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/sdk/openapi/LWAPIAccount;->lwapiSecret:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/sdk/openapi/LWAPIAccount;->lwapiToken:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/sdk/openapi/LWAPIAccount;->lwapiClassname:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setLwapiClassname(Ljava/lang/String;)V
    .locals 0
    .param p1, "lwapiClassname"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/laiwang/sdk/openapi/LWAPIAccount;->lwapiClassname:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setLwapiRandomKey(I)V
    .locals 0
    .param p1, "lwapiRandomKey"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/laiwang/sdk/openapi/LWAPIAccount;->lwapiRandomKey:I

    .line 58
    return-void
.end method

.method public setLwapiSecret(Ljava/lang/String;)V
    .locals 0
    .param p1, "lwapiSecret"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/laiwang/sdk/openapi/LWAPIAccount;->lwapiSecret:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setLwapiToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "lwapiToken"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/laiwang/sdk/openapi/LWAPIAccount;->lwapiToken:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 85
    iget v0, p0, Lcom/laiwang/sdk/openapi/LWAPIAccount;->lwapiRandomKey:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget-object v0, p0, Lcom/laiwang/sdk/openapi/LWAPIAccount;->lwapiSecret:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/laiwang/sdk/openapi/LWAPIAccount;->lwapiToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/laiwang/sdk/openapi/LWAPIAccount;->lwapiClassname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    return-void
.end method
