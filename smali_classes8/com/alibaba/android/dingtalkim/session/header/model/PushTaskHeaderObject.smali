.class public Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;
.super Ljava/lang/Object;
.source "PushTaskHeaderObject.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "PushTaskHeaderObject"

.field private static final serialVersionUID:J = 0x61070c2627eb5b2L


# instance fields
.field public bgColor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public bgImage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public borderColor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public colorsJson:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public count:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public expiredTime:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public icon:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public isClicked:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public json:Ljava/lang/String;

.field public redBgColor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public redTextColor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public shouldShake:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public summary:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public summaryColor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public taskUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public text:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public titleColor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 170
    new-instance v0, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject$1;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->icon:Ljava/lang/String;

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->title:Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->summary:Ljava/lang/String;

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->text:Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->count:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->bgImage:Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->bgColor:Ljava/lang/String;

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->taskUrl:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->expiredTime:J

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->shouldShake:Z

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->isClicked:Z

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->colorsJson:Ljava/lang/String;

    .line 147
    return-void

    :cond_0
    move v0, v2

    .line 144
    goto :goto_0

    :cond_1
    move v1, v2

    .line 145
    goto :goto_1
.end method

.method public static fromIdlModel(Ldqt;)Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;
    .locals 7
    .param p0, "model"    # Ldqt;

    .prologue
    const/4 v6, 0x0

    .line 99
    if-nez p0, :cond_1

    .line 100
    const/4 v1, 0x0

    .line 131
    :cond_0
    :goto_0
    return-object v1

    .line 103
    :cond_1
    new-instance v1, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;-><init>()V

    .line 104
    .local v1, "obj":Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;
    iget-object v2, p0, Ldqt;->c:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->icon:Ljava/lang/String;

    .line 105
    iget-object v2, p0, Ldqt;->a:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->title:Ljava/lang/String;

    .line 106
    iget-object v2, p0, Ldqt;->b:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->summary:Ljava/lang/String;

    .line 107
    iget-object v2, p0, Ldqt;->e:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->text:Ljava/lang/String;

    .line 108
    iget-object v2, p0, Ldqt;->f:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->count:Ljava/lang/String;

    .line 109
    iget-object v2, p0, Ldqt;->d:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->bgImage:Ljava/lang/String;

    .line 110
    iget-object v2, p0, Ldqt;->j:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->bgColor:Ljava/lang/String;

    .line 111
    iget-object v2, p0, Ldqt;->g:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->taskUrl:Ljava/lang/String;

    .line 112
    iget-object v2, p0, Ldqt;->h:Ljava/lang/Long;

    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->expiredTime:J

    .line 113
    iget-object v2, p0, Ldqt;->k:Ljava/lang/Boolean;

    invoke-static {v2, v6}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->shouldShake:Z

    .line 114
    iput-boolean v6, v1, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->isClicked:Z

    .line 115
    iget-object v2, p0, Ldqt;->l:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->colorsJson:Ljava/lang/String;

    .line 117
    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->colorsJson:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 119
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->colorsJson:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 120
    .local v0, "json":Lorg/json/JSONObject;
    const-string/jumbo v2, "bgColor"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->bgColor:Ljava/lang/String;

    .line 121
    const-string/jumbo v2, "titleColor"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->titleColor:Ljava/lang/String;

    .line 122
    const-string/jumbo v2, "summaryColor"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->summaryColor:Ljava/lang/String;

    .line 123
    const-string/jumbo v2, "borderColor"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->borderColor:Ljava/lang/String;

    .line 124
    const-string/jumbo v2, "redBgColor"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->redBgColor:Ljava/lang/String;

    .line 125
    const-string/jumbo v2, "redTextColor"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->redTextColor:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 127
    .end local v0    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    const-string/jumbo v2, "im"

    const-string/jumbo v3, "PushTaskHeaderObject"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "object.colorsJson:"

    aput-object v5, v4, v6

    const/4 v5, 0x1

    iget-object v6, v1, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->colorsJson:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 128
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 127
    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 185
    :try_start_0
    invoke-static {p0}, Lcoo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string/jumbo v0, ""
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 187
    :catch_0
    move-exception v1

    .line 188
    .local v1, "tr":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 189
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 156
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->icon:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->summary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->count:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->bgImage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->bgColor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->taskUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    iget-wide v4, p0, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->expiredTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 165
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->shouldShake:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->isClicked:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->colorsJson:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 168
    return-void

    :cond_0
    move v0, v2

    .line 165
    goto :goto_0

    :cond_1
    move v1, v2

    .line 166
    goto :goto_1
.end method
