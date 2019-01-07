.class public Lcom/alibaba/dingtalk/scanbase/model/RecognizeResponseObject;
.super Ljava/lang/Object;
.source "RecognizeResponseObject.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/dingtalk/scanbase/model/RecognizeResponseObject;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x5c02ddcbf8799984L


# instance fields
.field public mediaId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public results:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/scanbase/model/CardInfoObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lcom/alibaba/dingtalk/scanbase/model/RecognizeResponseObject$1;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/scanbase/model/RecognizeResponseObject$1;-><init>()V

    sput-object v0, Lcom/alibaba/dingtalk/scanbase/model/RecognizeResponseObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/scanbase/model/RecognizeResponseObject;->mediaId:Ljava/lang/String;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/scanbase/model/RecognizeResponseObject;->results:Ljava/util/List;

    .line 98
    iget-object v0, p0, Lcom/alibaba/dingtalk/scanbase/model/RecognizeResponseObject;->results:Ljava/util/List;

    const-class v1, Lcom/alibaba/dingtalk/scanbase/model/CardInfoObject;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 99
    return-void
.end method

.method public static fromIDLModel(Lcom/alibaba/dingtalk/scanbase/idl/model/RecognizeResponseModel;)Lcom/alibaba/dingtalk/scanbase/model/RecognizeResponseObject;
    .locals 5
    .param p0, "model"    # Lcom/alibaba/dingtalk/scanbase/idl/model/RecognizeResponseModel;

    .prologue
    .line 51
    if-nez p0, :cond_1

    .line 52
    const/4 v1, 0x0

    .line 63
    :cond_0
    return-object v1

    .line 55
    :cond_1
    new-instance v1, Lcom/alibaba/dingtalk/scanbase/model/RecognizeResponseObject;

    invoke-direct {v1}, Lcom/alibaba/dingtalk/scanbase/model/RecognizeResponseObject;-><init>()V

    .line 56
    .local v1, "object":Lcom/alibaba/dingtalk/scanbase/model/RecognizeResponseObject;
    iget-object v2, p0, Lcom/alibaba/dingtalk/scanbase/idl/model/RecognizeResponseModel;->infos:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 57
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/alibaba/dingtalk/scanbase/idl/model/RecognizeResponseModel;->infos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v1, Lcom/alibaba/dingtalk/scanbase/model/RecognizeResponseObject;->results:Ljava/util/List;

    .line 59
    iget-object v2, p0, Lcom/alibaba/dingtalk/scanbase/idl/model/RecognizeResponseModel;->infos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/scanbase/idl/model/CardInfo;

    .line 60
    .local v0, "card":Lcom/alibaba/dingtalk/scanbase/idl/model/CardInfo;
    iget-object v3, v1, Lcom/alibaba/dingtalk/scanbase/model/RecognizeResponseObject;->results:Ljava/util/List;

    invoke-static {v0}, Lcom/alibaba/dingtalk/scanbase/model/CardInfoObject;->fromIDLModel(Lcom/alibaba/dingtalk/scanbase/idl/model/CardInfo;)Lcom/alibaba/dingtalk/scanbase/model/CardInfoObject;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public toIDLModel()Lcom/alibaba/dingtalk/scanbase/idl/model/RecognizeResponseModel;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 67
    new-instance v0, Lcom/alibaba/dingtalk/scanbase/idl/model/RecognizeResponseModel;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/scanbase/idl/model/RecognizeResponseModel;-><init>()V

    .line 69
    .local v0, "model":Lcom/alibaba/dingtalk/scanbase/idl/model/RecognizeResponseModel;
    iget-object v2, p0, Lcom/alibaba/dingtalk/scanbase/model/RecognizeResponseObject;->results:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/dingtalk/scanbase/model/RecognizeResponseObject;->results:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 70
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/alibaba/dingtalk/scanbase/model/RecognizeResponseObject;->results:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v0, Lcom/alibaba/dingtalk/scanbase/idl/model/RecognizeResponseModel;->infos:Ljava/util/List;

    .line 72
    iget-object v2, p0, Lcom/alibaba/dingtalk/scanbase/model/RecognizeResponseObject;->results:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/scanbase/model/CardInfoObject;

    .line 73
    .local v1, "object":Lcom/alibaba/dingtalk/scanbase/model/CardInfoObject;
    iget-object v3, v0, Lcom/alibaba/dingtalk/scanbase/idl/model/RecognizeResponseModel;->infos:Ljava/util/List;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/scanbase/model/CardInfoObject;->toIDLModel()Lcom/alibaba/dingtalk/scanbase/idl/model/CardInfo;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 77
    .end local v1    # "object":Lcom/alibaba/dingtalk/scanbase/model/CardInfoObject;
    :cond_0
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alibaba/dingtalk/scanbase/model/RecognizeResponseObject;->mediaId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/alibaba/dingtalk/scanbase/model/RecognizeResponseObject;->results:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 90
    return-void
.end method
