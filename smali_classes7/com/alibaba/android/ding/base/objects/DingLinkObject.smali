.class public Lcom/alibaba/android/ding/base/objects/DingLinkObject;
.super Ljava/lang/Object;
.source "DingLinkObject.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/ding/base/objects/DingLinkObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public authCode:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "authCode"
    .end annotation
.end field

.field public authMediaId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "authMediaId"
    .end annotation
.end field

.field public extension:Ljava/util/Map;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "extension"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public linkUrl:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "linkUrl"
    .end annotation
.end field

.field public picMediaId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "picMediaId"
    .end annotation
.end field

.field public text:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "text"
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "title"
    .end annotation
.end field

.field public type:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "type"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 157
    new-instance v0, Lcom/alibaba/android/ding/base/objects/DingLinkObject$1;

    invoke-direct {v0}, Lcom/alibaba/android/ding/base/objects/DingLinkObject$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->type:I

    .line 70
    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/String;

    .line 71
    .local v0, "s":[Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 72
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->title:Ljava/lang/String;

    .line 73
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->text:Ljava/lang/String;

    .line 74
    const/4 v1, 0x2

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->picMediaId:Ljava/lang/String;

    .line 75
    const/4 v1, 0x3

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->linkUrl:Ljava/lang/String;

    .line 76
    invoke-direct {p0, p1}, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->readFromParcel(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->extension:Ljava/util/Map;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->authMediaId:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->authCode:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/ding/base/objects/idl/DingLinkModel;)V
    .locals 2
    .param p1, "model"    # Lcom/alibaba/android/ding/base/objects/idl/DingLinkModel;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    if-eqz p1, :cond_0

    .line 55
    iget-object v0, p1, Lcom/alibaba/android/ding/base/objects/idl/DingLinkModel;->type:Ljava/lang/Integer;

    .line 1033
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 55
    iput v0, p0, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->type:I

    .line 56
    iget-object v0, p1, Lcom/alibaba/android/ding/base/objects/idl/DingLinkModel;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->title:Ljava/lang/String;

    .line 57
    iget-object v0, p1, Lcom/alibaba/android/ding/base/objects/idl/DingLinkModel;->text:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->text:Ljava/lang/String;

    .line 58
    iget-object v0, p1, Lcom/alibaba/android/ding/base/objects/idl/DingLinkModel;->picMediaId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->picMediaId:Ljava/lang/String;

    .line 59
    iget-object v0, p1, Lcom/alibaba/android/ding/base/objects/idl/DingLinkModel;->linkUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->linkUrl:Ljava/lang/String;

    .line 60
    iget-object v0, p1, Lcom/alibaba/android/ding/base/objects/idl/DingLinkModel;->authMediaId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->authMediaId:Ljava/lang/String;

    .line 61
    iget-object v0, p1, Lcom/alibaba/android/ding/base/objects/idl/DingLinkModel;->authCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->authCode:Ljava/lang/String;

    .line 62
    iget-object v0, p1, Lcom/alibaba/android/ding/base/objects/idl/DingLinkModel;->extension:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 63
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lcom/alibaba/android/ding/base/objects/idl/DingLinkModel;->extension:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->extension:Ljava/util/Map;

    .line 66
    :cond_0
    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/DingLinkObject;
    .locals 5
    .param p0, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 122
    const/4 v3, 0x0

    .line 139
    :goto_0
    return-object v3

    .line 124
    :cond_0
    new-instance v3, Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    invoke-direct {v3}, Lcom/alibaba/android/ding/base/objects/DingLinkObject;-><init>()V

    .line 126
    .local v3, "object":Lcom/alibaba/android/ding/base/objects/DingLinkObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 127
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v4, "type"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->type:I

    .line 128
    const-string/jumbo v4, "title"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->title:Ljava/lang/String;

    .line 129
    const-string/jumbo v4, "text"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->text:Ljava/lang/String;

    .line 130
    const-string/jumbo v4, "picMediaId"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->picMediaId:Ljava/lang/String;

    .line 131
    const-string/jumbo v4, "linkUrl"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->linkUrl:Ljava/lang/String;

    .line 132
    const-string/jumbo v4, "extension"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "extension":Ljava/lang/String;
    invoke-static {v1}, Lcoz;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    iput-object v4, v3, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->extension:Ljava/util/Map;

    .line 134
    const-string/jumbo v4, "authMediaId"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->authMediaId:Ljava/lang/String;

    .line 135
    const-string/jumbo v4, "authCode"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->authCode:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 136
    .end local v1    # "extension":Ljava/lang/String;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private readFromParcel(Landroid/os/Parcel;)Ljava/util/Map;
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 182
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 183
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 184
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 187
    .local v4, "value":Ljava/lang/String;
    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    .end local v1    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method public static toIDLModel(Lcom/alibaba/android/ding/base/objects/DingLinkObject;)Lcom/alibaba/android/ding/base/objects/idl/DingLinkModel;
    .locals 3
    .param p0, "object"    # Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    .prologue
    .line 82
    if-nez p0, :cond_0

    .line 83
    const/4 v0, 0x0

    .line 96
    :goto_0
    return-object v0

    .line 85
    :cond_0
    new-instance v0, Lcom/alibaba/android/ding/base/objects/idl/DingLinkModel;

    invoke-direct {v0}, Lcom/alibaba/android/ding/base/objects/idl/DingLinkModel;-><init>()V

    .line 86
    .local v0, "model":Lcom/alibaba/android/ding/base/objects/idl/DingLinkModel;
    iget v1, p0, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/ding/base/objects/idl/DingLinkModel;->type:Ljava/lang/Integer;

    .line 87
    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/ding/base/objects/idl/DingLinkModel;->title:Ljava/lang/String;

    .line 88
    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->text:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/ding/base/objects/idl/DingLinkModel;->text:Ljava/lang/String;

    .line 89
    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->picMediaId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/ding/base/objects/idl/DingLinkModel;->picMediaId:Ljava/lang/String;

    .line 90
    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->linkUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/ding/base/objects/idl/DingLinkModel;->linkUrl:Ljava/lang/String;

    .line 91
    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->extension:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 92
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->extension:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lcom/alibaba/android/ding/base/objects/idl/DingLinkModel;->extension:Ljava/util/Map;

    .line 94
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->authMediaId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/ding/base/objects/idl/DingLinkModel;->authMediaId:Ljava/lang/String;

    .line 95
    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->authCode:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/ding/base/objects/idl/DingLinkModel;->authCode:Ljava/lang/String;

    goto :goto_0
.end method

.method public static toJson(Lcom/alibaba/android/ding/base/objects/DingLinkObject;)Ljava/lang/String;
    .locals 5
    .param p0, "object"    # Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    .prologue
    .line 100
    if-nez p0, :cond_0

    .line 101
    const-string/jumbo v3, ""

    .line 117
    :goto_0
    return-object v3

    .line 103
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 105
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v3, "type"

    iget v4, p0, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->type:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 106
    const-string/jumbo v3, "title"

    iget-object v4, p0, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->title:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    const-string/jumbo v3, "text"

    iget-object v4, p0, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->text:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    const-string/jumbo v3, "picMediaId"

    iget-object v4, p0, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->picMediaId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    const-string/jumbo v3, "linkUrl"

    iget-object v4, p0, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->linkUrl:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    iget-object v3, p0, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->extension:Ljava/util/Map;

    invoke-static {v3}, Lcoz;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "extension":Ljava/lang/String;
    const-string/jumbo v3, "extension"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    const-string/jumbo v3, "authMediaId"

    iget-object v4, p0, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->authMediaId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    const-string/jumbo v3, "authCode"

    iget-object v4, p0, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->authCode:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .end local v1    # "extension":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 149
    iget v0, p0, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->title:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->text:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->picMediaId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->linkUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->extension:Ljava/util/Map;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->writeToParcel(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 153
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->authMediaId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->authCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;Ljava/util/Map;)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 170
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 171
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 173
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 177
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    :cond_1
    return-void
.end method
