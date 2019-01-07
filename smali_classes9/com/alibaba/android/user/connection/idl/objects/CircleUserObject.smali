.class public Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;
.super Ljava/lang/Object;
.source "CircleUserObject.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_NICK:Ljava/lang/String; = "nick"

.field private static final KEY_TAG:Ljava/lang/String; = "tag"

.field private static final KEY_UID:Ljava/lang/String; = "uid"

.field private static final serialVersionUID:J = -0x548435166f1b72f4L


# instance fields
.field public nick:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public transient profileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

.field public tag:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public uid:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 182
    new-instance v0, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject$1;

    invoke-direct {v0}, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(JJLjava/lang/String;)V
    .locals 1
    .param p1, "uid"    # J
    .param p3, "tag"    # J
    .param p5, "nick"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-wide p1, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->uid:J

    .line 50
    iput-wide p3, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->tag:J

    .line 51
    iput-object p5, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->nick:Ljava/lang/String;

    .line 52
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->uid:J

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->tag:J

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->nick:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public static fromIdl(Lfeq;)Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;
    .locals 6
    .param p0, "model"    # Lfeq;

    .prologue
    const-wide/16 v4, 0x0

    .line 55
    if-nez p0, :cond_0

    .line 56
    const/4 v0, 0x0

    .line 62
    :goto_0
    return-object v0

    .line 58
    :cond_0
    new-instance v0, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    invoke-direct {v0}, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;-><init>()V

    .line 59
    .local v0, "object":Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;
    iget-object v1, p0, Lfeq;->a:Ljava/lang/Long;

    .line 1044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 59
    iput-wide v2, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->uid:J

    .line 60
    iget-object v1, p0, Lfeq;->b:Ljava/lang/Long;

    .line 2044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 60
    iput-wide v2, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->tag:J

    .line 61
    iget-object v1, p0, Lfeq;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->nick:Ljava/lang/String;

    goto :goto_0
.end method

.method public static fromIdl(Ljava/util/List;)Ljava/util/List;
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
    .line 135
    .local p0, "models":Ljava/util/List;, "Ljava/util/List<Lfeq;>;"
    invoke-static {p0}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 136
    const/4 v1, 0x0

    .line 149
    :cond_0
    return-object v1

    .line 139
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 141
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

    .line 142
    .local v0, "model":Lfeq;
    if-eqz v0, :cond_2

    .line 146
    invoke-static {v0}, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->fromIdl(Lfeq;)Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static fromJsonArray(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p0, "jsonArrayStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 85
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v5, v6

    .line 107
    :cond_0
    :goto_0
    return-object v5

    .line 90
    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 91
    .local v2, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 92
    .local v3, "len":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 93
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 94
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 95
    .local v4, "object":Lorg/json/JSONObject;
    if-eqz v4, :cond_2

    .line 99
    invoke-static {v4}, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->fromJsonObjUnChecked(Lorg/json/JSONObject;)Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 103
    .end local v1    # "i":I
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "len":I
    .end local v4    # "object":Lorg/json/JSONObject;
    .end local v5    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;>;"
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    .line 3060
    const/4 v8, 0x0

    invoke-static {v8, v7}, Lffe;->a(ZLjava/lang/String;)V

    move-object v5, v6

    .line 107
    goto :goto_0
.end method

.method private static fromJsonObjUnChecked(Lorg/json/JSONObject;)Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;
    .locals 7
    .param p0, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 128
    const-string/jumbo v0, "uid"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 129
    .local v2, "uid":J
    const-string/jumbo v0, "tag"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 130
    .local v4, "tag":J
    const-string/jumbo v0, "nick"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 131
    .local v6, "nick":Ljava/lang/String;
    new-instance v1, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;-><init>(JJLjava/lang/String;)V

    return-object v1
.end method

.method public static genJsonArray(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .local p0, "userObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;>;"
    const/4 v5, 0x0

    .line 66
    invoke-static {p0}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v2, v5

    .line 81
    :cond_0
    :goto_0
    return-object v2

    .line 70
    :cond_1
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 71
    .local v2, "jsonArray":Lorg/json/JSONArray;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 73
    .local v3, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 74
    :try_start_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    invoke-static {v4}, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->genJsonObj(Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    .line 2060
    const/4 v6, 0x0

    invoke-static {v6, v4}, Lffe;->a(ZLjava/lang/String;)V

    move-object v2, v5

    .line 81
    goto :goto_0
.end method

.method private static genJsonObj(Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;)Lorg/json/JSONObject;
    .locals 6
    .param p0, "userObject"    # Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    .prologue
    const/4 v2, 0x0

    .line 111
    if-nez p0, :cond_0

    move-object v1, v2

    .line 124
    :goto_0
    return-object v1

    .line 115
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 117
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v3, "uid"

    iget-wide v4, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->uid:J

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 118
    const-string/jumbo v3, "tag"

    iget-wide v4, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->tag:J

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 119
    const-string/jumbo v3, "nick"

    iget-object v4, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->nick:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 4060
    const/4 v4, 0x0

    invoke-static {v4, v3}, Lffe;->a(ZLjava/lang/String;)V

    move-object v1, v2

    .line 124
    goto :goto_0
.end method

.method static toIdl(Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;)Lfeq;
    .locals 4
    .param p0, "object"    # Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    .prologue
    .line 153
    if-nez p0, :cond_0

    .line 154
    const/4 v0, 0x0

    .line 160
    :goto_0
    return-object v0

    .line 156
    :cond_0
    new-instance v0, Lfeq;

    invoke-direct {v0}, Lfeq;-><init>()V

    .line 157
    .local v0, "result":Lfeq;
    iget-wide v2, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lfeq;->a:Ljava/lang/Long;

    .line 158
    iget-wide v2, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->tag:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lfeq;->b:Ljava/lang/Long;

    .line 159
    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->nick:Ljava/lang/String;

    iput-object v1, v0, Lfeq;->c:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 171
    iget-wide v0, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->uid:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 172
    iget-wide v0, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->tag:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 173
    iget-object v0, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->nick:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    return-void
.end method
