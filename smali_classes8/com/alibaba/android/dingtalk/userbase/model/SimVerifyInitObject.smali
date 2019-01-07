.class public Lcom/alibaba/android/dingtalk/userbase/model/SimVerifyInitObject;
.super Ljava/lang/Object;
.source "SimVerifyInitObject.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/SimVerifyInitObject;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x35cd3e3b92c8eeaaL


# instance fields
.field public keyParam:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public vendorAccessId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public vendorAccessSecret:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public vendorKey:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/SimVerifyInitObject$1;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/SimVerifyInitObject$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalk/userbase/model/SimVerifyInitObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/SimVerifyInitObject;->vendorKey:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/SimVerifyInitObject;->vendorAccessId:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/SimVerifyInitObject;->vendorAccessSecret:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/SimVerifyInitObject;->keyParam:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public static fromIDLModel(Lcfx;)Lcom/alibaba/android/dingtalk/userbase/model/SimVerifyInitObject;
    .locals 2
    .param p0, "model"    # Lcfx;

    .prologue
    .line 70
    if-nez p0, :cond_0

    .line 71
    const/4 v0, 0x0

    .line 79
    :goto_0
    return-object v0

    .line 73
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/SimVerifyInitObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/SimVerifyInitObject;-><init>()V

    .line 74
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/SimVerifyInitObject;
    iget-object v1, p0, Lcfx;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/SimVerifyInitObject;->vendorKey:Ljava/lang/String;

    .line 75
    iget-object v1, p0, Lcfx;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/SimVerifyInitObject;->vendorAccessId:Ljava/lang/String;

    .line 76
    iget-object v1, p0, Lcfx;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/SimVerifyInitObject;->vendorAccessSecret:Ljava/lang/String;

    .line 77
    iget-object v1, p0, Lcfx;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/SimVerifyInitObject;->keyParam:Ljava/lang/String;

    goto :goto_0
.end method

.method public static fromIDLModelList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcfx;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/SimVerifyInitObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "modelList":Ljava/util/List;, "Ljava/util/List<Lcfx;>;"
    if-nez p0, :cond_1

    .line 96
    const/4 v1, 0x0

    .line 102
    :cond_0
    return-object v1

    .line 98
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v1, "objectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/SimVerifyInitObject;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcfx;

    .line 100
    .local v0, "model":Lcfx;
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/SimVerifyInitObject;->fromIDLModel(Lcfx;)Lcom/alibaba/android/dingtalk/userbase/model/SimVerifyInitObject;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static toIDLModel(Lcom/alibaba/android/dingtalk/userbase/model/SimVerifyInitObject;)Lcfx;
    .locals 2
    .param p0, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/SimVerifyInitObject;

    .prologue
    .line 83
    if-nez p0, :cond_0

    .line 84
    const/4 v0, 0x0

    .line 91
    :goto_0
    return-object v0

    .line 86
    :cond_0
    new-instance v0, Lcfx;

    invoke-direct {v0}, Lcfx;-><init>()V

    .line 87
    .local v0, "model":Lcfx;
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/SimVerifyInitObject;->vendorKey:Ljava/lang/String;

    iput-object v1, v0, Lcfx;->a:Ljava/lang/String;

    .line 88
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/SimVerifyInitObject;->vendorAccessId:Ljava/lang/String;

    iput-object v1, v0, Lcfx;->b:Ljava/lang/String;

    .line 89
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/SimVerifyInitObject;->vendorAccessSecret:Ljava/lang/String;

    iput-object v1, v0, Lcfx;->c:Ljava/lang/String;

    .line 90
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/SimVerifyInitObject;->keyParam:Ljava/lang/String;

    iput-object v1, v0, Lcfx;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public static toIDLModelList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/SimVerifyInitObject;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcfx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "objectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/SimVerifyInitObject;>;"
    if-nez p0, :cond_1

    .line 107
    const/4 v0, 0x0

    .line 113
    :cond_0
    return-object v0

    .line 109
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v0, "modelList":Ljava/util/List;, "Ljava/util/List<Lcfx;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/SimVerifyInitObject;

    .line 111
    .local v1, "object":Lcom/alibaba/android/dingtalk/userbase/model/SimVerifyInitObject;
    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/SimVerifyInitObject;->toIDLModel(Lcom/alibaba/android/dingtalk/userbase/model/SimVerifyInitObject;)Lcfx;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/SimVerifyInitObject;->vendorKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/SimVerifyInitObject;->vendorAccessId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/SimVerifyInitObject;->vendorAccessSecret:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/SimVerifyInitObject;->keyParam:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    return-void
.end method
