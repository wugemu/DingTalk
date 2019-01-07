.class public Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;
.super Ljava/lang/Object;
.source "CirclePostCreateObject.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0xc408114d933276aL


# instance fields
.field public content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public geoInfo:Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public mentionedUsers:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;",
            ">;"
        }
    .end annotation
.end field

.field public scope:Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public uuid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 136
    new-instance v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject$1;

    invoke-direct {v0}, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const-class v1, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    iput-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;

    iput-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->scope:Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->uuid:Ljava/lang/String;

    .line 129
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;

    iput-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->geoInfo:Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "jsonArrayStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 132
    invoke-static {v0}, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->fromJsonArray(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->mentionedUsers:Ljava/util/List;

    .line 134
    :cond_0
    return-void
.end method

.method public static fromIdl(Lfem;)Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;
    .locals 2
    .param p0, "model"    # Lfem;

    .prologue
    .line 39
    if-nez p0, :cond_0

    .line 40
    const/4 v0, 0x0

    .line 48
    :goto_0
    return-object v0

    .line 42
    :cond_0
    new-instance v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;

    invoke-direct {v0}, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;-><init>()V

    .line 43
    .local v0, "result":Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;
    iget-object v1, p0, Lfem;->a:Lfef;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->fromIdl(Lfef;)Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    .line 44
    iget-object v1, p0, Lfem;->b:Lfep;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;->fromIdl(Lfep;)Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->scope:Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;

    .line 45
    iget-object v1, p0, Lfem;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->uuid:Ljava/lang/String;

    .line 46
    iget-object v1, p0, Lfem;->d:Lfeg;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;->fromIdl(Lfeg;)Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->geoInfo:Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;

    .line 47
    iget-object v1, p0, Lfem;->e:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->fromMentionedUsers(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->mentionedUsers:Ljava/util/List;

    goto :goto_0
.end method

.method private static fromMentionedUsers(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lfeq;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "mentionedUsers":Ljava/util/List;, "Ljava/util/List<Lfeq;>;"
    invoke-static {p0}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 65
    const/4 v1, 0x0

    .line 78
    :cond_0
    return-object v1

    .line 68
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Lffi;->a(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 70
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfeq;

    .line 71
    .local v0, "model":Lfeq;
    if-eqz v0, :cond_2

    .line 75
    invoke-static {v0}, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->fromIdl(Lfeq;)Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

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
            "Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lfeq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "mentionedUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;>;"
    invoke-static {p0}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 83
    const/4 v1, 0x0

    .line 96
    :cond_0
    return-object v1

    .line 86
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Lffi;->a(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 88
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lfeq;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    .line 89
    .local v0, "object":Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;
    if-eqz v0, :cond_2

    .line 93
    invoke-static {v0}, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->toIdl(Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;)Lfeq;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public toIdl()Lfem;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 52
    new-instance v0, Lfem;

    invoke-direct {v0}, Lfem;-><init>()V

    .line 53
    .local v0, "result":Lfem;
    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->toIdl(Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;)Lfef;

    move-result-object v1

    iput-object v1, v0, Lfem;->a:Lfef;

    .line 54
    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->scope:Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;->toIdl(Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;)Lfep;

    move-result-object v1

    iput-object v1, v0, Lfem;->b:Lfep;

    .line 55
    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->uuid:Ljava/lang/String;

    iput-object v1, v0, Lfem;->c:Ljava/lang/String;

    .line 56
    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->geoInfo:Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->geoInfo:Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;

    invoke-virtual {v1}, Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;->toIdl()Lfeg;

    move-result-object v1

    iput-object v1, v0, Lfem;->d:Lfeg;

    .line 59
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->mentionedUsers:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->toMentionedUsers(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lfem;->e:Ljava/util/List;

    .line 60
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 107
    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 108
    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->scope:Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 109
    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->uuid:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->geoInfo:Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 111
    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->mentionedUsers:Ljava/util/List;

    invoke-static {v1}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 112
    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->mentionedUsers:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->genJsonArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v0

    .line 113
    .local v0, "jsonArray":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    .end local v0    # "jsonArray":Lorg/json/JSONArray;
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method
