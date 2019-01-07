.class public Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;
.super Ljava/lang/Object;
.source "SNPostCreateObject.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0xc408114d933276aL


# instance fields
.field public content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

.field public geoInfo:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;

.field public mentionedUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;",
            ">;"
        }
    .end annotation
.end field

.field public scope:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNScopeObject;

.field public uuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 127
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject$1;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const-class v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNScopeObject;

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;->scope:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNScopeObject;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;->uuid:Ljava/lang/String;

    .line 120
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;->geoInfo:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "jsonArrayStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->fromJsonArray(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;->mentionedUsers:Ljava/util/List;

    .line 125
    :cond_0
    return-void
.end method

.method public static fromIdl(Lbpo;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;
    .locals 2
    .param p0, "model"    # Lbpo;

    .prologue
    .line 32
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 39
    :goto_0
    return-object v0

    .line 33
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;-><init>()V

    .line 34
    .local v0, "result":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;
    iget-object v1, p0, Lbpo;->a:Lcom/alibaba/android/dingtalk/circle/idl/models/SNContentModel;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->fromIdl(Lcom/alibaba/android/dingtalk/circle/idl/models/SNContentModel;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    .line 35
    iget-object v1, p0, Lbpo;->b:Lbpr;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNScopeObject;->fromIdl(Lbpr;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNScopeObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;->scope:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNScopeObject;

    .line 36
    iget-object v1, p0, Lbpo;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;->uuid:Ljava/lang/String;

    .line 37
    iget-object v1, p0, Lbpo;->d:Lcom/alibaba/android/dingtalk/circle/idl/models/SNGeoContentModel;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;->fromIdl(Lcom/alibaba/android/dingtalk/circle/idl/models/SNGeoContentModel;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;->geoInfo:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;

    .line 38
    iget-object v1, p0, Lbpo;->e:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;->fromMentionedUsers(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;->mentionedUsers:Ljava/util/List;

    goto :goto_0
.end method

.method private static fromMentionedUsers(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbps;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "mentionedUsers":Ljava/util/List;, "Ljava/util/List<Lbps;>;"
    invoke-static {p0}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 56
    const/4 v1, 0x0

    .line 69
    :cond_0
    return-object v1

    .line 59
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Lbql;->a(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 61
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbps;

    .line 62
    .local v0, "model":Lbps;
    if-eqz v0, :cond_2

    .line 66
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->fromIdl(Lbps;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static toMentionedUsers(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lbps;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "mentionedUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;>;"
    invoke-static {p0}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 74
    const/4 v1, 0x0

    .line 87
    :cond_0
    return-object v1

    .line 77
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Lbql;->a(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 79
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lbps;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    .line 80
    .local v0, "object":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;
    if-eqz v0, :cond_2

    .line 84
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->toIdl(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;)Lbps;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public toIdl()Lbpo;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 43
    new-instance v0, Lbpo;

    invoke-direct {v0}, Lbpo;-><init>()V

    .line 44
    .local v0, "result":Lbpo;
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->toIdl(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;)Lcom/alibaba/android/dingtalk/circle/idl/models/SNContentModel;

    move-result-object v1

    iput-object v1, v0, Lbpo;->a:Lcom/alibaba/android/dingtalk/circle/idl/models/SNContentModel;

    .line 45
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;->scope:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNScopeObject;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNScopeObject;->toIdl(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNScopeObject;)Lbpr;

    move-result-object v1

    iput-object v1, v0, Lbpo;->b:Lbpr;

    .line 46
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;->uuid:Ljava/lang/String;

    iput-object v1, v0, Lbpo;->c:Ljava/lang/String;

    .line 47
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;->geoInfo:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;

    if-eqz v1, :cond_0

    .line 48
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;->geoInfo:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;->toIdl()Lcom/alibaba/android/dingtalk/circle/idl/models/SNGeoContentModel;

    move-result-object v1

    iput-object v1, v0, Lbpo;->d:Lcom/alibaba/android/dingtalk/circle/idl/models/SNGeoContentModel;

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;->mentionedUsers:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;->toMentionedUsers(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lbpo;->e:Ljava/util/List;

    .line 51
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 98
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 99
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;->scope:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNScopeObject;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 100
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;->uuid:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;->geoInfo:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 102
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;->mentionedUsers:Ljava/util/List;

    invoke-static {v1}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 103
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;->mentionedUsers:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->genJsonArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v0

    .line 104
    .local v0, "jsonArray":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    .end local v0    # "jsonArray":Lorg/json/JSONArray;
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method
