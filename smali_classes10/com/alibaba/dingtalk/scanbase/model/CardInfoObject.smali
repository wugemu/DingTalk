.class public Lcom/alibaba/dingtalk/scanbase/model/CardInfoObject;
.super Ljava/lang/Object;
.source "CardInfoObject.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/dingtalk/scanbase/model/CardInfoObject;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x299d705c01cb33c1L


# instance fields
.field public key:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public value:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    new-instance v0, Lcom/alibaba/dingtalk/scanbase/model/CardInfoObject$1;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/scanbase/model/CardInfoObject$1;-><init>()V

    sput-object v0, Lcom/alibaba/dingtalk/scanbase/model/CardInfoObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/scanbase/model/CardInfoObject;->key:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/scanbase/model/CardInfoObject;->value:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public static fromIDLModel(Lcom/alibaba/dingtalk/scanbase/idl/model/CardInfo;)Lcom/alibaba/dingtalk/scanbase/model/CardInfoObject;
    .locals 2
    .param p0, "model"    # Lcom/alibaba/dingtalk/scanbase/idl/model/CardInfo;

    .prologue
    .line 42
    if-nez p0, :cond_0

    .line 43
    const/4 v0, 0x0

    .line 49
    :goto_0
    return-object v0

    .line 46
    :cond_0
    new-instance v0, Lcom/alibaba/dingtalk/scanbase/model/CardInfoObject;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/scanbase/model/CardInfoObject;-><init>()V

    .line 47
    .local v0, "object":Lcom/alibaba/dingtalk/scanbase/model/CardInfoObject;
    iget-object v1, p0, Lcom/alibaba/dingtalk/scanbase/idl/model/CardInfo;->key:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/dingtalk/scanbase/model/CardInfoObject;->key:Ljava/lang/String;

    .line 48
    iget-object v1, p0, Lcom/alibaba/dingtalk/scanbase/idl/model/CardInfo;->value:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/dingtalk/scanbase/model/CardInfoObject;->value:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public toIDLModel()Lcom/alibaba/dingtalk/scanbase/idl/model/CardInfo;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 53
    new-instance v0, Lcom/alibaba/dingtalk/scanbase/idl/model/CardInfo;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/scanbase/idl/model/CardInfo;-><init>()V

    .line 54
    .local v0, "model":Lcom/alibaba/dingtalk/scanbase/idl/model/CardInfo;
    iget-object v1, p0, Lcom/alibaba/dingtalk/scanbase/model/CardInfoObject;->key:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/dingtalk/scanbase/idl/model/CardInfo;->key:Ljava/lang/String;

    .line 55
    iget-object v1, p0, Lcom/alibaba/dingtalk/scanbase/model/CardInfoObject;->value:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/dingtalk/scanbase/idl/model/CardInfo;->value:Ljava/lang/String;

    .line 56
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alibaba/dingtalk/scanbase/model/CardInfoObject;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/alibaba/dingtalk/scanbase/model/CardInfoObject;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    return-void
.end method
