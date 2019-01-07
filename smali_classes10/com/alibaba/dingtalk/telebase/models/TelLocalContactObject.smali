.class public Lcom/alibaba/dingtalk/telebase/models/TelLocalContactObject;
.super Ljava/lang/Object;
.source "TelLocalContactObject.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/dingtalk/telebase/models/TelLocalContactObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mCompany:Ljava/lang/String;

.field public mEmail:Ljava/lang/String;

.field public mPhoneNumber:Ljava/lang/String;

.field public mUserName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/alibaba/dingtalk/telebase/models/TelLocalContactObject$1;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/telebase/models/TelLocalContactObject$1;-><init>()V

    sput-object v0, Lcom/alibaba/dingtalk/telebase/models/TelLocalContactObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    if-nez p1, :cond_0

    .line 48
    :goto_0
    return-void

    .line 42
    :cond_0
    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/String;

    .line 43
    .local v0, "infos":[Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 44
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/telebase/models/TelLocalContactObject;->mUserName:Ljava/lang/String;

    .line 45
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/telebase/models/TelLocalContactObject;->mPhoneNumber:Ljava/lang/String;

    .line 46
    const/4 v1, 0x2

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/telebase/models/TelLocalContactObject;->mCompany:Ljava/lang/String;

    .line 47
    const/4 v1, 0x3

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/telebase/models/TelLocalContactObject;->mEmail:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 57
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alibaba/dingtalk/telebase/models/TelLocalContactObject;->mUserName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alibaba/dingtalk/telebase/models/TelLocalContactObject;->mPhoneNumber:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/alibaba/dingtalk/telebase/models/TelLocalContactObject;->mCompany:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/alibaba/dingtalk/telebase/models/TelLocalContactObject;->mEmail:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 58
    return-void
.end method
