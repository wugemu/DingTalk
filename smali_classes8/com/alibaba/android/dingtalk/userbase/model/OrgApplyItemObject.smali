.class public Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;
.super Ljava/lang/Object;
.source "OrgApplyItemObject.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;",
            ">;"
        }
    .end annotation
.end field

.field public static final PLAIN_TEXT_BODY_KEY:Ljava/lang/String; = "value"

.field public static final PLAIN_TEXT_KEY_KEY:Ljava/lang/String; = "key"

.field public static final TYPE_IMAGE_GROUP:I = 0x1

.field public static final TYPE_PLAIN_TEXT:I = 0x0

.field private static final serialVersionUID:J = -0x6b45926c6647f120L


# instance fields
.field public bodyJson:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public type:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject$1;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;->type:I

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;->bodyJson:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public static fromIDLModel(Lcei;)Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;
    .locals 3
    .param p0, "model"    # Lcei;

    .prologue
    .line 52
    if-nez p0, :cond_0

    .line 53
    const/4 v0, 0x0

    .line 59
    :goto_0
    return-object v0

    .line 55
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;-><init>()V

    .line 56
    .local v0, "itemObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;
    iget-object v1, p0, Lcei;->a:Ljava/lang/Integer;

    .line 1033
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 56
    iput v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;->type:I

    .line 57
    iget-object v1, p0, Lcei;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;->bodyJson:Ljava/lang/String;

    goto :goto_0
.end method

.method public static fromIDLModelList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcei;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "modelList":Ljava/util/List;, "Ljava/util/List<Lcei;>;"
    if-nez p0, :cond_1

    .line 74
    const/4 v0, 0x0

    .line 81
    :cond_0
    return-object v0

    .line 77
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v0, "authOrgList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcei;

    .line 79
    .local v1, "model":Lcei;
    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;->fromIDLModel(Lcei;)Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static toIDLModel(Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;)Lcei;
    .locals 2
    .param p0, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;

    .prologue
    .line 63
    if-nez p0, :cond_0

    .line 64
    const/4 v0, 0x0

    .line 69
    :goto_0
    return-object v0

    .line 66
    :cond_0
    new-instance v0, Lcei;

    invoke-direct {v0}, Lcei;-><init>()V

    .line 67
    .local v0, "orgApplyItemModel":Lcei;
    iget v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcei;->a:Ljava/lang/Integer;

    .line 68
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;->bodyJson:Ljava/lang/String;

    iput-object v1, v0, Lcei;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public static toIDLModelList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcei;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "objectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;>;"
    if-nez p0, :cond_1

    .line 86
    const/4 v0, 0x0

    .line 93
    :cond_0
    return-object v0

    .line 89
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v0, "authOrgList":Ljava/util/List;, "Ljava/util/List<Lcei;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;

    .line 91
    .local v1, "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;
    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;->toIDLModel(Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;)Lcei;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 103
    iget v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;->bodyJson:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    return-void
.end method
