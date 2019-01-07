.class public Lcom/alibaba/dingtalk/cspace/model/SpaceOnlinePreviewResultObject;
.super Ljava/lang/Object;
.source "SpaceOnlinePreviewResultObject.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/dingtalk/cspace/model/SpaceOnlinePreviewResultObject;",
            ">;"
        }
    .end annotation
.end field

.field public static final ONLINE_PREVIEW_PLATFORM_VERSION_0:I = 0x0

.field public static final ONLINE_PREVIEW_PLATFORM_VERSION_1:I = 0x1

.field public static final ONLINE_PREVIEW_URL_TYPE_ERROR:I = 0x3

.field public static final ONLINE_PREVIEW_URL_TYPE_FINISH:I = 0x1

.field public static final ONLINE_PREVIEW_URL_TYPE_PROCESSING:I = 0x2

.field public static final PREVIEW_RESULT_INTENT_KEY:Ljava/lang/String; = "intent_key_preview_result"


# instance fields
.field public errorCode:Ljava/lang/String;

.field public errorMessage:Ljava/lang/String;

.field public previewPlatformVersion:I

.field public status:I

.field public url:Ljava/lang/String;

.field public urlType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 116
    new-instance v0, Lcom/alibaba/dingtalk/cspace/model/SpaceOnlinePreviewResultObject$1;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/cspace/model/SpaceOnlinePreviewResultObject$1;-><init>()V

    sput-object v0, Lcom/alibaba/dingtalk/cspace/model/SpaceOnlinePreviewResultObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceOnlinePreviewResultObject;->url:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceOnlinePreviewResultObject;->urlType:I

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceOnlinePreviewResultObject;->status:I

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceOnlinePreviewResultObject;->errorCode:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceOnlinePreviewResultObject;->errorMessage:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceOnlinePreviewResultObject;->previewPlatformVersion:I

    .line 104
    return-void
.end method

.method public static formJsonString(Ljava/lang/String;)Lcom/alibaba/dingtalk/cspace/model/SpaceOnlinePreviewResultObject;
    .locals 9
    .param p0, "previewResultJson"    # Ljava/lang/String;

    .prologue
    .line 62
    new-instance v3, Lcom/alibaba/dingtalk/cspace/model/SpaceOnlinePreviewResultObject;

    invoke-direct {v3}, Lcom/alibaba/dingtalk/cspace/model/SpaceOnlinePreviewResultObject;-><init>()V

    .line 64
    .local v3, "previewResultObject":Lcom/alibaba/dingtalk/cspace/model/SpaceOnlinePreviewResultObject;
    const/4 v5, 0x0

    .line 65
    .local v5, "url":Ljava/lang/String;
    const/4 v6, 0x1

    .line 66
    .local v6, "urlType":I
    const/4 v4, 0x0

    .line 69
    .local v4, "previewVersion":I
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 71
    .local v1, "data":Lorg/json/JSONObject;
    const-string/jumbo v7, "content"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 73
    .local v0, "contentJson":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 74
    const-string/jumbo v7, "src"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 75
    const-string/jumbo v7, "srcType"

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 76
    const-string/jumbo v7, "previewVersion"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 82
    .end local v0    # "contentJson":Lorg/json/JSONObject;
    .end local v1    # "data":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    iput-object v5, v3, Lcom/alibaba/dingtalk/cspace/model/SpaceOnlinePreviewResultObject;->url:Ljava/lang/String;

    .line 83
    iput v6, v3, Lcom/alibaba/dingtalk/cspace/model/SpaceOnlinePreviewResultObject;->urlType:I

    .line 85
    iget-object v7, v3, Lcom/alibaba/dingtalk/cspace/model/SpaceOnlinePreviewResultObject;->url:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 86
    const-string/jumbo v7, "7000000"

    iput-object v7, v3, Lcom/alibaba/dingtalk/cspace/model/SpaceOnlinePreviewResultObject;->errorCode:Ljava/lang/String;

    .line 87
    const-string/jumbo v7, "data error"

    iput-object v7, v3, Lcom/alibaba/dingtalk/cspace/model/SpaceOnlinePreviewResultObject;->errorMessage:Ljava/lang/String;

    .line 90
    :cond_1
    iput v4, v3, Lcom/alibaba/dingtalk/cspace/model/SpaceOnlinePreviewResultObject;->previewPlatformVersion:I

    .line 92
    return-object v3

    .line 78
    :catch_0
    move-exception v2

    .line 79
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static fromIdl(Lgkb;)Lcom/alibaba/dingtalk/cspace/model/SpaceOnlinePreviewResultObject;
    .locals 3
    .param p0, "previewResultModel"    # Lgkb;

    .prologue
    .line 48
    new-instance v0, Lcom/alibaba/dingtalk/cspace/model/SpaceOnlinePreviewResultObject;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/cspace/model/SpaceOnlinePreviewResultObject;-><init>()V

    .line 49
    .local v0, "previewParamObject":Lcom/alibaba/dingtalk/cspace/model/SpaceOnlinePreviewResultObject;
    iget-object v1, p0, Lgkb;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/dingtalk/cspace/model/SpaceOnlinePreviewResultObject;->url:Ljava/lang/String;

    .line 50
    const/4 v1, 0x1

    iput v1, v0, Lcom/alibaba/dingtalk/cspace/model/SpaceOnlinePreviewResultObject;->urlType:I

    .line 51
    iget-object v1, p0, Lgkb;->b:Ljava/lang/Integer;

    .line 1033
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 51
    iput v1, v0, Lcom/alibaba/dingtalk/cspace/model/SpaceOnlinePreviewResultObject;->status:I

    .line 52
    iget-object v1, p0, Lgkb;->c:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/dingtalk/cspace/model/SpaceOnlinePreviewResultObject;->errorCode:Ljava/lang/String;

    .line 53
    iget-object v1, p0, Lgkb;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/dingtalk/cspace/model/SpaceOnlinePreviewResultObject;->errorMessage:Ljava/lang/String;

    .line 55
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceOnlinePreviewResultObject;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceOnlinePreviewResultObject;->urlType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceOnlinePreviewResultObject;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceOnlinePreviewResultObject;->errorCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceOnlinePreviewResultObject;->errorMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceOnlinePreviewResultObject;->previewPlatformVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    return-void
.end method
