.class public Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
.super Lcom/alibaba/lightapp/runtime/Plugin;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;,
        Lcom/alibaba/lightapp/runtime/plugin/biz/Util$RefreshShareListener;
    }
.end annotation


# static fields
.field private static final ACTION_CHOOSE_SPACE_FILE:Ljava/lang/String; = "com.alibaba.ligthapp.choose.space"

.field private static final ALL_SHARE_TYPE:I = 0x0

.field private static final DEFAULT_IMAGE_QUALITY:I = 0x55

.field private static final DEFAULT_PROGRESS_REFRESH_STEP_LENGTH:I = 0x1

.field private static final ERR_CODE_DOWNLOAD_IMAGE_ERR:I = 0x6

.field private static final ERR_CODE_PARAMS_INVALID:I = 0x1

.field private static final ERR_CODE_SHARE_NOT_SUPPORT:I = 0x5

.field private static final ERR_CODE_SHARE_NO_APP:I = 0x4

.field private static final ERR_CODE_SYSTEM_ERR:I = 0x2

.field private static final ERR_CODE_UNKNOWN_ERR:I = 0x3

.field private static final IMAGE_DEFAULT_CHOOSE_SIZE:I = 0x9

.field private static final JSON_PARAM_KEY_IMAGE_EXPIRED_TIME:Ljava/lang/String; = "expiredTime"

.field private static final JSON_PARAM_KEY_IMAGE_QUALITY:Ljava/lang/String; = "quality"

.field private static final JSON_PARAM_KEY_IMAGE_RESIZE:Ljava/lang/String; = "resize"

.field private static final JSON_PARAM_KEY_IMAGE_UPLOAD_TIME:Ljava/lang/String; = "uploadTime"

.field private static final JSON_PARAM_KEY_RETRY:Ljava/lang/String; = "retry"

.field private static final JSON_PARAM_KEY_RETRY_QUALITY:Ljava/lang/String; = "retryQuality"

.field private static final JSON_PARAM_KEY_RETRY_RESIZE:Ljava/lang/String; = "retryResize"

.field private static final JSON_PARAM_KEY_SHARE_CUSTOM:Ljava/lang/String; = "custom"

.field private static final JSON_PARAM_KEY_SHARE_DESTCHANNEL:Ljava/lang/String; = "destChannelStyle"

.field private static final JSON_PARAM_KEY_SHARE_ORDER:Ljava/lang/String; = "order"

.field private static final JSON_PARAM_KEY_SHARE_SHOWSIMPLESHARES:Ljava/lang/String; = "onlyShare"

.field private static final JUST_SHARE_TO_DD:I = 0x1

.field private static final KEY_SHARE_RESULT:Ljava/lang/String; = "result"

.field private static final KEY_SHARE_TYPE:Ljava/lang/String; = "shareType"

.field private static final MEDIA_TYPE_KEY:Ljava/lang/String; = "mediaType"

.field private static final MEDIA_TYPE_VALUE_ALL:Ljava/lang/String; = "all"

.field private static final MEDIA_TYPE_VALUE_IMAGE:Ljava/lang/String; = "image"

.field private static final MEDIA_TYPE_VALUE_VIDEO:Ljava/lang/String; = "video"

.field private static final NO_SHARE:I = 0x2

.field private static final PARAMETER_SHOW_PROGRESS:Ljava/lang/String; = "progress"

.field private static final PERMISSION_REQUEST_CODE:I = 0x401

.field private static final PICK_RESULT:Ljava/lang/String; = "com.workapp.choose.pictire.from.album.results"

.field private static final REQUEST_SELECT_EMOJI:I = 0x5

.field private static final REQUEST_VIDEO_RECORDING:I = 0x4

.field private static final REQUEST_VIDEO_RECORDING_TO_SPACE:I = 0x6

.field private static final SCAN_ALL_TYPE:Ljava/lang/String; = "all"

.field private static final SCAN_BAR_TYPE:Ljava/lang/String; = "barCode"

.field private static final SCAN_QR_TYPE:Ljava/lang/String; = "qrCode"

.field private static final SHARE_APP_EXCEPT_DD:I = 0x3

.field private static final SHARE_DEVICES:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SHARE_DEVICE_DIGNGTALK_KEY:Ljava/lang/String; = "dd"

.field private static final SHARE_DEVICE_DINGTALK_WORK_CIRCLE_KEY:Ljava/lang/String; = "ddgzq"

.field private static final SHARE_DEVICE_QQHY_KEY:Ljava/lang/String; = "qqhy"

.field private static final SHARE_DEVICE_QQZONE_KEY:Ljava/lang/String; = "qqkj"

.field private static final SHARE_DEVICE_SMS_KEY:Ljava/lang/String; = "sms"

.field private static final SHARE_DEVICE_WXHY_KEY:Ljava/lang/String; = "wxhy"

.field private static final SHARE_DEVICE_WXPYQ_KEY:Ljava/lang/String; = "wxpyq"

.field private static final SHARE_DEVICE_XLWB_KEY:Ljava/lang/String; = "xlwb"

.field private static final SHARE_DEVICE_ZFBYH_KEY:Ljava/lang/String; = "zfbhy"

.field private static final SHARE_RESULT_CANCEL:I = 0x2

.field private static final SHARE_RESULT_FAIL:I = 0x0

.field private static final SHARE_RESULT_SUCCESS:I = 0x1

.field private static final SHARE_STYLE_INVITE:I = 0x1

.field private static final SHARE_STYLE_SHARE:I = 0x0

.field private static final SHARE_STYPE_CUSTOM:I = 0x4

.field private static final STATUS_FINISHED:I = 0x3

.field private static final STATUS_INIT:I = 0x1

.field private static final STATUS_RUNNING:I = 0x2

.field private static final SYSTEM_SHARE_IMAGE:I = 0x2

.field private static final SYSTEM_SHARE_LINK:I = 0x1

.field private static final SYSTEM_SHARE_MULTI:I = 0x3

.field private static final SYSTEM_SHARE_TEXT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "biz.Util"

.field private static final THUMBNAILS_ENABLE:Ljava/lang/String; = "1"

.field private static final UPLOAD_IMAGE_PATH_NULL_CODE:I = 0x1adb3

.field private static final UPLOAD_IMAGE_PATH_NULL_MSG:Ljava/lang/String; = "path is null"

.field private static final UPLOAD_IMAGE_TIME_OUT_CODE:I = 0x1adb8

.field private static final UPLOAD_IMAGE_TIME_OUT_MSG:Ljava/lang/String; = "time out"

.field private static final UPLOAD_MEDIA_OUT_OF_LIMIT:I = 0x1adb4

.field private static final UPLOAD_METHOD_IMAGE:I = 0x1

.field private static final UPLOAD_METHOD_MEDIA:I = 0x2

.field private static final UPLOAD_VIDEO_ENCODE_ERROR:I = 0x1adb5

.field private static final VIDEO_QUALITY_KEY:Ljava/lang/String; = "videoQuality"

.field private static final VIDEO_QUALITY_VALUE_HIGH:Ljava/lang/String; = "high"

.field private static final VIDEO_QUALITY_VALUE_LOW:Ljava/lang/String; = "low"

.field private static final VIDEO_QUALITY_VALUE_MIDDLE:Ljava/lang/String; = "middle"


# instance fields
.field private final STR_KEY:Ljava/lang/String;

.field private final STR_VALUE:Ljava/lang/String;

.field private mAttachmentParentId:Ljava/lang/String;

.field private mAttachmentSpaceId:Ljava/lang/String;

.field private mCaptureUri:Landroid/net/Uri;

.field private mChoosePictureReceiver:Landroid/content/BroadcastReceiver;

.field private mFetchImageDataCallbackName:Ljava/lang/String;

.field private mFileProgressMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFileReceiver:Landroid/content/BroadcastReceiver;

.field private mFileSpaceDos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;",
            ">;"
        }
    .end annotation
.end field

.field private mFileUrls:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFromImage:Z

.field private mImageBroadCastInit:Z

.field private mImageCompressQuality:I

.field private mIsCaptureCompress:Z

.field private mIsDDResName:Z

.field private mIsGetThumbnail:Z

.field private mIsShuiyin:Z

.field private mJsapiStatus:I

.field private mMediaType:Ljava/lang/String;

.field private mParentBitmap:Landroid/graphics/Bitmap;

.field private mPreviewCallbackName:Ljava/lang/String;

.field private mPreviewReceiver:Landroid/content/BroadcastReceiver;

.field private mSaveImageToLocal:Z

.field private mScanCallbackName:Ljava/lang/String;

.field private mScanCardCallbackName:Ljava/lang/String;

.field private mScanCardReceiver:Landroid/content/BroadcastReceiver;

.field private mScanCardUrl:Ljava/lang/String;

.field private mScanReceiver:Landroid/content/BroadcastReceiver;

.field private mSelectEmojiCallbackId:Ljava/lang/String;

.field private mShareCallbackName:Ljava/lang/String;

.field private mShareInterface:Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

.field private mShareList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;",
            ">;"
        }
    .end annotation
.end field

.field private mShareReceiver:Landroid/content/BroadcastReceiver;

.field private mShowProgress:Z

.field private mSpaceReceiver:Landroid/content/BroadcastReceiver;

.field private mUploadAttachmentCallbackName:Ljava/lang/String;

.field private mUploadImageCallbackName:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;

.field private mUploadMethod:I

.field private mUploadType:Ljava/lang/String;

.field mUserDataSource:Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;

.field private mVideoQuality:Ljava/lang/String;

.field private mVideoRecordCallbackName:Ljava/lang/String;

.field private mVideoRecordFileName:Ljava/lang/String;

.field private mVideoUploadFormData:Ljava/util/Map;
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

.field private mVideoUploadUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 221
    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$1;

    invoke-direct {v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$1;-><init>()V

    sput-object v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->SHARE_DEVICES:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 189
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Plugin;-><init>()V

    .line 198
    const-string/jumbo v0, "key"

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->STR_KEY:Ljava/lang/String;

    .line 199
    const-string/jumbo v0, "value"

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->STR_VALUE:Ljava/lang/String;

    .line 265
    const v0, 0x7fffffff

    iput v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mImageCompressQuality:I

    .line 271
    iput-boolean v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mIsDDResName:Z

    .line 280
    iput-boolean v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mIsCaptureCompress:Z

    .line 281
    iput-boolean v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mSaveImageToLocal:Z

    .line 292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareList:Ljava/util/List;

    .line 305
    iput-boolean v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mImageBroadCastInit:Z

    .line 307
    iput-boolean v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mIsShuiyin:Z

    .line 315
    iput v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mJsapiStatus:I

    .line 322
    iput v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadMethod:I

    .line 328
    const-string/jumbo v0, "image"

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mMediaType:Ljava/lang/String;

    .line 334
    const-string/jumbo v0, "high"

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mVideoQuality:Ljava/lang/String;

    .line 337
    iput-boolean v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShowProgress:Z

    .line 3986
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lorg/json/JSONObject;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Z

    .prologue
    .line 189
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->nav2CameraInternal(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->handleSingleAttachment(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10000(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10100(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10200(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10300(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mScanCardUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10400(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->reportInvokeSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10500(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mScanCardCallbackName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10600(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10700(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->reportInvokeFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10800(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10900(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11000(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11100(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11200(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11300(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11400(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11500(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->success(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11600(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11700(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 189
    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$11800(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11900(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 189
    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12000(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mParentBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$12002(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mParentBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$12100(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->captureWebView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12200(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Landroid/graphics/Bitmap;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/app/Activity;

    .prologue
    .line 189
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->shareBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$12300(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12400(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12500(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12600(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12700(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12800(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12900(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->success(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/ShareInfo;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->initShareInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$13000(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->success(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$13100(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$13200(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$13300(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$13400(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->success(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$13500(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$13600(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->success(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$13700(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$13800(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$13900(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/concurrent/atomic/AtomicInteger;

    .prologue
    .line 189
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->handleMediaUploadFail(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$14000(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 189
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->compressAndUploadVideo(Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$14100(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/lang/String;Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/List;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    .param p3, "x3"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p4, "x4"    # Ljava/util/List;
    .param p5, "x5"    # Z

    .prologue
    .line 189
    invoke-direct/range {p0 .. p5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->uploadMedia(Ljava/lang/String;Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$14200(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Z

    .prologue
    .line 189
    invoke-direct/range {p0 .. p5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->handleMediaUploadFinished(Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$14300(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$14400(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->success(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->success(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->success(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Lorg/json/JSONArray;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->success(Lorg/json/JSONArray;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->success(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->success(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4100(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->requetUserProfileList(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/util/List;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->createConversation(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4800(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4900(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500()Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 189
    sget-object v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->SHARE_DEVICES:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5300(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mImageBroadCastInit:Z

    return v0
.end method

.method static synthetic access$5402(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Z

    .prologue
    .line 189
    iput-boolean p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mImageBroadCastInit:Z

    return p1
.end method

.method static synthetic access$5500(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->handleChooseCropPicture(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->handleChoosePictureList(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadImageCallbackName:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5902(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # I

    .prologue
    .line 189
    iput p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mJsapiStatus:I

    return p1
.end method

.method static synthetic access$600(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6000(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mScanCallbackName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6200(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6300(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mPreviewCallbackName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6500(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6600(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadAttachmentCallbackName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->uploadFile(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$6800(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->handleSpaceResult(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$6900(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShowProgress:Z

    return v0
.end method

.method static synthetic access$700(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareInterface:Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/lang/String;JJ)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J
    .param p4, "x3"    # J

    .prologue
    .line 189
    invoke-direct/range {p0 .. p5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->handleSpaceProgress(Ljava/lang/String;JJ)V

    return-void
.end method

.method static synthetic access$7100(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mFileSpaceDos:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$7102(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mFileSpaceDos:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$7200(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->upload2Space()V

    return-void
.end method

.method static synthetic access$7300(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 189
    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$7400(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 189
    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$7500(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mIsCaptureCompress:Z

    return v0
.end method

.method static synthetic access$7600(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->retryImageUpload(Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7700(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # I
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # Z

    .prologue
    .line 189
    invoke-direct/range {p0 .. p7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->handleImageUploadFail(Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;ILjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$7800(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->handleImageUploadFinished(Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7900(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;JJLjava/lang/String;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # J
    .param p3, "x2"    # J
    .param p5, "x3"    # Ljava/lang/String;
    .param p6, "x4"    # Z

    .prologue
    .line 189
    invoke-direct/range {p0 .. p6}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->commitUploadImageUTData(JJLjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->addWorkCircleIfSupport(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$8000(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/lang/String;)Lcom/alibaba/wukong/upload/UploadParams;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getUploadParams(Ljava/lang/String;)Lcom/alibaba/wukong/upload/UploadParams;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8100(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mVideoRecordCallbackName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8200(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8300(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8400(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8500(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mVideoUploadUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8600(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mVideoUploadFormData:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$8700(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mVideoRecordFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8800(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->success(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8900(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->addConnectionCircleIfSupport(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$9000(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->refreshWebView()V

    return-void
.end method

.method static synthetic access$9100(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9200(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9300(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9400(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9500(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9600(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->success(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9700(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9800(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareCallbackName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9900(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method private addConnectionCircleIfSupport(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1536
    .local p1, "shareUnits":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    .line 1537
    :cond_0
    return-void
.end method

.method private addWorkCircleIfSupport(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1492
    .local p1, "shareUnits":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {}, Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;->f()Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;->b()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1533
    :cond_0
    :goto_0
    return-void

    .line 1496
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 1498
    .local v5, "len":I
    const/4 v3, -0x1

    .line 1500
    .local v3, "index":I
    const/4 v1, 0x0

    .line 1502
    .local v1, "hasWorkCircle":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v5, :cond_4

    .line 1503
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    .line 1504
    .local v6, "unit":Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    if-eqz v6, :cond_2

    .line 1508
    if-nez v1, :cond_4

    .line 1512
    invoke-virtual {v6}, Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;->getmShareUnitInfo()Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;

    move-result-object v4

    .line 1513
    .local v4, "info":Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;
    if-eqz v4, :cond_2

    .line 1517
    invoke-virtual {v4}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 1518
    .local v7, "value":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1522
    const-string/jumbo v8, "DINGDING_FRIEND"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1523
    move v3, v2

    .line 1502
    .end local v4    # "info":Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;
    .end local v7    # "value":Ljava/lang/String;
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1524
    .restart local v4    # "info":Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;
    .restart local v7    # "value":Ljava/lang/String;
    :cond_3
    const-string/jumbo v8, "DINGDING_WORK_CIRCLE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1525
    const/4 v1, 0x1

    goto :goto_2

    .line 1529
    .end local v4    # "info":Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;
    .end local v6    # "unit":Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .end local v7    # "value":Ljava/lang/String;
    :cond_4
    const/4 v8, -0x1

    if-eq v3, v8, :cond_0

    if-nez v1, :cond_0

    .line 1530
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1531
    .local v0, "context":Landroid/content/Context;
    add-int/lit8 v8, v3, 0x1

    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareInterface:Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    sget v10, Lhdn$k;->dt_circle_share_to_work_circle:I

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v0, v10}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newWorkCircleShareUnit(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v9

    invoke-interface {p1, v8, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private captureWebView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 4278
    instance-of v7, p1, Lcom/uc/webview/export/WebView;

    if-eqz v7, :cond_0

    move-object v5, p1

    .line 4279
    check-cast v5, Lcom/uc/webview/export/WebView;

    .line 4281
    .local v5, "webView":Lcom/uc/webview/export/WebView;
    :try_start_0
    invoke-virtual {v5}, Lcom/uc/webview/export/WebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v4

    .line 4282
    .local v4, "picture":Landroid/graphics/Picture;
    if-eqz v4, :cond_0

    .line 4283
    invoke-virtual {v4}, Landroid/graphics/Picture;->getWidth()I

    move-result v6

    .line 4284
    .local v6, "width":I
    invoke-virtual {v4}, Landroid/graphics/Picture;->getHeight()I

    move-result v3

    .line 4285
    .local v3, "height":I
    if-lez v6, :cond_0

    if-lez v3, :cond_0

    .line 4286
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v3, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4287
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 4288
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v4, v1}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 4299
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "height":I
    .end local v4    # "picture":Landroid/graphics/Picture;
    .end local v5    # "webView":Lcom/uc/webview/export/WebView;
    .end local v6    # "width":I
    :goto_0
    return-object v0

    .line 4292
    .restart local v5    # "webView":Lcom/uc/webview/export/WebView;
    :catch_0
    move-exception v2

    .line 4293
    .local v2, "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "lightapp"

    const-string/jumbo v8, "biz.Util"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "captureWebView err "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4296
    .end local v2    # "e":Ljava/lang/Throwable;
    .end local v5    # "webView":Lcom/uc/webview/export/WebView;
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v7

    if-nez v7, :cond_1

    .line 4297
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 4299
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private clearShareList()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2076
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2077
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareList:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareInterface:Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$RefreshShareListener;

    invoke-direct {v3, p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$RefreshShareListener;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)V

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newCustomShareUnit(Landroid/content/Context;Lgwm;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2078
    return-void
.end method

.method private commitUploadImageUTData(JJLjava/lang/String;Z)V
    .locals 5
    .param p1, "size"    # J
    .param p3, "interval"    # J
    .param p5, "errCode"    # Ljava/lang/String;
    .param p6, "isRetry"    # Z

    .prologue
    .line 3174
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3176
    .local v0, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "retry"

    invoke-static {p6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3177
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3178
    const-string/jumbo v1, "code"

    invoke-interface {v0, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3184
    :goto_0
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const/4 v2, 0x0

    const-string/jumbo v3, "jsapi_biz_util_image_upload_succ"

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 3185
    return-void

    .line 3180
    :cond_0
    const-string/jumbo v1, "size"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3181
    const-string/jumbo v1, "interval"

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private compressAndUploadVideo(Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;Ljava/util/List;)V
    .locals 4
    .param p1, "ret"    # Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 4344
    .local p2, "resps":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    new-instance v0, Lcqp;

    iget-object v1, p1, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->url:Ljava/lang/String;

    new-instance v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$41;

    invoke-direct {v2, p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$41;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;Ljava/util/List;)V

    invoke-direct {v0, v1, v2}, Lcqp;-><init>(Ljava/lang/String;Lcma;)V

    .line 17040
    .local v0, "videoEncoder":Lcqp;
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v3, v1}, Lcqp;->a(DI)V

    .line 4387
    return-void
.end method

.method private compressAndUploadVideoToSpace(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "uriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2844
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2845
    :cond_0
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadImageCallbackName:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;

    if-eqz v3, :cond_1

    .line 2846
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 2847
    .local v0, "jsonArray":Lorg/json/JSONArray;
    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v4, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v3, v4, v0}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONArray;)V

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadAttachmentCallbackName:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 2894
    .end local v0    # "jsonArray":Lorg/json/JSONArray;
    :cond_1
    :goto_0
    return-void

    .line 2852
    :cond_2
    iget-boolean v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShowProgress:Z

    if-eqz v3, :cond_4

    .line 2853
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 13016
    if-eqz v3, :cond_3

    .line 13019
    sget v4, Lhdn$k;->dt_picker_compressing_video:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Lhrp;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2858
    :cond_3
    :goto_1
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2859
    .local v2, "videoPath":Ljava/lang/String;
    const-string/jumbo v3, "lightapp"

    const-string/jumbo v4, "biz.Util"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "compressAndUploadVideoToSpace: "

    aput-object v6, v5, v7

    aput-object v2, v5, v8

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2860
    new-instance v1, Lcqp;

    new-instance v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$23;

    invoke-direct {v3, p0, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$23;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcqp;-><init>(Ljava/lang/String;Lcma;)V

    .line 2893
    .local v1, "videoEncoder":Lcqp;
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->genQualityForVideoEncoder()I

    move-result v3

    invoke-virtual {v1, v4, v5, v3}, Lcqp;->a(DI)V

    goto :goto_0

    .line 2855
    .end local v1    # "videoEncoder":Lcqp;
    .end local v2    # "videoPath":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 13031
    const/4 v4, 0x0

    invoke-static {v3, v4, v8}, Lhrp;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method private compressUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v8, 0x64

    const/high16 v7, 0x42c80000    # 100.0f

    .line 3500
    const-string/jumbo v4, ""

    .line 3501
    .local v4, "resultUrl":Ljava/lang/String;
    invoke-static {}, Lgzp;->a()Lgzm;

    move-result-object v1

    .line 3503
    .local v1, "mCompressor":Lgzm;
    iget-boolean v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mIsCaptureCompress:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadImageCallbackName:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadImageCallbackName:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;

    iget-object v5, v5, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;->mParamJson:Lorg/json/JSONObject;

    const-string/jumbo v6, "resize"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadImageCallbackName:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;

    iget-object v5, v5, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;->mParamJson:Lorg/json/JSONObject;

    const-string/jumbo v6, "quality"

    .line 3504
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3505
    :cond_0
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadImageCallbackName:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;

    iget-object v5, v5, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;->mParamJson:Lorg/json/JSONObject;

    const-string/jumbo v6, "resize"

    invoke-virtual {v5, v6, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    int-to-float v5, v5

    div-float v3, v5, v7

    .line 3506
    .local v3, "resize":F
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadImageCallbackName:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;

    iget-object v5, v5, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;->mParamJson:Lorg/json/JSONObject;

    const-string/jumbo v6, "quality"

    invoke-virtual {v5, v6, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    int-to-float v5, v5

    div-float v2, v5, v7

    .line 3508
    .local v2, "quality":F
    invoke-static {}, Lhah;->a()Lhah;

    move-result-object v5

    invoke-virtual {v5, p1, v3, v2}, Lhah;->a(Ljava/lang/String;FF)Ljava/lang/String;

    move-result-object v4

    .line 3517
    .end local v2    # "quality":F
    .end local v3    # "resize":F
    :cond_1
    :goto_0
    return-object v4

    .line 3511
    :cond_2
    iget-boolean v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mIsCaptureCompress:Z

    if-nez v5, :cond_3

    const/4 v5, 0x1

    :goto_1
    invoke-interface {v1, p1, v5}, Lgzm;->a(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    .line 3512
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_1

    .line 3513
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 3511
    .end local v0    # "file":Ljava/io/File;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private createConversation(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 8
    .param p1, "nick"    # Ljava/lang/String;
    .param p2, "icon"    # Ljava/lang/String;
    .param p4, "callbackId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p3, "users":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v5, 0x1

    .line 2351
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v7

    .line 2353
    .local v7, "size":I
    if-le v7, v5, :cond_0

    const/4 v5, 0x2

    .line 2357
    .local v5, "conversationType":I
    :cond_0
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$16;

    invoke-direct {v1, p0, p4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$16;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/lang/String;)V

    const/4 v4, 0x0

    new-array v2, v7, [Ljava/lang/Long;

    .line 2404
    invoke-interface {p3, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Long;

    move-object v2, p1

    move-object v3, p2

    .line 2357
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/wukong/im/ConversationService;->createConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;I[Ljava/lang/Long;)V

    .line 2405
    return-void
.end method

.method private datetimeAndMonthPicker(Lcom/alibaba/lightapp/runtime/ActionRequest;Z)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 8
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .param p2, "isOnlyChooseMonth"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1830
    iget-object v7, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    .line 1831
    .local v7, "args":Lorg/json/JSONObject;
    const-string/jumbo v0, "format"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1832
    .local v3, "format":Ljava/lang/String;
    const-string/jumbo v0, "value"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1833
    .local v4, "value":Ljava/lang/String;
    const-string/jumbo v0, "interval"

    sget-object v1, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil$INTERVAL;->INTERVAL_ONE:Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil$INTERVAL;

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil$INTERVAL;->getValue()I

    move-result v1

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 1835
    .local v5, "interval":I
    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$12;

    move-object v1, p0

    move-object v2, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$12;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lcom/alibaba/lightapp/runtime/ActionRequest;Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1868
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v0

    return-object v0
.end method

.method private genQualityForVideoEncoder()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 4623
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mVideoQuality:Ljava/lang/String;

    const-string/jumbo v2, "high"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4632
    :cond_0
    :goto_0
    return v0

    .line 4626
    :cond_1
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mVideoQuality:Ljava/lang/String;

    const-string/jumbo v2, "middle"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4627
    const/4 v0, 0x2

    goto :goto_0

    .line 4629
    :cond_2
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mVideoQuality:Ljava/lang/String;

    const-string/jumbo v2, "low"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4630
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private genQualityForVideoRecording()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x3

    .line 4607
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mVideoQuality:Ljava/lang/String;

    const-string/jumbo v2, "high"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4608
    const/4 v0, 0x0

    .line 4616
    :cond_0
    :goto_0
    return v0

    .line 4610
    :cond_1
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mVideoQuality:Ljava/lang/String;

    const-string/jumbo v2, "middle"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4611
    const/4 v0, 0x1

    goto :goto_0

    .line 4613
    :cond_2
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mVideoQuality:Ljava/lang/String;

    const-string/jumbo v2, "low"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method private getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 2566
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private getAttachmentItems(Lorg/json/JSONArray;)[Ljava/lang/CharSequence;
    .locals 6
    .param p1, "typesArray"    # Lorg/json/JSONArray;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1009
    if-nez p1, :cond_0

    .line 1010
    const/4 v4, 0x0

    .line 1037
    :goto_0
    return-object v4

    .line 1013
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1014
    .local v2, "itemList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 1016
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1017
    .local v3, "type":Ljava/lang/String;
    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_1
    :goto_2
    packed-switch v4, :pswitch_data_0

    .line 1014
    .end local v3    # "type":Ljava/lang/String;
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1017
    .restart local v3    # "type":Ljava/lang/String;
    :sswitch_0
    const-string/jumbo v5, "photo"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x0

    goto :goto_2

    :sswitch_1
    const-string/jumbo v5, "camera"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :sswitch_2
    const-string/jumbo v5, "file"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x2

    goto :goto_2

    :sswitch_3
    const-string/jumbo v5, "space"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x3

    goto :goto_2

    .line 1019
    :pswitch_0
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lhdn$k;->attach_image:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_3

    .line 1031
    .end local v3    # "type":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1032
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 1022
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v3    # "type":Ljava/lang/String;
    :pswitch_1
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lhdn$k;->attach_camera:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 1033
    .end local v3    # "type":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 1034
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 1025
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "type":Ljava/lang/String;
    :pswitch_2
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lhdn$k;->attach_file:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1028
    :pswitch_3
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lhdn$k;->attach_space:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3

    .line 1037
    .end local v3    # "type":Ljava/lang/String;
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/CharSequence;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 1017
    :sswitch_data_0
    .sparse-switch
        -0x51863cdb -> :sswitch_1
        0x2ff57c -> :sswitch_2
        0x65b3e32 -> :sswitch_0
        0x688f106 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getDDResUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "mediaId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 3963
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3964
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ddres://"

    .line 3965
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 3966
    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 3967
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3969
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private getRealFilePath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/16 v11, 0xe

    .line 3713
    if-nez p1, :cond_0

    .line 3714
    const-string/jumbo v0, "lightapp"

    const-string/jumbo v1, "biz.Util"

    const-string/jumbo v4, "Shuiyin camera return null"

    invoke-static {v0, v1, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3745
    :goto_0
    return-object v3

    .line 3718
    :cond_0
    const/4 v9, 0x0

    .line 3719
    .local v9, "path":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    .line 3721
    .local v10, "scheme":Ljava/lang/String;
    if-nez v10, :cond_2

    .line 3722
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    :cond_1
    :goto_1
    move-object v3, v9

    .line 3745
    goto :goto_0

    .line 3723
    :cond_2
    const-string/jumbo v0, "file"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3724
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 3725
    :cond_3
    const-string/jumbo v0, "content"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3726
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "_data"

    aput-object v1, v2, v0

    .line 3727
    .local v2, "proj":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3728
    .local v7, "actualimagecursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 3730
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3731
    const-string/jumbo v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 3732
    .local v6, "actual_image_column_index":I
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 3739
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v11, :cond_1

    .line 3740
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 3733
    .end local v6    # "actual_image_column_index":I
    :catch_0
    move-exception v8

    .line 3734
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3739
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v11, :cond_1

    .line 3740
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 3735
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v8

    .line 3736
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3739
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v11, :cond_1

    .line 3740
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 3739
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v11, :cond_4

    .line 3740
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private getSpaceObj(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Lorg/json/JSONObject;
    .locals 6
    .param p1, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2718
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 2719
    .local v1, "spaceObj":Lorg/json/JSONObject;
    if-nez p1, :cond_1

    .line 2746
    :cond_0
    :goto_0
    return-object v1

    .line 2723
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mAttachmentSpaceId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2724
    const-string/jumbo v3, "spaceId"

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mAttachmentSpaceId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2728
    :goto_1
    const-string/jumbo v3, "fileId"

    iget-object v4, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2729
    const-string/jumbo v3, "fileName"

    iget-object v4, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2730
    const-string/jumbo v3, "fileSize"

    iget-wide v4, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileSize:J

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 2731
    const-string/jumbo v3, "fileType"

    iget-object v4, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileType:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2733
    iget-boolean v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mIsGetThumbnail:Z

    if-eqz v3, :cond_0

    .line 2734
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 2735
    .local v2, "thumbnailJsonObject":Lorg/json/JSONObject;
    const-string/jumbo v3, "mediaId"

    iget-object v4, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->picUrl:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2736
    const-string/jumbo v3, "authMediaId"

    iget-object v4, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->picAuthUrl:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2737
    const-string/jumbo v3, "authCode"

    iget-object v4, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->picAuthCode:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2738
    const-string/jumbo v3, "width"

    iget v4, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->picWidth:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2739
    const-string/jumbo v3, "height"

    iget v4, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->picHeight:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2740
    const-string/jumbo v3, "rotation"

    iget v4, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->rotation:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2741
    const-string/jumbo v3, "thumbnail"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2743
    .end local v2    # "thumbnailJsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 2744
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 2726
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_2
    :try_start_1
    const-string/jumbo v3, "spaceId"

    iget-object v4, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private getUploadParams(Ljava/lang/String;)Lcom/alibaba/wukong/upload/UploadParams;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 3973
    new-instance v1, Lcom/alibaba/wukong/upload/UploadParams;

    invoke-direct {v1}, Lcom/alibaba/wukong/upload/UploadParams;-><init>()V

    .line 16058
    .local v1, "params":Lcom/alibaba/wukong/upload/UploadParams;
    iput-object p1, v1, Lcom/alibaba/wukong/upload/UploadParams;->a:Ljava/lang/String;

    .line 3975
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadImageCallbackName:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadImageCallbackName:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;->mParamJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "expiredTime"

    .line 3976
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3977
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadImageCallbackName:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;->mParamJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "expiredTime"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 3978
    .local v0, "expiredTime":I
    if-lez v0, :cond_0

    .line 3979
    sget-object v2, Lcom/alibaba/wukong/upload/UploadParams$AuthType;->TEMP_AUTH:Lcom/alibaba/wukong/upload/UploadParams$AuthType;

    invoke-virtual {v1, v2}, Lcom/alibaba/wukong/upload/UploadParams;->a(Lcom/alibaba/wukong/upload/UploadParams$AuthType;)V

    .line 16108
    iput v0, v1, Lcom/alibaba/wukong/upload/UploadParams;->g:I

    .line 3983
    .end local v0    # "expiredTime":I
    :cond_0
    return-object v1
.end method

.method private handleAttachmentResult(Lorg/json/JSONArray;)V
    .locals 1
    .param p1, "data"    # Lorg/json/JSONArray;

    .prologue
    .line 2754
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->handleAttachmentResult(Lorg/json/JSONArray;Z)V

    .line 2755
    return-void
.end method

.method private handleAttachmentResult(Lorg/json/JSONArray;Z)V
    .locals 5
    .param p1, "data"    # Lorg/json/JSONArray;
    .param p2, "keepCallback"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2758
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 2760
    .local v2, "response":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v3, "type"

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadType:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2761
    const-string/jumbo v3, "data"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2765
    :goto_0
    invoke-static {}, Lhrp;->a()V

    .line 2766
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "uploadattachment="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2767
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v0, v3, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 2768
    .local v0, "actionResponse":Lcom/alibaba/lightapp/runtime/ActionResponse;
    invoke-virtual {v0, p2}, Lcom/alibaba/lightapp/runtime/ActionResponse;->setKeepCallback(Z)V

    .line 2769
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadAttachmentCallbackName:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 2770
    return-void

    .line 2762
    .end local v0    # "actionResponse":Lcom/alibaba/lightapp/runtime/ActionResponse;
    :catch_0
    move-exception v1

    .line 2763
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private handleChooseCropPicture(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x1

    .line 2804
    const-string/jumbo v4, "choose_picture_ids"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2805
    .local v1, "path":Ljava/lang/String;
    const-string/jumbo v4, "lightapp"

    const-string/jumbo v5, "biz.Util"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "crop img:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2806
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2820
    :goto_0
    return-void

    .line 2809
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 12031
    const/4 v5, 0x0

    invoke-static {v4, v5, v8}, Lhrp;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2810
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2811
    .local v3, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2813
    .local v0, "ddResUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mFromImage:Z

    if-eqz v4, :cond_1

    .line 2814
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4, v8}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-direct {p0, v1, v3, v0, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->uploadImage(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;)V

    goto :goto_0

    .line 2816
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2817
    .local v2, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2818
    invoke-direct {p0, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->uploadFile(Ljava/util/List;)V

    goto :goto_0
.end method

.method private handleChoosePictureList(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x2

    .line 2823
    const-string/jumbo v3, "choose_picture_ids"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2824
    .local v2, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mMediaType:Ljava/lang/String;

    const-string/jumbo v4, "video"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2825
    invoke-direct {p0, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->compressAndUploadVideoToSpace(Ljava/util/ArrayList;)V

    .line 2841
    :cond_0
    :goto_0
    return-void

    .line 2826
    :cond_1
    iget v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadMethod:I

    if-ne v3, v8, :cond_2

    .line 2828
    :try_start_0
    const-string/jumbo v3, "com.workapp.choose.pictire.from.album.results"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 2829
    .local v1, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;>;"
    invoke-direct {p0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->handleUploadMedia(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2830
    .end local v1    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;>;"
    :catch_0
    move-exception v0

    .line 2831
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadImageCallbackName:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;

    if-eqz v3, :cond_0

    .line 2832
    const-string/jumbo v3, "lightapp"

    const-string/jumbo v4, "biz.Util"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "handle uploadMedia err "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadImageCallbackName:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;

    iget-object v7, v7, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;->mCallbackId:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2833
    const-string/jumbo v3, "handle uploadMedia fail"

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadImageCallbackName:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;->mCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->fail(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2836
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mImageCompressQuality:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_3

    .line 2837
    invoke-direct {p0, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->handleUploadImage(Ljava/util/List;)V

    goto :goto_0

    .line 2839
    :cond_3
    invoke-direct {p0, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->handleFetchImageData(Ljava/util/List;)V

    goto :goto_0
.end method

.method private handleFetchImageData(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const v8, 0x7fffffff

    .line 2898
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 2899
    :cond_0
    iput v8, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mImageCompressQuality:I

    .line 2901
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 2902
    .local v3, "jsonArray":Lorg/json/JSONArray;
    new-instance v6, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v7, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v6, v7, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONArray;)V

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mFetchImageDataCallbackName:Ljava/lang/String;

    invoke-virtual {p0, v6, v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 2930
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    :goto_0
    return-void

    .line 2904
    :cond_1
    const/4 v6, 0x0

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2906
    .local v5, "path":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2908
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    invoke-static {v5}, Lhrj;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2909
    if-eqz v1, :cond_4

    .line 2910
    iget v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mImageCompressQuality:I

    invoke-static {v1, v6}, Lhrj;->a(Landroid/graphics/Bitmap;I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2912
    .local v0, "base64Data":Ljava/lang/String;
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 2913
    .local v4, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v6, "value"

    invoke-virtual {v4, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2914
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mFetchImageDataCallbackName:Ljava/lang/String;

    invoke-virtual {p0, v4, v6}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->success(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2923
    .end local v0    # "base64Data":Ljava/lang/String;
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    :goto_1
    if-eqz v1, :cond_2

    .line 2924
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 2928
    :cond_2
    iput v8, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mImageCompressQuality:I

    goto :goto_0

    .line 2915
    .restart local v0    # "base64Data":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 2916
    .local v2, "e":Lorg/json/JSONException;
    :try_start_2
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 2917
    const/4 v6, 0x3

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mFetchImageDataCallbackName:Ljava/lang/String;

    invoke-virtual {p0, v6, v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2923
    .end local v0    # "base64Data":Ljava/lang/String;
    .end local v2    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v6

    if-eqz v1, :cond_3

    .line 2924
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    throw v6

    .line 2920
    :cond_4
    const/4 v6, 0x3

    :try_start_3
    const-string/jumbo v7, "the data of choosen file is null"

    invoke-static {v6, v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mFetchImageDataCallbackName:Ljava/lang/String;

    invoke-virtual {p0, v6, v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private handleImageUploadFail(Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 6
    .param p3, "imgNum"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p4, "requestId"    # Ljava/lang/String;
    .param p5, "errorCode"    # I
    .param p6, "errorDesc"    # Ljava/lang/String;
    .param p7, "isRetry"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 3151
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "ddResUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 3152
    .local v0, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v2, "doUploadFile fail "

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 3153
    const-string/jumbo v2, "requestId="

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 3154
    const-string/jumbo v2, "errorCode="

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 3155
    const-string/jumbo v2, "errorDesc="

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 3156
    const-string/jumbo v2, "isRetry="

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Z)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 3157
    const-string/jumbo v2, "imgNum="

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    if-nez p3, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 3158
    const-string/jumbo v2, "endTime="

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 3159
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3160
    .local v1, "sb":Ljava/lang/String;
    const-string/jumbo v2, "lightapp"

    const-string/jumbo v3, "biz.Util"

    invoke-static {v2, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3161
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    if-gtz v2, :cond_0

    .line 3162
    invoke-static {}, Lhrp;->a()V

    .line 3163
    iget-boolean v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mIsDDResName:Z

    .line 3166
    invoke-direct {p0, p1, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->uploadImageListFail(Ljava/util/List;Ljava/lang/String;)V

    .line 3170
    :cond_0
    return-void

    .line 3157
    .end local v1    # "sb":Ljava/lang/String;
    :cond_1
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    goto :goto_0
.end method

.method private handleImageUploadFinished(Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;)V
    .locals 10
    .param p3, "imgNum"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p4, "mediaId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "ddResUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3127
    :try_start_0
    invoke-static {p4}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3128
    .local v2, "remoteUrl":Ljava/lang/String;
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3129
    iget-boolean v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mIsDDResName:Z

    if-eqz v3, :cond_0

    .line 3130
    invoke-direct {p0, p4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getDDResUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3131
    .local v0, "ddResUrl":Ljava/lang/String;
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3138
    .end local v0    # "ddResUrl":Ljava/lang/String;
    .end local v2    # "remoteUrl":Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v3

    if-gtz v3, :cond_1

    .line 3139
    invoke-static {}, Lhrp;->a()V

    .line 3140
    const-string/jumbo v3, "lightapp"

    const-string/jumbo v4, "biz.Util"

    new-array v5, v9, [Ljava/lang/String;

    const-string/jumbo v6, "doUploadFile stop "

    aput-object v6, v5, v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3141
    iget-boolean v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mIsDDResName:Z

    if-eqz v3, :cond_2

    .line 3142
    invoke-direct {p0, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->uploadDDResImageListSuccess(Ljava/util/List;)V

    .line 3147
    :cond_1
    :goto_1
    return-void

    .line 3133
    :catch_0
    move-exception v1

    .line 3134
    .local v1, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    const-string/jumbo v3, "lightapp"

    const-string/jumbo v4, "biz.Util"

    new-array v5, v9, [Ljava/lang/String;

    const-string/jumbo v6, "MediaIdEncodingException "

    aput-object v6, v5, v7

    invoke-virtual {v1}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3135
    invoke-virtual {v1}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_0

    .line 3144
    .end local v1    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    :cond_2
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->updaloadImageListSuccess(Ljava/util/List;)V

    goto :goto_1
.end method

.method private handleMediaUploadFail(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 5
    .param p1, "errorDesc"    # Ljava/lang/String;
    .param p2, "fileNum"    # Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 4516
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-gtz v0, :cond_0

    .line 4517
    invoke-static {}, Lhrp;->a()V

    .line 4518
    const-string/jumbo v0, "lightapp"

    const-string/jumbo v1, "biz.Util"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "handleMediaUploadFail "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadImageCallbackName:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;->mCallbackId:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4520
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadImageCallbackName:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;

    if-eqz v0, :cond_0

    .line 4521
    const-string/jumbo v0, "doUploadFile fail"

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadImageCallbackName:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;->mCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->fail(Ljava/lang/String;Ljava/lang/String;)V

    .line 4524
    :cond_0
    return-void
.end method

.method private handleMediaUploadFinished(Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;Z)V
    .locals 14
    .param p1, "result"    # Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    .param p3, "fileNum"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p4, "mediaId"    # Ljava/lang/String;
    .param p5, "isVideoPic"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 4456
    .local p2, "resps":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    :try_start_0
    invoke-static/range {p4 .. p4}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4457
    .local v7, "remoteUrl":Ljava/lang/String;
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 4459
    :try_start_1
    iget v8, p1, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->type:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    .line 4460
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;

    .local v6, "object":Lorg/json/JSONObject;
    if-nez v6, :cond_1

    .line 4461
    .end local v6    # "object":Lorg/json/JSONObject;
    :cond_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 4462
    .restart local v6    # "object":Lorg/json/JSONObject;
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4464
    :cond_1
    if-eqz p5, :cond_4

    .line 4465
    const-string/jumbo v8, "thumbnailMediaId"

    move-object/from16 v0, p4

    invoke-virtual {v6, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4466
    const-string/jumbo v8, "thumbnailUrl"

    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4487
    :cond_2
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4492
    .end local v6    # "object":Lorg/json/JSONObject;
    .end local v7    # "remoteUrl":Ljava/lang/String;
    :goto_1
    if-eqz p3, :cond_3

    invoke-virtual/range {p3 .. p3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v8

    if-gtz v8, :cond_3

    .line 4493
    invoke-static {}, Lhrp;->a()V

    .line 4494
    const-string/jumbo v8, "lightapp"

    const-string/jumbo v9, "biz.Util"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "doUploadFile stop "

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v10}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4496
    :try_start_2
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 4497
    .restart local v6    # "object":Lorg/json/JSONObject;
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 4498
    .local v4, "jsonArray":Lorg/json/JSONArray;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    .line 4499
    .local v5, "obj":Lorg/json/JSONObject;
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 4507
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    .end local v5    # "obj":Lorg/json/JSONObject;
    .end local v6    # "object":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 4508
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "lightapp"

    const-string/jumbo v9, "biz.Util"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "build result err "

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadImageCallbackName:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;

    iget-object v12, v12, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;->mCallbackId:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string/jumbo v12, " "

    aput-object v12, v10, v11

    const/4 v11, 0x3

    .line 4509
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v10}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 4508
    invoke-static {v8, v9, v10}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4510
    const-string/jumbo v8, "build result err"

    move-object/from16 v0, p3

    invoke-direct {p0, v8, v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->handleMediaUploadFail(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 4513
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_3
    return-void

    .line 4468
    .restart local v6    # "object":Lorg/json/JSONObject;
    .restart local v7    # "remoteUrl":Ljava/lang/String;
    :cond_4
    :try_start_3
    const-string/jumbo v8, "type"

    const-string/jumbo v9, "video"

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4469
    const-string/jumbo v8, "mediaId"

    move-object/from16 v0, p4

    invoke-virtual {v6, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4470
    const-string/jumbo v8, "mediaUrl"

    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4471
    iget-object v8, p1, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->extension:Ljava/io/Serializable;

    instance-of v8, v8, Lcom/alibaba/android/dingtalkbase/video/VideoInfo;

    if-eqz v8, :cond_2

    .line 4472
    iget-object v3, p1, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->extension:Ljava/io/Serializable;

    check-cast v3, Lcom/alibaba/android/dingtalkbase/video/VideoInfo;

    .line 4473
    .local v3, "info":Lcom/alibaba/android/dingtalkbase/video/VideoInfo;
    const-string/jumbo v8, "videoHeight"

    iget v9, v3, Lcom/alibaba/android/dingtalkbase/video/VideoInfo;->height:I

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4474
    const-string/jumbo v8, "videoWidth"

    iget v9, v3, Lcom/alibaba/android/dingtalkbase/video/VideoInfo;->width:I

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4475
    const-string/jumbo v8, "videoDuration"

    iget-wide v10, v3, Lcom/alibaba/android/dingtalkbase/video/VideoInfo;->duration:J

    invoke-virtual {v6, v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 4476
    const-string/jumbo v8, "videoFileSize"

    iget-wide v10, v3, Lcom/alibaba/android/dingtalkbase/video/VideoInfo;->size:J

    invoke-virtual {v6, v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 4477
    const-string/jumbo v8, "videoFileName"

    iget-object v9, v3, Lcom/alibaba/android/dingtalkbase/video/VideoInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 4487
    .end local v3    # "info":Lcom/alibaba/android/dingtalkbase/video/VideoInfo;
    .end local v6    # "object":Lorg/json/JSONObject;
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 4488
    .end local v7    # "remoteUrl":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 4489
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string/jumbo v8, "lightapp"

    const-string/jumbo v9, "biz.Util"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "handleMediaUploadFinished err "

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v10}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4481
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v7    # "remoteUrl":Ljava/lang/String;
    :cond_5
    :try_start_5
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 4482
    .restart local v6    # "object":Lorg/json/JSONObject;
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4483
    const-string/jumbo v8, "type"

    const-string/jumbo v9, "image"

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4484
    const-string/jumbo v8, "mediaId"

    move-object/from16 v0, p4

    invoke-virtual {v6, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4485
    const-string/jumbo v8, "mediaUrl"

    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 4501
    .end local v7    # "remoteUrl":Ljava/lang/String;
    .restart local v4    # "jsonArray":Lorg/json/JSONArray;
    :cond_6
    :try_start_6
    const-string/jumbo v8, "medias"

    invoke-virtual {v6, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4502
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadImageCallbackName:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;

    if-eqz v8, :cond_3

    .line 4503
    const-string/jumbo v8, "lightapp"

    const-string/jumbo v9, "biz.Util"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "req "

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadImageCallbackName:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;

    iget-object v12, v12, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;->mCallbackId:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    .line 4504
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v10}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 4503
    invoke-static {v8, v9, v10}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4505
    new-instance v8, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v9, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v8, v9, v6}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadImageCallbackName:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;

    iget-object v9, v9, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;->mCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v8, v9}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_3
.end method

.method private handleSingleAttachment(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 6
    .param p1, "args"    # Lorg/json/JSONObject;
    .param p2, "attachmentType"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 1045
    iput-boolean v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShowProgress:Z

    .line 1047
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lhdn$k;->attach_image:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1048
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v4

    const-string/jumbo v5, "space_micro_upload_pic"

    invoke-interface {v4, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 1050
    const-string/jumbo v4, "image"

    iput-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadType:Ljava/lang/String;

    .line 1051
    const-string/jumbo v4, "image"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1053
    .local v0, "jsonObject":Lorg/json/JSONObject;
    if-nez v0, :cond_1

    const/16 v1, 0x9

    .line 1054
    .local v1, "max":I
    :goto_0
    if-eqz v0, :cond_2

    const-string/jumbo v4, "showVideo"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v2, 0x1

    .line 1056
    .local v2, "showVideo":Z
    :goto_1
    invoke-direct {p0, v0, v1, v3, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->nav2Image(Lorg/json/JSONObject;IZZ)V

    .line 1073
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v1    # "max":I
    .end local v2    # "showVideo":Z
    :cond_0
    :goto_2
    return-void

    .line 1053
    .restart local v0    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    const-string/jumbo v4, "max"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .restart local v1    # "max":I
    :cond_2
    move v2, v3

    .line 1054
    goto :goto_1

    .line 1057
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v1    # "max":I
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lhdn$k;->attach_camera:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1058
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v4

    const-string/jumbo v5, "space_micro_upload_pic"

    invoke-interface {v4, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 1060
    const-string/jumbo v4, "image"

    iput-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadType:Ljava/lang/String;

    .line 1061
    const-string/jumbo v4, "image"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {p0, v4, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->nav2Camera(Lorg/json/JSONObject;Z)V

    goto :goto_2

    .line 1062
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lhdn$k;->attach_file:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1063
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-string/jumbo v4, "space_micro_upload_file"

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 1065
    const-string/jumbo v3, "file"

    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadType:Ljava/lang/String;

    .line 1066
    const-string/jumbo v3, "file"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->nav2File(Lorg/json/JSONObject;)V

    goto :goto_2

    .line 1067
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lhdn$k;->attach_space:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1068
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-string/jumbo v4, "space_micro_upload_space"

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 1070
    const-string/jumbo v3, "space"

    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadType:Ljava/lang/String;

    .line 1071
    const-string/jumbo v3, "space"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->nav2Space(Lorg/json/JSONObject;)V

    goto/16 :goto_2
.end method

.method private handleSpaceProgress(Ljava/lang/String;JJ)V
    .locals 10
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "fileSize"    # J
    .param p4, "uploadSize"    # J

    .prologue
    const/4 v8, 0x0

    .line 2657
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v5, p2, v6

    if-gtz v5, :cond_1

    .line 2703
    :cond_0
    :goto_0
    return-void

    .line 2660
    :cond_1
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mFileProgressMap:Ljava/util/Map;

    if-nez v5, :cond_2

    .line 2661
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mFileProgressMap:Ljava/util/Map;

    .line 2664
    :cond_2
    const-wide/16 v6, 0x64

    mul-long/2addr v6, p4

    div-long/2addr v6, p2

    long-to-int v2, v6

    .line 2665
    .local v2, "progress":I
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mFileProgressMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 10033
    invoke-static {v5, v8}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 2666
    .local v1, "oldProgress":I
    sub-int v5, v2, v1

    if-lez v5, :cond_0

    .line 2669
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mFileProgressMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2671
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mFileProgressMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 2672
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2}, Lhrp;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 2676
    :cond_3
    const/4 v3, 0x0

    .line 2677
    .local v3, "sum":I
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mFileProgressMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2678
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 2681
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 11033
    invoke-static {v5, v8}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v5

    .line 2681
    add-int/2addr v3, v5

    .line 2682
    goto :goto_1

    .line 2683
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_5
    mul-int/lit8 v5, v3, 0x64

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mFileProgressMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    mul-int/lit8 v6, v6, 0x64

    div-int v4, v5, v6

    .line 2684
    .local v4, "totalProgress":I
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lhrp;->a(Landroid/content/Context;I)V

    goto/16 :goto_0
.end method

.method private handleSpaceResult(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2706
    .local p1, "spaceDos":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 2707
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 2708
    .local v1, "spaceDoArray":Lorg/json/JSONArray;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 2709
    .local v0, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    invoke-direct {p0, v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getSpaceObj(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 2711
    .end local v0    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    :cond_0
    invoke-direct {p0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->handleAttachmentResult(Lorg/json/JSONArray;)V

    .line 2715
    .end local v1    # "spaceDoArray":Lorg/json/JSONArray;
    :goto_1
    return-void

    .line 2713
    :cond_1
    invoke-static {}, Lhrp;->a()V

    goto :goto_1
.end method

.method private handleUploadImage(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2933
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 2934
    :cond_0
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadImageCallbackName:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;

    if-eqz v5, :cond_1

    .line 2936
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 2937
    .local v2, "jsonArray":Lorg/json/JSONArray;
    new-instance v5, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v5, v6, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONArray;)V

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadImageCallbackName:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;

    iget-object v6, v6, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;->mCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 2955
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    :cond_1
    :goto_0
    return-void

    .line 2940
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2941
    .local v4, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2943
    .local v1, "ddResUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v5, "lightapp"

    const-string/jumbo v6, "biz.Util"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "pick img:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2944
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 14031
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lhrp;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2946
    iget-boolean v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mFromImage:Z

    if-eqz v5, :cond_3

    .line 2947
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v0, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 2948
    .local v0, "atomicInteger":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2949
    .local v3, "path":Ljava/lang/String;
    invoke-direct {p0, v3, v4, v1, v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->uploadImage(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;)V

    goto :goto_1

    .line 2952
    .end local v0    # "atomicInteger":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v3    # "path":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->uploadFile(Ljava/util/List;)V

    goto :goto_0
.end method

.method private handleUploadMedia(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 4304
    .local p1, "medias":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4305
    :cond_0
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadImageCallbackName:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;

    if-eqz v2, :cond_1

    .line 4306
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 4307
    .local v0, "jsonArray":Lorg/json/JSONArray;
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v2, v3, v0}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONArray;)V

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadImageCallbackName:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;->mCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 4340
    .end local v0    # "jsonArray":Lorg/json/JSONArray;
    :cond_1
    :goto_0
    return-void

    .line 4310
    :cond_2
    const-string/jumbo v2, "lightapp"

    const-string/jumbo v3, "biz.Util"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "pick media: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4311
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 17031
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lhrp;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 4313
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4314
    .local v1, "resps":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    const-string/jumbo v2, "biz.Util"

    invoke-static {v2}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v2

    new-instance v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$40;

    invoke-direct {v3, p0, p1, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$40;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/util/ArrayList;Ljava/util/List;)V

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private initAllShareList(I)V
    .locals 5
    .param p1, "style"    # I

    .prologue
    const/4 v4, 0x0

    .line 1873
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1874
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 1908
    :cond_0
    :goto_0
    return-void

    .line 1877
    :cond_1
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1878
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 1879
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareList:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareInterface:Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    sget v3, Lhdn$k;->dt_invite_title_share_dingtalk:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newDingDingFriendShareUnit(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1880
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareList:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareInterface:Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    sget v3, Lhdn$k;->dt_invite_title_share_weixin_friend:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newWeixinFriendShareUnit(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1881
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareList:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareInterface:Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    sget v3, Lhdn$k;->dt_invite_title_share_weixin_group:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newWeixinGroupShareUnit(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1882
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1883
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareList:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareInterface:Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    sget v3, Lhdn$k;->dt_invite_title_share_whatsapp:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newWhatsAppFriendShareUnit(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1889
    :goto_1
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareList:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareInterface:Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    sget v3, Lhdn$k;->dt_invite_title_share_sms:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newSmsShareUnit(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1903
    :goto_2
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareList:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareInterface:Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    invoke-virtual {v2, v0, v4}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newFavoriteUnit(Landroid/content/Context;Landroid/os/Bundle;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1904
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareList:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareInterface:Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    new-instance v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$RefreshShareListener;

    invoke-direct {v3, p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$RefreshShareListener;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)V

    invoke-virtual {v2, v0, v3}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newCustomShareUnit(Landroid/content/Context;Lgwm;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1905
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1906
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareList:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareInterface:Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    invoke-virtual {v2, v0, v4}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newAndroidSystemShareUnit(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1885
    :cond_2
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareList:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareInterface:Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    sget v3, Lhdn$k;->dt_invite_title_share_qq_friend:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newQQFriendShareUnit(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1886
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareList:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareInterface:Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    sget v3, Lhdn$k;->dt_invite_title_share_weibo:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newSinaWeiboShareUnit(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1887
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareList:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareInterface:Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    sget v3, Lhdn$k;->dt_invite_title_share_alipay_friend:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newAliPayFriendShareUnit(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1891
    :cond_3
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareList:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareInterface:Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    invoke-virtual {v2, v0}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newDingDingFriendShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1892
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareList:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareInterface:Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    invoke-virtual {v2, v0}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newWeixinFriendShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1893
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareList:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareInterface:Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    invoke-virtual {v2, v0}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newWeixinGroupShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1894
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1895
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareList:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareInterface:Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    invoke-virtual {v2, v0}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newWhatsAppFriendShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1901
    :goto_3
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareList:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareInterface:Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    invoke-virtual {v2, v0}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newSmsShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1897
    :cond_4
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareList:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareInterface:Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    invoke-virtual {v2, v0}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newQQFriendShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1898
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareList:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareInterface:Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    invoke-virtual {v2, v0}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newSinaWeiboShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1899
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareList:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareInterface:Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    invoke-virtual {v2, v0}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newAliPayFriendShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method private initShareAppCustomDDList(Lorg/json/JSONObject;Ljava/util/List;Lcom/alibaba/laiwang/tide/share/business/ShareInfo;)V
    .locals 25
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p3, "shareUnitInfo"    # Lcom/alibaba/laiwang/tide/share/business/ShareInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/laiwang/tide/share/business/ShareInfo;",
            ">;",
            "Lcom/alibaba/laiwang/tide/share/business/ShareInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1935
    .local p2, "shareInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/tide/share/business/ShareInfo;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 1936
    .local v4, "context":Landroid/content/Context;
    if-nez v4, :cond_1

    .line 2020
    :cond_0
    :goto_0
    return-void

    .line 1939
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1941
    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1942
    .local v9, "shareUnitMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;>;"
    const-string/jumbo v3, "dd"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareInterface:Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    invoke-virtual {v7, v4}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newDingDingFriendShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v7

    invoke-interface {v9, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1943
    const-string/jumbo v3, "wxhy"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareInterface:Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    invoke-virtual {v7, v4}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newWeixinFriendShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v7

    invoke-interface {v9, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1944
    const-string/jumbo v3, "wxpyq"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareInterface:Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    invoke-virtual {v7, v4}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newWeixinGroupShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v7

    invoke-interface {v9, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1945
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1946
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareList:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareInterface:Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    sget v23, Lhdn$k;->dt_invite_title_share_whatsapp:I

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v7, v4, v0}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newWhatsAppFriendShareUnit(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1953
    :goto_1
    const-string/jumbo v3, "sms"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareInterface:Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    invoke-virtual {v7, v4}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newSmsShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v7

    invoke-interface {v9, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1954
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1956
    .local v6, "shareInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/laiwang/tide/share/business/ShareInfo;>;"
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 1957
    .local v17, "iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1959
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 1960
    .local v15, "entry":Ljava/util/Map$Entry;
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1961
    .local v21, "orderKey":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->getContent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->getLinkUrl()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->getPictureUrl()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v3, v7, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->initShareInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    move-result-object v22

    .line 1962
    .local v22, "shareInfo":Lcom/alibaba/laiwang/tide/share/business/ShareInfo;
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->setShareKey(Ljava/lang/String;)V

    .line 1963
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1948
    .end local v6    # "shareInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/laiwang/tide/share/business/ShareInfo;>;"
    .end local v15    # "entry":Ljava/util/Map$Entry;
    .end local v17    # "iterator":Ljava/util/Iterator;
    .end local v21    # "orderKey":Ljava/lang/String;
    .end local v22    # "shareInfo":Lcom/alibaba/laiwang/tide/share/business/ShareInfo;
    :cond_2
    const-string/jumbo v3, "qqhy"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareInterface:Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    invoke-virtual {v7, v4}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newQQFriendShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v7

    invoke-interface {v9, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1949
    const-string/jumbo v3, "qqkj"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareInterface:Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v7, v4, v0, v1}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newQQZoneShareUnit(Landroid/content/Context;Ljava/lang/String;Lgwm;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v7

    invoke-interface {v9, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1950
    const-string/jumbo v3, "xlwb"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareInterface:Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    invoke-virtual {v7, v4}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newSinaWeiboShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v7

    invoke-interface {v9, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1951
    const-string/jumbo v3, "zfbhy"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareInterface:Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    invoke-virtual {v7, v4}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newAliPayFriendShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v7

    invoke-interface {v9, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1965
    .restart local v6    # "shareInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/laiwang/tide/share/business/ShareInfo;>;"
    .restart local v17    # "iterator":Ljava/util/Iterator;
    :cond_3
    const-string/jumbo v3, "custom"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1966
    const-string/jumbo v3, "custom"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v18

    .line 1967
    .local v18, "jsonObjectWithCustom":Lorg/json/JSONObject;
    if-eqz v18, :cond_9

    .line 1968
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 1969
    .local v16, "it":Ljava/util/Iterator;
    :cond_4
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1970
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 1971
    .restart local v15    # "entry":Ljava/util/Map$Entry;
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1972
    .restart local v21    # "orderKey":Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v20

    .line 1973
    .local v20, "object":Lorg/json/JSONObject;
    if-eqz v20, :cond_4

    .line 1974
    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    .line 1975
    .restart local v22    # "shareInfo":Lcom/alibaba/laiwang/tide/share/business/ShareInfo;
    if-nez v22, :cond_5

    .line 1976
    new-instance v22, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    .end local v22    # "shareInfo":Lcom/alibaba/laiwang/tide/share/business/ShareInfo;
    invoke-direct/range {v22 .. v22}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;-><init>()V

    .line 1977
    .restart local v22    # "shareInfo":Lcom/alibaba/laiwang/tide/share/business/ShareInfo;
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1979
    :cond_5
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->setShareKey(Ljava/lang/String;)V

    .line 1980
    const-string/jumbo v3, "content"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1981
    .local v10, "_content":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1982
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->setContent(Ljava/lang/String;)V

    .line 1984
    :cond_6
    const-string/jumbo v3, "url"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1985
    .local v13, "_url":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1986
    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->setLinkUrl(Ljava/lang/String;)V

    .line 1988
    :cond_7
    const-string/jumbo v3, "image"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1989
    .local v11, "_image":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 1990
    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->setPictureUrl(Ljava/lang/String;)V

    .line 1992
    :cond_8
    const-string/jumbo v3, "title"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1993
    .local v12, "_title":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1994
    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2001
    .end local v10    # "_content":Ljava/lang/String;
    .end local v11    # "_image":Ljava/lang/String;
    .end local v12    # "_title":Ljava/lang/String;
    .end local v13    # "_url":Ljava/lang/String;
    .end local v15    # "entry":Ljava/util/Map$Entry;
    .end local v16    # "it":Ljava/util/Iterator;
    .end local v18    # "jsonObjectWithCustom":Lorg/json/JSONObject;
    .end local v20    # "object":Lorg/json/JSONObject;
    .end local v21    # "orderKey":Ljava/lang/String;
    .end local v22    # "shareInfo":Lcom/alibaba/laiwang/tide/share/business/ShareInfo;
    :cond_9
    const-string/jumbo v3, "onlyShare"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 2002
    .local v5, "onlyShare":Z
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 2003
    .local v8, "jsonArrayWithOrder":Lorg/json/JSONArray;
    const/16 v19, 0x1

    .line 2004
    .local v19, "needDoOrder":Z
    const-string/jumbo v3, "destChannelStyle"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2005
    const-string/jumbo v3, "destChannelStyle"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2006
    .local v14, "destChannelStyle":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    sget-object v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->SHARE_DEVICES:Ljava/util/HashSet;

    invoke-virtual {v3, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2007
    invoke-virtual {v8, v14}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 2008
    const/16 v19, 0x0

    .line 2011
    .end local v14    # "destChannelStyle":Ljava/lang/String;
    :cond_a
    if-eqz v19, :cond_b

    const-string/jumbo v3, "order"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2012
    const-string/jumbo v3, "order"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    :cond_b
    move-object/from16 v3, p0

    move-object/from16 v7, p2

    .line 2015
    invoke-direct/range {v3 .. v9}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->initShareAppWithShareInfo(Landroid/content/Context;ZLjava/util/Map;Ljava/util/List;Lorg/json/JSONArray;Ljava/util/Map;)V

    .line 2016
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2017
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareList:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareInterface:Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    const/16 v23, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v7, v4, v0}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newAndroidSystemShareUnit(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private initShareAppExceptDDList()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1912
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1913
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 1932
    :cond_0
    :goto_0
    return-void

    .line 1916
    :cond_1
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1917
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareList:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareInterface:Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    invoke-virtual {v2, v0}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newWeixinFriendShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1918
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareList:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareInterface:Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    invoke-virtual {v2, v0}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newWeixinGroupShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1919
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1920
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareList:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareInterface:Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    sget v3, Lhdn$k;->dt_invite_title_share_whatsapp:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newWhatsAppFriendShareUnit(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1925
    :goto_1
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareList:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareInterface:Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    invoke-virtual {v2, v0}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newSmsShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1926
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareList:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareInterface:Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    invoke-virtual {v2, v0, v4}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newFavoriteUnit(Landroid/content/Context;Landroid/os/Bundle;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1927
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareList:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareInterface:Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    new-instance v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$RefreshShareListener;

    invoke-direct {v3, p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$RefreshShareListener;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)V

    invoke-virtual {v2, v0, v3}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newCustomShareUnit(Landroid/content/Context;Lgwm;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1928
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1929
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareList:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareInterface:Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    invoke-virtual {v2, v0, v4}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newAndroidSystemShareUnit(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1922
    :cond_2
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareList:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareInterface:Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    invoke-virtual {v2, v0}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newQQFriendShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1923
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareList:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareInterface:Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    invoke-virtual {v2, v0}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newSinaWeiboShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private initShareAppWithShareInfo(Landroid/content/Context;ZLjava/util/Map;Ljava/util/List;Lorg/json/JSONArray;Ljava/util/Map;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "onlyShare"    # Z
    .param p5, "jsonArrayWithOrder"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/laiwang/tide/share/business/ShareInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/laiwang/tide/share/business/ShareInfo;",
            ">;",
            "Lorg/json/JSONArray;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2023
    .local p3, "shareInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/laiwang/tide/share/business/ShareInfo;>;"
    .local p4, "shareInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/tide/share/business/ShareInfo;>;"
    .local p6, "shareUnitMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;>;"
    if-eqz p5, :cond_4

    invoke-virtual {p5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 2024
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2025
    .local v0, "addedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_4

    .line 2027
    :try_start_0
    const-string/jumbo v4, ""

    .line 2028
    .local v4, "orderKey":Ljava/lang/String;
    invoke-virtual {p5, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 2029
    .local v5, "orderObj":Ljava/lang/Object;
    if-eqz v5, :cond_0

    .line 2030
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2032
    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2025
    .end local v4    # "orderKey":Ljava/lang/String;
    .end local v5    # "orderObj":Ljava/lang/Object;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2033
    .restart local v4    # "orderKey":Ljava/lang/String;
    .restart local v5    # "orderObj":Ljava/lang/Object;
    :cond_2
    invoke-interface {p6, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2034
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2035
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareList:Ljava/util/List;

    invoke-interface {p6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2037
    :cond_3
    invoke-interface {p3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2038
    invoke-interface {p3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2040
    .end local v4    # "orderKey":Ljava/lang/String;
    .end local v5    # "orderObj":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 2041
    .local v2, "ex":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 2045
    .end local v0    # "addedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "ex":Lorg/json/JSONException;
    .end local v3    # "i":I
    :cond_4
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_6

    .line 2046
    invoke-interface {p6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2047
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2048
    .restart local v4    # "orderKey":Ljava/lang/String;
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2049
    invoke-interface {p3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2050
    invoke-interface {p3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {p4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2054
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;>;"
    .end local v4    # "orderKey":Ljava/lang/String;
    :cond_6
    if-nez p2, :cond_7

    .line 2055
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareList:Ljava/util/List;

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareInterface:Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    const/4 v8, 0x0

    invoke-virtual {v7, p1, v8}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newFavoriteUnit(Landroid/content/Context;Landroid/os/Bundle;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2056
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareList:Ljava/util/List;

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareInterface:Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    new-instance v8, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$RefreshShareListener;

    invoke-direct {v8, p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$RefreshShareListener;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)V

    invoke-virtual {v7, p1, v8}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newCustomShareUnit(Landroid/content/Context;Lgwm;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2058
    :cond_7
    return-void
.end method

.method private initShareInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/ShareInfo;
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "linkUrl"    # Ljava/lang/String;
    .param p4, "picUrl"    # Ljava/lang/String;

    .prologue
    .line 2408
    new-instance v0, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    invoke-direct {v0}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;-><init>()V

    .line 2409
    .local v0, "shareInfo":Lcom/alibaba/laiwang/tide/share/business/ShareInfo;
    invoke-virtual {v0, p1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->setTitle(Ljava/lang/String;)V

    .line 2410
    invoke-virtual {v0, p2}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->setContent(Ljava/lang/String;)V

    .line 2411
    invoke-virtual {v0, p4}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->setPictureUrl(Ljava/lang/String;)V

    .line 2412
    invoke-virtual {v0, p3}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->setLinkUrl(Ljava/lang/String;)V

    .line 2413
    return-object v0
.end method

.method private initShareToDDList(I)V
    .locals 5
    .param p1, "style"    # I

    .prologue
    .line 2062
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2063
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 2073
    :goto_0
    return-void

    .line 2066
    :cond_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2067
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 2068
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareList:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareInterface:Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    sget v3, Lhdn$k;->dt_invite_title_share_dingtalk:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newDingDingFriendShareUnit(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2072
    :goto_1
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareList:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareInterface:Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$RefreshShareListener;

    invoke-direct {v4, p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$RefreshShareListener;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)V

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newCustomShareUnit(Landroid/content/Context;Lgwm;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2070
    :cond_1
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareList:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareInterface:Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newDingDingFriendShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private nav2Camera(Lorg/json/JSONObject;Z)V
    .locals 5
    .param p1, "imageObj"    # Lorg/json/JSONObject;
    .param p2, "fromImage"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 763
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 764
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/16 v1, 0x401

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "android.permission.CAMERA"

    aput-object v4, v2, v3

    new-instance v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$2;

    invoke-direct {v3, p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$2;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lorg/json/JSONObject;Z)V

    invoke-static {v0, v1, v2, v3}, Lbyy;->a(Landroid/app/Activity;I[Ljava/lang/String;Lbzc;)V

    .line 774
    :goto_0
    return-void

    .line 772
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->nav2CameraInternal(Lorg/json/JSONObject;Z)V

    goto :goto_0
.end method

.method private nav2CameraInternal(Lorg/json/JSONObject;Z)V
    .locals 19
    .param p1, "imageObj"    # Lorg/json/JSONObject;
    .param p2, "fromImage"    # Z

    .prologue
    .line 781
    const-string/jumbo v3, "lightapp"

    const-string/jumbo v4, "nav2Camera"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "params: "

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string/jumbo v2, ""

    :goto_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mImageBroadCastInit:Z

    .line 783
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mFromImage:Z

    .line 784
    if-nez p1, :cond_1

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mIsCaptureCompress:Z

    .line 786
    if-eqz p1, :cond_2

    const-string/jumbo v2, "cameraDevice"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_2

    const/4 v12, 0x1

    .line 787
    .local v12, "frontCamera":Z
    :goto_2
    if-eqz p1, :cond_3

    const-string/jumbo v2, "spaceId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_3
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mAttachmentSpaceId:Ljava/lang/String;

    .line 788
    if-eqz p1, :cond_4

    const-string/jumbo v2, "folderId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_4
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mAttachmentParentId:Ljava/lang/String;

    .line 789
    if-eqz p1, :cond_5

    const-string/jumbo v2, "saveLocal"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    :goto_5
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mSaveImageToLocal:Z

    .line 791
    if-eqz p1, :cond_6

    const-string/jumbo v2, "thumbnail"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 792
    .local v13, "getThumbnailEnable":Ljava/lang/String;
    :goto_6
    const-string/jumbo v2, "1"

    invoke-static {v13, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mIsGetThumbnail:Z

    .line 794
    if-nez p1, :cond_7

    const-string/jumbo v2, "image"

    :goto_7
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mMediaType:Ljava/lang/String;

    .line 795
    if-nez p1, :cond_8

    const-string/jumbo v2, "high"

    :goto_8
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mVideoQuality:Ljava/lang/String;

    .line 796
    if-eqz p1, :cond_9

    const-string/jumbo v2, "progress"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    :goto_9
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShowProgress:Z

    .line 798
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mFromImage:Z

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mAttachmentSpaceId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 799
    const/4 v2, 0x3

    const-string/jumbo v3, "spaceId can\'t be null"

    invoke-static {v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadAttachmentCallbackName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 863
    :goto_a
    return-void

    .line 781
    .end local v12    # "frontCamera":Z
    .end local v13    # "getThumbnailEnable":Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 784
    :cond_1
    const-string/jumbo v2, "compression"

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    goto/16 :goto_1

    .line 786
    :cond_2
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 787
    .restart local v12    # "frontCamera":Z
    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 788
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 789
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 791
    :cond_6
    const/4 v13, 0x0

    goto :goto_6

    .line 794
    .restart local v13    # "getThumbnailEnable":Ljava/lang/String;
    :cond_7
    const-string/jumbo v2, "mediaType"

    const-string/jumbo v3, "image"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    .line 795
    :cond_8
    const-string/jumbo v2, "videoQuality"

    const-string/jumbo v3, "high"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    .line 796
    :cond_9
    const/4 v2, 0x0

    goto :goto_9

    .line 803
    :cond_a
    if-nez p2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mMediaType:Ljava/lang/String;

    const-string/jumbo v3, "video"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 804
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mIsGetThumbnail:Z

    .line 805
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->p()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 807
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v2

    .line 808
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    const/4 v4, 0x6

    const/4 v5, 0x2

    const/4 v6, 0x1

    const v7, 0x7fffffff

    const/16 v8, 0xbb8

    .line 810
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->genQualityForVideoRecording()I

    move-result v9

    .line 807
    invoke-virtual/range {v2 .. v9}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;IIIIII)V

    goto/16 :goto_a

    .line 812
    :cond_b
    const/4 v2, 0x3

    const-string/jumbo v3, "video record not support"

    invoke-static {v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadAttachmentCallbackName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 817
    :cond_c
    const/16 v17, 0x0

    .line 818
    .local v17, "time":Ljava/lang/String;
    const/4 v11, 0x0

    .line 819
    .local v11, "dateWeather":Ljava/lang/String;
    const/16 v18, 0x0

    .line 820
    .local v18, "username":Ljava/lang/String;
    const/4 v10, 0x0

    .line 821
    .local v10, "address":Ljava/lang/String;
    const/4 v14, 0x0

    .line 823
    .local v14, "i18nlogo":Z
    if-eqz p1, :cond_d

    .line 824
    const-string/jumbo v2, "stickers"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    .line 825
    .local v16, "stickerObject":Lorg/json/JSONObject;
    if-eqz v16, :cond_d

    .line 826
    const-string/jumbo v2, "time"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 827
    const-string/jumbo v2, "dateWeather"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 828
    const-string/jumbo v2, "username"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 829
    const-string/jumbo v2, "address"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 830
    const-string/jumbo v2, "i18nlogo"

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    const/4 v14, 0x1

    .line 835
    .end local v16    # "stickerObject":Lorg/json/JSONObject;
    :cond_d
    :goto_b
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 837
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mIsShuiyin:Z

    .line 838
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v12}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->openCamera(Landroid/app/Activity;IZ)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mCaptureUri:Landroid/net/Uri;

    goto/16 :goto_a

    .line 830
    .restart local v16    # "stickerObject":Lorg/json/JSONObject;
    :cond_e
    const/4 v14, 0x0

    goto :goto_b

    .line 840
    .end local v16    # "stickerObject":Lorg/json/JSONObject;
    :cond_f
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mIsShuiyin:Z

    .line 841
    invoke-static {}, Lhcs;->a()Z

    move-result v2

    if-nez v2, :cond_10

    .line 842
    sget v2, Lhdn$k;->sdcard_unavailable:I

    invoke-static {v2}, Lcms;->a(I)V

    .line 843
    const-string/jumbo v2, "lightapp"

    const-string/jumbo v3, "openCamera"

    const-string/jumbo v4, "sdcard unavailable"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 848
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/alibaba/android/dingtalkbase/service/DDBabysitterService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v2, v3}, Lcms;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 850
    new-instance v15, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    invoke-direct {v15, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 852
    .local v15, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "time"

    move-object/from16 v0, v17

    invoke-virtual {v15, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 853
    const-string/jumbo v2, "username"

    move-object/from16 v0, v18

    invoke-virtual {v15, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 854
    const-string/jumbo v2, "address"

    invoke-virtual {v15, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 855
    const-string/jumbo v2, "dateWeather"

    invoke-virtual {v15, v2, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 856
    const-string/jumbo v2, "front_camera"

    invoke-virtual {v15, v2, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 857
    const-string/jumbo v2, "i18nlogo"

    invoke-virtual {v15, v2, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 859
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    const/4 v3, 0x1

    invoke-virtual {v2, v15, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 861
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mJsapiStatus:I

    goto/16 :goto_a
.end method

.method private nav2File(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "fileObj"    # Lorg/json/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x3

    .line 888
    if-eqz p1, :cond_1

    .line 889
    const-string/jumbo v2, "spaceId"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mAttachmentSpaceId:Ljava/lang/String;

    .line 890
    const-string/jumbo v2, "folderId"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mAttachmentParentId:Ljava/lang/String;

    .line 892
    const-string/jumbo v2, "thumbnail"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 893
    .local v0, "getThumbnailEnable":Ljava/lang/String;
    const-string/jumbo v2, "1"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mIsGetThumbnail:Z

    .line 895
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mAttachmentSpaceId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 896
    const-string/jumbo v2, "spaceId can\'t be null"

    invoke-static {v3, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadAttachmentCallbackName:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 905
    .end local v0    # "getThumbnailEnable":Ljava/lang/String;
    :goto_0
    return-void

    .line 899
    .restart local v0    # "getThumbnailEnable":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "max"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 900
    .local v1, "max":I
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 901
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 900
    invoke-virtual {v3, v2, v4, v5, v1}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 903
    .end local v0    # "getThumbnailEnable":Ljava/lang/String;
    .end local v1    # "max":I
    :cond_1
    const-string/jumbo v2, "file object can\'t be null"

    invoke-static {v3, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadAttachmentCallbackName:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private nav2Image(Lorg/json/JSONObject;IZ)V
    .locals 1
    .param p1, "imageObj"    # Lorg/json/JSONObject;
    .param p2, "maxSelectSize"    # I
    .param p3, "fromImage"    # Z

    .prologue
    .line 660
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->nav2Image(Lorg/json/JSONObject;IZZ)V

    .line 661
    return-void
.end method

.method private nav2Image(Lorg/json/JSONObject;IZZ)V
    .locals 25
    .param p1, "imageObj"    # Lorg/json/JSONObject;
    .param p2, "maxSelectSize"    # I
    .param p3, "fromImage"    # Z
    .param p4, "forceShowVideo"    # Z

    .prologue
    .line 664
    const-string/jumbo v22, "lightapp"

    const-string/jumbo v23, "nav2Image"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "params: "

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_1

    const-string/jumbo v21, ""

    :goto_0
    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mImageBroadCastInit:Z

    .line 666
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mFromImage:Z

    .line 667
    if-eqz p1, :cond_2

    const-string/jumbo v21, "multiple"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v21

    if-eqz v21, :cond_2

    const/4 v14, 0x1

    .line 668
    .local v14, "multiple":Z
    :goto_1
    if-eqz p1, :cond_0

    const-string/jumbo v21, "compression"

    const/16 v22, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v21

    if-eqz v21, :cond_3

    :cond_0
    const/4 v13, 0x1

    .line 670
    .local v13, "isPreCompress":Z
    :goto_2
    if-eqz p1, :cond_4

    const-string/jumbo v21, "crop"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v21

    if-eqz v21, :cond_4

    const/4 v11, 0x1

    .line 671
    .local v11, "isCrop":Z
    :goto_3
    if-eqz p1, :cond_5

    const-string/jumbo v21, "spaceId"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    :goto_4
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mAttachmentSpaceId:Ljava/lang/String;

    .line 672
    if-eqz p1, :cond_6

    const-string/jumbo v21, "folderId"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    :goto_5
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mAttachmentParentId:Ljava/lang/String;

    .line 674
    if-eqz p1, :cond_7

    const-string/jumbo v21, "thumbnail"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 675
    .local v9, "getThumbnailEnable":Ljava/lang/String;
    :goto_6
    const-string/jumbo v21, "1"

    move-object/from16 v0, v21

    invoke-static {v9, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mIsGetThumbnail:Z

    .line 677
    if-eqz p1, :cond_8

    const-string/jumbo v21, "origin"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v21

    if-eqz v21, :cond_8

    const/4 v12, 0x1

    .line 678
    .local v12, "isOrigin":Z
    :goto_7
    if-eqz p1, :cond_9

    const-string/jumbo v21, "cameraDevice"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v21

    if-lez v21, :cond_9

    const/4 v8, 0x1

    .line 679
    .local v8, "frontCamera":Z
    :goto_8
    if-nez p1, :cond_a

    const/16 v17, 0x55

    .line 681
    .local v17, "quality":I
    :goto_9
    if-nez p3, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mAttachmentSpaceId:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 682
    const/16 v21, 0x3

    const-string/jumbo v22, "spaceId can\'t be null"

    invoke-static/range {v21 .. v22}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadAttachmentCallbackName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 760
    :goto_a
    return-void

    .line 664
    .end local v8    # "frontCamera":Z
    .end local v9    # "getThumbnailEnable":Ljava/lang/String;
    .end local v11    # "isCrop":Z
    .end local v12    # "isOrigin":Z
    .end local v13    # "isPreCompress":Z
    .end local v14    # "multiple":Z
    .end local v17    # "quality":I
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_0

    .line 667
    :cond_2
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 668
    .restart local v14    # "multiple":Z
    :cond_3
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 670
    .restart local v13    # "isPreCompress":Z
    :cond_4
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 671
    .restart local v11    # "isCrop":Z
    :cond_5
    const/16 v21, 0x0

    goto/16 :goto_4

    .line 672
    :cond_6
    const/16 v21, 0x0

    goto/16 :goto_5

    .line 674
    :cond_7
    const/4 v9, 0x0

    goto :goto_6

    .line 677
    .restart local v9    # "getThumbnailEnable":Ljava/lang/String;
    :cond_8
    const/4 v12, 0x0

    goto :goto_7

    .line 678
    .restart local v12    # "isOrigin":Z
    :cond_9
    const/4 v8, 0x0

    goto :goto_8

    .line 679
    .restart local v8    # "frontCamera":Z
    :cond_a
    const-string/jumbo v21, "quality"

    const/16 v22, 0x55

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v17

    goto :goto_9

    .line 686
    .restart local v17    # "quality":I
    :cond_b
    if-nez p1, :cond_11

    const/4 v15, 0x0

    .line 687
    .local v15, "outputX":I
    :goto_b
    if-nez p1, :cond_12

    const/16 v16, 0x0

    .line 689
    .local v16, "outputY":I
    :goto_c
    if-nez p1, :cond_13

    const/4 v4, 0x0

    .line 690
    .local v4, "aspectX":I
    :goto_d
    if-nez p1, :cond_14

    const/4 v5, 0x0

    .line 692
    .local v5, "aspectY":I
    :goto_e
    if-nez p1, :cond_15

    const/16 v21, 0x0

    :goto_f
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mMediaType:Ljava/lang/String;

    .line 693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mMediaType:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 694
    if-eqz p4, :cond_16

    const-string/jumbo v21, "all"

    :goto_10
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mMediaType:Ljava/lang/String;

    .line 696
    :cond_c
    if-nez p1, :cond_17

    const-string/jumbo v21, "high"

    :goto_11
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mVideoQuality:Ljava/lang/String;

    .line 697
    if-eqz p1, :cond_18

    const-string/jumbo v21, "progress"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v21

    if-eqz v21, :cond_18

    const/16 v21, 0x1

    :goto_12
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShowProgress:Z

    .line 699
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 700
    .local v10, "intent":Landroid/os/Bundle;
    const-string/jumbo v21, "send_origin_picture"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 701
    const-string/jumbo v22, "album_single"

    if-nez v14, :cond_19

    const/16 v21, 0x1

    :goto_13
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 702
    const-string/jumbo v21, "album_need_crop"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 703
    const-string/jumbo v21, "album_choose_num"

    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 704
    const-string/jumbo v21, "album_need_pre_compress"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 705
    const-string/jumbo v21, "album_need_pre_decode"

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 706
    const-string/jumbo v21, "front_camera"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 707
    const-string/jumbo v21, "outputX"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 708
    const-string/jumbo v21, "outputY"

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 710
    const-string/jumbo v21, "aspectX"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 711
    const-string/jumbo v21, "aspectY"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 713
    const-string/jumbo v21, "album_compress_quality"

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 718
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadMethod:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mMediaType:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string/jumbo v22, "all"

    invoke-static/range {v21 .. v22}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mMediaType:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string/jumbo v22, "video"

    invoke-static/range {v21 .. v22}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_f

    .line 719
    :cond_d
    const-string/jumbo v21, "video_compress"

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 720
    const-string/jumbo v21, "album_show_video"

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 721
    const-string/jumbo v21, "video_compress_worker"

    new-instance v22, Lcom/alibaba/android/dingtalkbase/video/DefaultVideoCompressWorker;

    invoke-direct/range {v22 .. v22}, Lcom/alibaba/android/dingtalkbase/video/DefaultVideoCompressWorker;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 722
    if-nez v14, :cond_e

    .line 723
    const-string/jumbo v21, "album_choose_num"

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 724
    const-string/jumbo v21, "album_single"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 726
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mMediaType:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string/jumbo v22, "video"

    invoke-static/range {v21 .. v22}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_1a

    .line 727
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mIsGetThumbnail:Z

    .line 728
    const-string/jumbo v21, "album_mode"

    const/16 v22, 0x2

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 729
    const-string/jumbo v21, "album_hide_function_button"

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 730
    const-string/jumbo v21, "allow_check_origin_origin_picture"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 736
    :cond_f
    :goto_14
    if-eqz p1, :cond_10

    .line 738
    :try_start_0
    const-string/jumbo v21, "stickers"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v18

    .line 739
    .local v18, "stickerObject":Lorg/json/JSONObject;
    if-eqz v18, :cond_10

    .line 740
    const-string/jumbo v21, "time"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 741
    .local v19, "time":Ljava/lang/String;
    const-string/jumbo v21, "dateWeather"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 742
    .local v6, "dateWeather":Ljava/lang/String;
    const-string/jumbo v21, "username"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 743
    .local v20, "username":Ljava/lang/String;
    const-string/jumbo v21, "address"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 744
    .local v3, "address":Ljava/lang/String;
    const-string/jumbo v21, "time"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    const-string/jumbo v21, "dateWeather"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    const-string/jumbo v21, "username"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    const-string/jumbo v21, "address"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 756
    .end local v3    # "address":Ljava/lang/String;
    .end local v6    # "dateWeather":Ljava/lang/String;
    .end local v18    # "stickerObject":Lorg/json/JSONObject;
    .end local v19    # "time":Ljava/lang/String;
    .end local v20    # "username":Ljava/lang/String;
    :cond_10
    :goto_15
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v21

    check-cast v21, Landroid/app/Activity;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2, v10}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 759
    const/16 v21, 0x2

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mJsapiStatus:I

    goto/16 :goto_a

    .line 686
    .end local v4    # "aspectX":I
    .end local v5    # "aspectY":I
    .end local v10    # "intent":Landroid/os/Bundle;
    .end local v15    # "outputX":I
    .end local v16    # "outputY":I
    :cond_11
    const-string/jumbo v21, "cropWidth"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v15

    goto/16 :goto_b

    .line 687
    .restart local v15    # "outputX":I
    :cond_12
    const-string/jumbo v21, "cropHeight"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v16

    goto/16 :goto_c

    .line 689
    .restart local v16    # "outputY":I
    :cond_13
    const-string/jumbo v21, "aspectX"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    goto/16 :goto_d

    .line 690
    .restart local v4    # "aspectX":I
    :cond_14
    const-string/jumbo v21, "aspectY"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    goto/16 :goto_e

    .line 692
    .restart local v5    # "aspectY":I
    :cond_15
    const-string/jumbo v21, "mediaType"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_f

    .line 694
    :cond_16
    const-string/jumbo v21, "image"

    goto/16 :goto_10

    .line 696
    :cond_17
    const-string/jumbo v21, "videoQuality"

    const-string/jumbo v22, "high"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_11

    .line 697
    :cond_18
    const/16 v21, 0x0

    goto/16 :goto_12

    .line 701
    .restart local v10    # "intent":Landroid/os/Bundle;
    :cond_19
    const/16 v21, 0x0

    goto/16 :goto_13

    .line 732
    :cond_1a
    const-string/jumbo v21, "album_mode"

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_14

    .line 750
    :catch_0
    move-exception v7

    .line 751
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v21, "lightapp"

    const-string/jumbo v22, "nav2Image"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string/jumbo v24, "parse params err: "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v21 .. v23}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_15
.end method

.method private nav2Space(Lorg/json/JSONObject;)V
    .locals 10
    .param p1, "spaceObj"    # Lorg/json/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x3

    const/4 v2, 0x1

    .line 911
    if-eqz p1, :cond_3

    .line 912
    const-string/jumbo v8, "corpId"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 913
    .local v0, "corpId":Ljava/lang/String;
    const-string/jumbo v8, "isCopy"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v2, :cond_0

    .line 914
    .local v2, "isCopy":Z
    :goto_0
    const-string/jumbo v8, "spaceId"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 916
    .local v7, "spaceId":Ljava/lang/String;
    const-string/jumbo v8, "thumbnail"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 917
    .local v1, "getThumbnailEnable":Ljava/lang/String;
    const-string/jumbo v8, "1"

    invoke-static {v1, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mIsGetThumbnail:Z

    .line 919
    if-eqz v2, :cond_1

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 920
    const-string/jumbo v8, "spaceId can\'t be null"

    invoke-static {v9, v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadAttachmentCallbackName:Ljava/lang/String;

    invoke-virtual {p0, v8, v9}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 943
    .end local v0    # "corpId":Ljava/lang/String;
    .end local v1    # "getThumbnailEnable":Ljava/lang/String;
    .end local v2    # "isCopy":Z
    .end local v7    # "spaceId":Ljava/lang/String;
    :goto_1
    return-void

    .line 913
    .restart local v0    # "corpId":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 923
    .restart local v1    # "getThumbnailEnable":Ljava/lang/String;
    .restart local v2    # "isCopy":Z
    .restart local v7    # "spaceId":Ljava/lang/String;
    :cond_1
    const-string/jumbo v8, "max"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 924
    .local v3, "max":I
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;)J

    move-result-wide v4

    .line 926
    .local v4, "orgId":J
    if-eqz v2, :cond_2

    .line 927
    iput-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mAttachmentSpaceId:Ljava/lang/String;

    .line 932
    :goto_2
    new-instance v6, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;

    invoke-direct {v6}, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;-><init>()V

    .line 933
    .local v6, "param":Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;
    invoke-virtual {v6, v2}, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;->setCopy(Z)V

    .line 934
    invoke-virtual {v6, v7}, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;->setTargetSpaceId(Ljava/lang/String;)V

    .line 935
    invoke-virtual {v6, v4, v5}, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;->setOrgId(J)V

    .line 936
    const-string/jumbo v8, "com.alibaba.ligthapp.choose.space"

    invoke-virtual {v6, v8}, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;->setIntentAction(Ljava/lang/String;)V

    .line 937
    invoke-virtual {v6, v3}, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;->setMax(I)V

    .line 938
    iget-boolean v8, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mIsGetThumbnail:Z

    invoke-virtual {v6, v8}, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;->setNeedThumbnail(Z)V

    .line 939
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v9

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v8

    check-cast v8, Landroid/app/Activity;

    invoke-virtual {v9, v8, v6}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/app/Activity;Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;)V

    goto :goto_1

    .line 929
    .end local v6    # "param":Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;
    :cond_2
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mAttachmentSpaceId:Ljava/lang/String;

    goto :goto_2

    .line 941
    .end local v0    # "corpId":Ljava/lang/String;
    .end local v1    # "getThumbnailEnable":Ljava/lang/String;
    .end local v2    # "isCopy":Z
    .end local v3    # "max":I
    .end local v4    # "orgId":J
    .end local v7    # "spaceId":Ljava/lang/String;
    :cond_3
    const-string/jumbo v8, "space object can\'t be null"

    invoke-static {v9, v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadAttachmentCallbackName:Ljava/lang/String;

    invoke-virtual {p0, v8, v9}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private navigatorToScan(ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 3
    .param p1, "isKeepScan"    # Z
    .param p2, "tips"    # Ljava/lang/String;
    .param p3, "jumpActivity"    # Z
    .param p4, "type"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1099
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1100
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "qrcode_jump_activity_key"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1101
    const-string/jumbo v1, "keep_scan_key"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1102
    const-string/jumbo v1, "barCode"

    invoke-static {p4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1103
    const-string/jumbo v1, "intent_key_ma_code_type"

    sget-object v2, Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$MaCodeType;->BarCode:Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$MaCodeType;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$MaCodeType;->value()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1108
    :cond_0
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1109
    const-string/jumbo v1, "intent_key_tips"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    :cond_1
    invoke-static {}, Lcom/alibaba/dingtalk/scanbase/QRCodeInterface;->a()Lcom/alibaba/dingtalk/scanbase/QRCodeInterface;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/dingtalk/scanbase/QRCodeInterface;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 1112
    return-void

    .line 1104
    :cond_2
    const-string/jumbo v1, "qrCode"

    invoke-static {p4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1105
    const-string/jumbo v1, "intent_key_ma_code_type"

    sget-object v2, Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$MaCodeType;->QrCode:Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$MaCodeType;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$MaCodeType;->value()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private openAttachment(Lorg/json/JSONObject;)Z
    .locals 1
    .param p1, "args"    # Lorg/json/JSONObject;

    .prologue
    .line 2203
    const/4 v0, 0x0

    return v0
.end method

.method private openCamera(Landroid/app/Activity;IZ)Landroid/net/Uri;
    .locals 12
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "frontCamera"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 3451
    if-nez p1, :cond_0

    .line 3452
    const/4 v0, 0x0

    .line 3491
    :goto_0
    return-object v0

    .line 3455
    :cond_0
    invoke-static {}, Lhcs;->a()Z

    move-result v7

    if-nez v7, :cond_1

    .line 3456
    sget v7, Lhdn$k;->sdcard_unavailable:I

    invoke-static {v7}, Lcms;->a(I)V

    .line 3457
    const-string/jumbo v7, "lightapp"

    const-string/jumbo v8, "openCamera"

    const-string/jumbo v9, "sdcard unavailable"

    invoke-static {v7, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3458
    const/4 v0, 0x0

    goto :goto_0

    .line 3462
    :cond_1
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3463
    .local v2, "filePath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lhcs;->e(Landroid/content/Context;)Ljava/io/File;

    move-result-object v7

    invoke-direct {v3, v7, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3466
    .local v3, "imageFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    .line 3467
    .local v6, "parentFile":Ljava/io/File;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 3468
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 3471
    :cond_2
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 3472
    .local v0, "captureUri":Landroid/net/Uri;
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v7, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3474
    .local v4, "intent":Landroid/content/Intent;
    move-object v5, v0

    .line 3475
    .local v5, "outputUrl":Landroid/net/Uri;
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x18

    if-lt v7, v8, :cond_3

    .line 3476
    invoke-static {p1}, Lhcs;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7, v3}, Landroid/support/v4/content/FileProvider;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    .line 3478
    :cond_3
    const-string/jumbo v7, "output"

    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3479
    if-eqz p3, :cond_4

    .line 3480
    const-string/jumbo v7, "android.intent.extras.CAMERA_FACING"

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3482
    :cond_4
    invoke-virtual {p1, v4, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3484
    const/4 v7, 0x2

    iput v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mJsapiStatus:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3487
    .end local v0    # "captureUri":Landroid/net/Uri;
    .end local v2    # "filePath":Ljava/lang/String;
    .end local v3    # "imageFile":Ljava/io/File;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "outputUrl":Landroid/net/Uri;
    .end local v6    # "parentFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 3488
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3489
    const-string/jumbo v7, "lightapp"

    const-string/jumbo v8, "openCamera"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "start err:"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3491
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private openChat(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p1, "args"    # Lorg/json/JSONObject;
    .param p2, "callbackId"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2239
    :try_start_0
    invoke-static {}, Lhqe;->a()Lhqe;

    move-result-object v10

    .line 2240
    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Lhqe;->b(Ljava/lang/String;)Lhqe$d;

    move-result-object v7

    .line 2241
    .local v7, "session":Lhqe$d;
    if-eqz v7, :cond_0

    .line 7488
    iget-object v8, v7, Lhqe$d;->b:Ljava/lang/String;

    .line 2242
    .local v8, "sessionCorpId":Ljava/lang/String;
    :goto_0
    const-string/jumbo v10, "corpId"

    const-string/jumbo v11, ""

    invoke-virtual {p1, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2244
    .local v1, "argCorpId":Ljava/lang/String;
    if-nez v8, :cond_1

    .line 2245
    move-object v2, v1

    .line 2256
    .local v2, "corpId":Ljava/lang/String;
    :goto_1
    const-string/jumbo v10, "users"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 2257
    .local v5, "jsonUsers":Lorg/json/JSONArray;
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    .line 2258
    .local v6, "length":I
    new-array v9, v6, [Ljava/lang/String;

    .line 2259
    .local v9, "users":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v4, v10, :cond_3

    .line 2260
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v4

    .line 2259
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2241
    .end local v1    # "argCorpId":Ljava/lang/String;
    .end local v2    # "corpId":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "jsonUsers":Lorg/json/JSONArray;
    .end local v6    # "length":I
    .end local v8    # "sessionCorpId":Ljava/lang/String;
    .end local v9    # "users":[Ljava/lang/String;
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 2248
    .restart local v1    # "argCorpId":Ljava/lang/String;
    .restart local v8    # "sessionCorpId":Ljava/lang/String;
    :cond_1
    invoke-static {v8, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2249
    move-object v2, v8

    .restart local v2    # "corpId":Ljava/lang/String;
    goto :goto_1

    .line 2252
    .end local v2    # "corpId":Ljava/lang/String;
    :cond_2
    new-instance v10, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v11, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/16 v12, 0x8

    invoke-static {v12, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    move-object/from16 v0, p2

    invoke-virtual {p0, v10, v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 2294
    .end local v1    # "argCorpId":Ljava/lang/String;
    .end local v7    # "session":Lhqe$d;
    .end local v8    # "sessionCorpId":Ljava/lang/String;
    :goto_3
    return-void

    .line 2262
    .restart local v1    # "argCorpId":Ljava/lang/String;
    .restart local v2    # "corpId":Ljava/lang/String;
    .restart local v4    # "i":I
    .restart local v5    # "jsonUsers":Lorg/json/JSONArray;
    .restart local v6    # "length":I
    .restart local v7    # "session":Lhqe$d;
    .restart local v8    # "sessionCorpId":Ljava/lang/String;
    .restart local v9    # "users":[Ljava/lang/String;
    :cond_3
    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUserDataSource:Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    new-instance v12, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$14;

    move-object/from16 v0, p2

    invoke-direct {v12, p0, v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$14;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/lang/String;)V

    invoke-interface {v10, v2, v11, v12}, Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;->getUidListByCorpIdAndStaffId(Ljava/lang/String;Ljava/util/List;Lhqu;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 2290
    .end local v1    # "argCorpId":Ljava/lang/String;
    .end local v2    # "corpId":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "jsonUsers":Lorg/json/JSONArray;
    .end local v6    # "length":I
    .end local v7    # "session":Lhqe$d;
    .end local v8    # "sessionCorpId":Ljava/lang/String;
    .end local v9    # "users":[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 2291
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 2292
    new-instance v10, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v11, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v12, 0x3

    invoke-virtual {v3}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    move-object/from16 v0, p2

    invoke-virtual {p0, v10, v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private openContactAdd(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 4
    .param p1, "args"    # Lorg/json/JSONObject;
    .param p2, "callbackId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2143
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2144
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "show_header_existed_group"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2145
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 2146
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2145
    invoke-virtual {v1, v2, v3, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2148
    return-void
.end method

.method private openCustomer(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 8
    .param p1, "args"    # Lorg/json/JSONObject;
    .param p2, "callbackId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x3

    .line 2127
    :try_start_0
    const-string/jumbo v3, "name"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2128
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v3, "phone"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2129
    .local v2, "phone":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2130
    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v4, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v5, 0x3

    const-string/jumbo v6, "\u624b\u673a\u53f7\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v5, v6}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    invoke-virtual {p0, v3, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 2140
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "phone":Ljava/lang/String;
    :goto_0
    return-void

    .line 2133
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v2    # "phone":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v4, v3, v2, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2135
    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v4, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v3, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    invoke-virtual {p0, v3, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2136
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "phone":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2137
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 2138
    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v4, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    invoke-virtual {p0, v3, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private openDingRecord(Lorg/json/JSONObject;)Z
    .locals 2
    .param p1, "params"    # Lorg/json/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2160
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    .line 2161
    const/4 v0, 0x1

    return v0
.end method

.method private openFriendAdd(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 3
    .param p1, "args"    # Lorg/json/JSONObject;
    .param p2, "callbackId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2150
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 2151
    return-void
.end method

.method private openManageOrg(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 11
    .param p1, "args"    # Lorg/json/JSONObject;
    .param p2, "callbackId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v6, 0x0

    const/16 v10, 0x8

    .line 2208
    if-nez p1, :cond_0

    .line 2209
    :try_start_0
    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/16 v7, 0x8

    const-string/jumbo v8, "args null"

    .line 2210
    invoke-static {v7, v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 2232
    :goto_0
    return-object v3

    .line 2212
    :cond_0
    const-string/jumbo v3, "isManager"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 2213
    .local v2, "isShowCompanyName":I
    const-string/jumbo v3, "corpId"

    const-string/jumbo v8, ""

    invoke-virtual {p1, v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2215
    .local v0, "argCorpId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-wide v4, v6

    .line 2217
    .local v4, "orgId":J
    :goto_1
    cmp-long v3, v4, v6

    if-lez v3, :cond_3

    .line 2218
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 2219
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-virtual {v3, v6, v4, v5, v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/content/Context;JLjava/lang/String;)V

    .line 2223
    :goto_2
    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v3, v6}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2229
    .end local v0    # "argCorpId":Ljava/lang/String;
    .end local v2    # "isShowCompanyName":I
    .end local v4    # "orgId":J
    :catch_0
    move-exception v1

    .line 2230
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2231
    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Exception:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2232
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 2215
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "argCorpId":Ljava/lang/String;
    .restart local v2    # "isShowCompanyName":I
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUserDataSource:Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;

    invoke-interface {v3, v0}, Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;->getOrgIdByCorpId(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_1

    .line 2221
    .restart local v4    # "orgId":J
    :cond_2
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v3, v6, v4, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/content/Context;J)V

    goto :goto_2

    .line 2225
    :cond_3
    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/16 v7, 0x8

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "invalid corpId: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2226
    invoke-static {v7, v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private openProfile(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "args"    # Lorg/json/JSONObject;
    .param p2, "callbackId"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2083
    :try_start_0
    const-string/jumbo v6, "id"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2085
    .local v5, "staffId":Ljava/lang/String;
    invoke-static {}, Lhqe;->a()Lhqe;

    move-result-object v6

    .line 2086
    invoke-virtual {v6, p3}, Lhqe;->b(Ljava/lang/String;)Lhqe$d;

    move-result-object v3

    .line 2087
    .local v3, "session":Lhqe$d;
    if-eqz v3, :cond_0

    .line 6488
    iget-object v4, v3, Lhqe$d;->b:Ljava/lang/String;

    .line 2088
    .local v4, "sessionCorpId":Ljava/lang/String;
    :goto_0
    const-string/jumbo v6, "corpId"

    const-string/jumbo v7, ""

    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2090
    .local v0, "argCorpId":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 2091
    move-object v1, v0

    .line 2102
    .local v1, "corpId":Ljava/lang/String;
    :goto_1
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUserDataSource:Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;

    new-instance v7, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$13;

    invoke-direct {v7, p0, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$13;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/lang/String;)V

    invoke-interface {v6, v1, v5, v7}, Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;->getUidByCorpIdAndStaffId(Ljava/lang/String;Ljava/lang/String;Lhqu;)V

    .line 2123
    .end local v0    # "argCorpId":Ljava/lang/String;
    .end local v1    # "corpId":Ljava/lang/String;
    .end local v3    # "session":Lhqe$d;
    .end local v4    # "sessionCorpId":Ljava/lang/String;
    .end local v5    # "staffId":Ljava/lang/String;
    :goto_2
    return-void

    .line 2087
    .restart local v3    # "session":Lhqe$d;
    .restart local v5    # "staffId":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 2094
    .restart local v0    # "argCorpId":Ljava/lang/String;
    .restart local v4    # "sessionCorpId":Ljava/lang/String;
    :cond_1
    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2095
    move-object v1, v4

    .restart local v1    # "corpId":Ljava/lang/String;
    goto :goto_1

    .line 2098
    .end local v1    # "corpId":Ljava/lang/String;
    :cond_2
    new-instance v6, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v7, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/16 v8, 0x8

    invoke-static {v8, v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    invoke-virtual {p0, v6, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 2119
    .end local v0    # "argCorpId":Ljava/lang/String;
    .end local v3    # "session":Lhqe$d;
    .end local v4    # "sessionCorpId":Ljava/lang/String;
    .end local v5    # "staffId":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 2120
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 2121
    new-instance v6, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v7, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v8, 0x3

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    invoke-virtual {p0, v6, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private registerChoosePictureReceiver()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2420
    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$17;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$17;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)V

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mChoosePictureReceiver:Landroid/content/BroadcastReceiver;

    .line 2446
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2447
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.workapp.choose.pictire.from.crop"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2448
    const-string/jumbo v1, "com.workapp.choose.pictire.from.album"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2449
    const-string/jumbo v1, "com.workapp.choose.picture.from.album.cancel"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2450
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mChoosePictureReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 2452
    return-void
.end method

.method private registerFileReceiver()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2512
    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$20;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$20;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)V

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mFileReceiver:Landroid/content/BroadcastReceiver;

    .line 2536
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2537
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.workapp.choose.file.from.picker"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2538
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mFileReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 2539
    return-void
.end method

.method private registerPreviewReceiver()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2481
    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$19;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$19;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)V

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mPreviewReceiver:Landroid/content/BroadcastReceiver;

    .line 2503
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2504
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.alibaba.laiwang.photokit.browser.remove"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2505
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mPreviewReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 2506
    return-void
.end method

.method private registerScanCardReceiver()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 3626
    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$30;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$30;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)V

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mScanCardReceiver:Landroid/content/BroadcastReceiver;

    .line 3663
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3664
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.workapp.recognize.card.from.camera"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3665
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mScanCardReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 3666
    return-void
.end method

.method private registerScanReceiver()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2456
    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$18;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$18;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)V

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mScanReceiver:Landroid/content/BroadcastReceiver;

    .line 2472
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2473
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.workapp.action.qrcode"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2474
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mScanReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 2475
    return-void
.end method

.method private registerShareReceiver()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 3587
    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$29;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$29;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)V

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareReceiver:Landroid/content/BroadcastReceiver;

    .line 3619
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3620
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "intent.action.jsapi.share"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3621
    const-string/jumbo v1, "intent.action.jsapi.share.cancel"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3622
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 3623
    return-void
.end method

.method private registerSpaceReceiver()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2545
    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$21;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$21;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)V

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mSpaceReceiver:Landroid/content/BroadcastReceiver;

    .line 2560
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2561
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.alibaba.ligthapp.choose.space"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2562
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mSpaceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 2563
    return-void
.end method

.method private requetUserProfileList(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .param p2, "callbackId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2298
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const-class v1, Lcom/alibaba/lightapp/runtime/rpc/proxy/UserProfileProxy;

    invoke-static {v1}, Lhqv;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/rpc/proxy/UserProfileProxy;

    .line 2299
    .local v0, "userProfileProxy":Lcom/alibaba/lightapp/runtime/rpc/proxy/UserProfileProxy;
    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$15;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$15;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/util/List;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Lcom/alibaba/lightapp/runtime/rpc/proxy/UserProfileProxy;->getUserProfileList(Ljava/util/List;Lhqu;)V

    .line 2347
    return-void
.end method

.method private retryImageUpload(Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;)V
    .locals 7
    .param p3, "imgNum"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p4, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 3068
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "ddResUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v0, "biz.Util"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v6

    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$26;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$26;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-interface {v6, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 3123
    return-void
.end method

.method private shareBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "callbackId"    # Ljava/lang/String;
    .param p3, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 4084
    if-nez p1, :cond_0

    .line 4085
    const/4 v0, 0x3

    const-string/jumbo v1, "No image to share"

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 4086
    const-string/jumbo v0, "lightapp"

    const-string/jumbo v1, "biz.Util"

    const-string/jumbo v2, "No bitmap to share"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4104
    :goto_0
    return-void

    .line 4088
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$36;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$36;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Landroid/app/Activity;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private stringToMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 11
    .param p1, "orgString"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 3749
    const/4 v5, 0x0

    .line 3750
    .local v5, "resultMap":Ljava/util/Map;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 3751
    const-string/jumbo v6, "\\s*|\t|\r|\n"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 3752
    .local v4, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 3753
    .local v3, "m":Ljava/util/regex/Matcher;
    const-string/jumbo v6, ""

    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3755
    const-string/jumbo v6, ","

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3756
    .local v2, "commaStrArray":[Ljava/lang/String;
    if-eqz v2, :cond_1

    array-length v6, v2

    if-lez v6, :cond_1

    .line 3757
    new-instance v5, Ljava/util/HashMap;

    .end local v5    # "resultMap":Ljava/util/Map;
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 3758
    .restart local v5    # "resultMap":Ljava/util/Map;
    array-length v8, v2

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_1

    aget-object v1, v2, v6

    .line 3759
    .local v1, "commaStr":Ljava/lang/String;
    const-string/jumbo v9, "="

    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3760
    .local v0, "colonStrArray":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v9, v0

    const/4 v10, 0x2

    if-lt v9, v10, :cond_0

    .line 3761
    aget-object v9, v0, v7

    const/4 v10, 0x1

    aget-object v10, v0, v10

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3758
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3767
    .end local v0    # "colonStrArray":[Ljava/lang/String;
    .end local v1    # "commaStr":Ljava/lang/String;
    .end local v2    # "commaStrArray":[Ljava/lang/String;
    .end local v3    # "m":Ljava/util/regex/Matcher;
    .end local v4    # "p":Ljava/util/regex/Pattern;
    :cond_1
    return-object v5
.end method

.method private unregisterReceiver()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 2773
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mChoosePictureReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 2774
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mChoosePictureReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 2775
    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mChoosePictureReceiver:Landroid/content/BroadcastReceiver;

    .line 2777
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mScanReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 2778
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mScanReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 2779
    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mScanReceiver:Landroid/content/BroadcastReceiver;

    .line 2781
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mPreviewReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 2782
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mPreviewReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 2783
    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mPreviewReceiver:Landroid/content/BroadcastReceiver;

    .line 2785
    :cond_2
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mFileReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    .line 2786
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mFileReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 2787
    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mFileReceiver:Landroid/content/BroadcastReceiver;

    .line 2789
    :cond_3
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mSpaceReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_4

    .line 2790
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mSpaceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 2791
    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mSpaceReceiver:Landroid/content/BroadcastReceiver;

    .line 2793
    :cond_4
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mScanCardReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_5

    .line 2794
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mScanCardReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 2795
    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mScanCardReceiver:Landroid/content/BroadcastReceiver;

    .line 2797
    :cond_5
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_6

    .line 2798
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 2801
    :cond_6
    return-void
.end method

.method private updaloadImageListSuccess(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 3188
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 3189
    .local v0, "jsonArray":Lorg/json/JSONArray;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3190
    .local v1, "url":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 3193
    .end local v1    # "url":Ljava/lang/String;
    :cond_0
    iget-boolean v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mFromImage:Z

    if-eqz v2, :cond_2

    .line 3194
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadImageCallbackName:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;

    if-eqz v2, :cond_1

    .line 3195
    const-string/jumbo v2, "lightapp"

    const-string/jumbo v3, "biz.Util"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "req "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadImageCallbackName:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;

    iget-object v6, v6, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;->mCallbackId:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 3196
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3195
    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3198
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v2, v3, v0}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONArray;)V

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadImageCallbackName:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;->mCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 3203
    :cond_1
    :goto_1
    return-void

    .line 3201
    :cond_2
    invoke-direct {p0, v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->handleAttachmentResult(Lorg/json/JSONArray;)V

    goto :goto_1
.end method

.method private upload2Space()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2601
    const/4 v0, 0x0

    .line 2602
    .local v0, "doSend":Z
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v4

    if-nez v4, :cond_1

    .line 2603
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mFileSpaceDos:Ljava/util/List;

    invoke-direct {p0, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->handleSpaceResult(Ljava/util/List;)V

    .line 2604
    invoke-static {}, Lhrp;->a()V

    .line 2654
    :cond_0
    :goto_0
    return-void

    .line 2607
    :cond_1
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mFileUrls:Ljava/util/LinkedList;

    if-eqz v4, :cond_2

    .line 2608
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mFileUrls:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2609
    .local v1, "filePath":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2610
    const/4 v0, 0x1

    .line 2611
    new-instance v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$22;

    invoke-direct {v3, p0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$22;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/lang/String;)V

    .line 2642
    .local v3, "uploadListener":Lgqt;
    const-class v5, Lgqt;

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-static {v3, v5, v4}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "uploadListener":Lgqt;
    check-cast v3, Lgqt;

    .line 2643
    .restart local v3    # "uploadListener":Lgqt;
    new-instance v2, Lgrc;

    invoke-direct {v2}, Lgrc;-><init>()V

    .line 2644
    .local v2, "param":Lgrc;
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mAttachmentSpaceId:Ljava/lang/String;

    .line 8060
    iput-object v4, v2, Lgrc;->a:Ljava/lang/String;

    .line 2645
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mAttachmentParentId:Ljava/lang/String;

    .line 8068
    iput-object v4, v2, Lgrc;->b:Ljava/lang/String;

    .line 2646
    iget-boolean v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mIsGetThumbnail:Z

    .line 8092
    iput-boolean v4, v2, Lgrc;->e:Z

    .line 9084
    iput-object v1, v2, Lgrc;->d:Ljava/lang/String;

    .line 2648
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v4

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, v2, v3}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;Lgrc;Lgqt;)V

    .line 2651
    .end local v1    # "filePath":Ljava/lang/String;
    .end local v2    # "param":Lgrc;
    .end local v3    # "uploadListener":Lgqt;
    :cond_2
    if-nez v0, :cond_0

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mFileUrls:Ljava/util/LinkedList;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mFileUrls:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 2652
    :cond_3
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mFileSpaceDos:Ljava/util/List;

    invoke-direct {p0, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->handleSpaceResult(Ljava/util/List;)V

    goto :goto_0
.end method

.method private uploadDDResImageListSuccess(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 3225
    .local p1, "ddResUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 3226
    .local v0, "jsonArray":Lorg/json/JSONArray;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3227
    .local v1, "url":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 3230
    .end local v1    # "url":Ljava/lang/String;
    :cond_0
    iget-boolean v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mFromImage:Z

    if-eqz v2, :cond_2

    .line 3231
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadImageCallbackName:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;

    if-eqz v2, :cond_1

    .line 3232
    const-string/jumbo v2, "lightapp"

    const-string/jumbo v3, "biz.Util"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "req "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadImageCallbackName:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;

    iget-object v6, v6, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;->mCallbackId:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 3233
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3232
    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3235
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v2, v3, v0}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONArray;)V

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadImageCallbackName:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;->mCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 3240
    :cond_1
    :goto_1
    return-void

    .line 3238
    :cond_2
    invoke-direct {p0, v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->handleAttachmentResult(Lorg/json/JSONArray;)V

    goto :goto_1
.end method

.method private uploadFile(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "fileUris":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 2574
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 2575
    iget-boolean v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShowProgress:Z

    if-eqz v2, :cond_0

    .line 2576
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5}, Lhrp;->a(Landroid/content/Context;I)V

    .line 2580
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mFileSpaceDos:Ljava/util/List;

    .line 2581
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mFileUrls:Ljava/util/LinkedList;

    .line 2582
    new-instance v2, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mFileProgressMap:Ljava/util/Map;

    .line 2583
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2584
    .local v1, "uri":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mFileUrls:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2585
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mFileProgressMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2578
    .end local v1    # "uri":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 8031
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lhrp;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 2588
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2589
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "type"

    const-string/jumbo v3, "app"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2590
    const-string/jumbo v2, "num"

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2591
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "space_upload_success_click"

    invoke-interface {v2, v3, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 2593
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->upload2Space()V

    .line 2595
    .end local v0    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    return-void
.end method

.method private uploadImage(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 19
    .param p1, "path"    # Ljava/lang/String;
    .param p4, "imgNum"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2958
    .local p2, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "ddResUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v3, "lightapp"

    const-string/jumbo v5, "biz.Util"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "doUploadFile start "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2960
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 2961
    .local v14, "firstStartTime":J
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v12

    .line 2964
    .local v12, "firstSize":J
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2965
    const-string/jumbo v6, "-1"

    const v7, 0x1adb3

    const-string/jumbo v8, "path is null"

    const/4 v9, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v2 .. v9}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->handleImageUploadFail(Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 2967
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-string/jumbo v8, "110003"

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->commitUploadImageUTData(JJLjava/lang/String;Z)V

    .line 3065
    :goto_0
    return-void

    .line 2975
    :cond_0
    const/4 v3, 0x1

    new-array v4, v3, [Z

    const/4 v3, 0x0

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    aput-boolean v5, v4, v3

    .line 2977
    .local v4, "isFinished":[Z
    new-instance v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$24;

    move-object/from16 v3, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$24;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;[ZLjava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;)V

    .line 3003
    .local v2, "timeoutRunnable":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadImageCallbackName:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadImageCallbackName:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;->mParamJson:Lorg/json/JSONObject;

    const-string/jumbo v5, "uploadTime"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3005
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadImageCallbackName:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;->mParamJson:Lorg/json/JSONObject;

    const-string/jumbo v5, "uploadTime"

    const/4 v6, -0x1

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v17

    .line 3006
    .local v17, "uploadTime":I
    if-lez v17, :cond_1

    .line 3007
    invoke-static {}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->getInstance()Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->getHandler()Landroid/os/Handler;

    move-result-object v3

    move/from16 v0, v17

    int-to-long v6, v0

    invoke-virtual {v3, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3012
    .end local v17    # "uploadTime":I
    :cond_1
    invoke-static {}, Lify;->a()Lify;

    move-result-object v3

    invoke-direct/range {p0 .. p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getUploadParams(Ljava/lang/String;)Lcom/alibaba/wukong/upload/UploadParams;

    move-result-object v18

    new-instance v5, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$25;

    move-object/from16 v6, p0

    move-object v7, v2

    move-object v8, v4

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v16, p1

    invoke-direct/range {v5 .. v16}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$25;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/lang/Runnable;[ZLjava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;JJLjava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v3, v0, v5}, Lify;->a(Lcom/alibaba/wukong/upload/UploadParams;Lifw;)V

    goto :goto_0
.end method

.method private uploadImageListFail(Ljava/util/List;Ljava/lang/String;)V
    .locals 7
    .param p2, "errMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 3206
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 3207
    .local v0, "jsonArray":Lorg/json/JSONArray;
    if-eqz p1, :cond_0

    .line 3208
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3209
    .local v1, "url":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 3213
    .end local v1    # "url":Ljava/lang/String;
    :cond_0
    iget-boolean v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mFromImage:Z

    if-eqz v2, :cond_2

    .line 3214
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadImageCallbackName:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;

    if-eqz v2, :cond_1

    .line 3215
    const-string/jumbo v2, "lightapp"

    const-string/jumbo v3, "biz.Util"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "req "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadImageCallbackName:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;

    iget-object v6, v6, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;->mCallbackId:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    .line 3216
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3215
    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3217
    const-string/jumbo v2, "doUploadFile fail"

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadImageCallbackName:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;->mCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->fail(Ljava/lang/String;Ljava/lang/String;)V

    .line 3222
    :cond_1
    :goto_1
    return-void

    .line 3220
    :cond_2
    invoke-direct {p0, v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->handleAttachmentResult(Lorg/json/JSONArray;)V

    goto :goto_1
.end method

.method private uploadMedia(Ljava/lang/String;Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/List;Z)V
    .locals 11
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    .param p3, "fileNum"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p5, "isVideoPic"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 4390
    .local p4, "resps":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    const-string/jumbo v0, "lightapp"

    const-string/jumbo v1, "biz.Util"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "uploadMedia start "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4391
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4392
    const-string/jumbo v0, "path is null"

    invoke-direct {p0, v0, p3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->handleMediaUploadFail(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 4452
    :goto_0
    return-void

    .line 4396
    :cond_0
    const/4 v0, 0x1

    new-array v3, v0, [Z

    const/4 v0, 0x0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    aput-boolean v1, v3, v0

    .line 4397
    .local v3, "isFinished":[Z
    new-instance v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$42;

    invoke-direct {v2, p0, v3, p3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$42;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;[ZLjava/util/concurrent/atomic/AtomicInteger;)V

    .line 4412
    .local v2, "timeoutRunnable":Ljava/lang/Runnable;
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadImageCallbackName:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadImageCallbackName:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;->mParamJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "uploadTime"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4413
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadImageCallbackName:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;->mParamJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "uploadTime"

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 4414
    .local v8, "uploadTime":I
    if-lez v8, :cond_1

    .line 4415
    invoke-static {}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->getInstance()Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->getHandler()Landroid/os/Handler;

    move-result-object v0

    int-to-long v4, v8

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4418
    .end local v8    # "uploadTime":I
    :cond_1
    invoke-static {}, Lify;->a()Lify;

    move-result-object v9

    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getUploadParams(Ljava/lang/String;)Lcom/alibaba/wukong/upload/UploadParams;

    move-result-object v10

    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$43;

    move-object v1, p0

    move-object v4, p2

    move-object v5, p4

    move-object v6, p3

    move/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$43;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/lang/Runnable;[ZLcom/alibaba/laiwang/photokit/picker/PhotoPickResult;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Z)V

    invoke-virtual {v9, v10, v0}, Lify;->a(Lcom/alibaba/wukong/upload/UploadParams;Lifw;)V

    goto :goto_0
.end method

.method private uploadVideoToSpace(Ldco;)V
    .locals 14
    .param p1, "videoRecordResult"    # Ldco;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x4

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x3

    const/4 v10, 0x0

    .line 3414
    if-eqz p1, :cond_0

    iget-object v6, p1, Ldco;->a:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3415
    :cond_0
    const-string/jumbo v6, "uploadVideoToSpace: videoRecordResult or its path is null"

    invoke-static {v11, v6}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadAttachmentCallbackName:Ljava/lang/String;

    invoke-virtual {p0, v6, v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 3448
    :cond_1
    :goto_0
    return-void

    .line 3419
    :cond_2
    new-instance v4, Ljava/io/File;

    iget-object v6, p1, Ldco;->a:Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3420
    .local v4, "videoFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3424
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 3425
    .local v2, "tmpFileName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 3429
    const-string/jumbo v6, "."

    invoke-virtual {v2, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 3430
    .local v0, "index":I
    if-gez v0, :cond_3

    .line 3431
    new-array v6, v7, [Ljava/lang/String;

    aput-object v2, v6, v10

    const-string/jumbo v7, "_"

    aput-object v7, v6, v12

    .line 3432
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v13

    const-string/jumbo v7, ".mp4"

    aput-object v7, v6, v11

    .line 3431
    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3439
    :goto_1
    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    .line 3440
    .local v1, "parentPath":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3441
    move-object v3, v2

    .line 3446
    .local v3, "tmpFilePath":Ljava/lang/String;
    :goto_2
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v5, v3

    .line 3447
    .local v5, "videoFilePath":Ljava/lang/String;
    :goto_3
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->uploadFile(Ljava/util/List;)V

    goto :goto_0

    .line 3434
    .end local v1    # "parentPath":Ljava/lang/String;
    .end local v3    # "tmpFilePath":Ljava/lang/String;
    .end local v5    # "videoFilePath":Ljava/lang/String;
    :cond_3
    new-array v6, v7, [Ljava/lang/String;

    invoke-virtual {v2, v10, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    const-string/jumbo v7, "_"

    aput-object v7, v6, v12

    .line 3435
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v13

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v11

    .line 3434
    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 3443
    .restart local v1    # "parentPath":Ljava/lang/String;
    :cond_4
    new-array v6, v11, [Ljava/lang/String;

    aput-object v1, v6, v10

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v7, v6, v12

    aput-object v2, v6, v13

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "tmpFilePath":Ljava/lang/String;
    goto :goto_2

    .line 3446
    :cond_5
    iget-object v5, p1, Ldco;->a:Ljava/lang/String;

    goto :goto_3
.end method


# virtual methods
.method public addDesktopShortcuts(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 9
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 3539
    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    .line 3540
    .local v6, "callbackId":Ljava/lang/String;
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v1, "corpId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3541
    .local v5, "corpId":Ljava/lang/String;
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v1, "appId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 3542
    .local v2, "appId":J
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v1, "name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3544
    .local v4, "name":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    .line 3545
    :cond_0
    const/4 v0, 0x3

    const-string/jumbo v1, "parameter invalid"

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 3583
    :goto_0
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v0

    return-object v0

    .line 3547
    :cond_1
    invoke-static {}, Lcom/alibaba/aether/api/Aether;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v7

    const-string/jumbo v8, "biz.Util"

    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$28;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$28;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v8, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method buildUploadImageMethod(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;
    .locals 10
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v9, 0x64

    .line 522
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    if-nez p2, :cond_2

    .line 523
    :cond_0
    const/4 v2, 0x0

    .line 605
    :cond_1
    :goto_0
    return-object v2

    .line 526
    :cond_2
    new-instance v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/lang/String;)V

    .line 527
    .local v2, "jsapiMethod":Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;
    const-string/jumbo v6, "retry"

    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 529
    :try_start_0
    iget-object v6, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;->mParamJson:Lorg/json/JSONObject;

    const-string/jumbo v7, "retry"

    const-string/jumbo v8, "retry"

    invoke-virtual {p2, v8}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 535
    :cond_3
    :goto_1
    const-string/jumbo v6, "retryResize"

    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 537
    :try_start_1
    const-string/jumbo v6, "retryResize"

    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 538
    .local v4, "resize":I
    if-gt v4, v9, :cond_4

    if-gtz v4, :cond_5

    .line 539
    :cond_4
    const/16 v4, 0x64

    .line 541
    :cond_5
    iget-object v6, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;->mParamJson:Lorg/json/JSONObject;

    const-string/jumbo v7, "retryResize"

    invoke-virtual {v6, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 547
    .end local v4    # "resize":I
    :cond_6
    :goto_2
    const-string/jumbo v6, "retryQuality"

    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 549
    :try_start_2
    const-string/jumbo v6, "retryQuality"

    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 550
    .local v3, "quality":I
    if-gt v3, v9, :cond_7

    if-gtz v3, :cond_8

    .line 551
    :cond_7
    const/16 v3, 0x64

    .line 553
    :cond_8
    iget-object v6, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;->mParamJson:Lorg/json/JSONObject;

    const-string/jumbo v7, "retryQuality"

    invoke-virtual {v6, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    .line 559
    .end local v3    # "quality":I
    :cond_9
    :goto_3
    const-string/jumbo v6, "resize"

    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 561
    :try_start_3
    const-string/jumbo v6, "resize"

    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 562
    .restart local v4    # "resize":I
    if-gt v4, v9, :cond_a

    if-gtz v4, :cond_b

    .line 563
    :cond_a
    const/16 v4, 0x64

    .line 565
    :cond_b
    iget-object v6, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;->mParamJson:Lorg/json/JSONObject;

    const-string/jumbo v7, "resize"

    invoke-virtual {v6, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_4

    .line 571
    .end local v4    # "resize":I
    :cond_c
    :goto_4
    const-string/jumbo v6, "quality"

    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 573
    :try_start_4
    const-string/jumbo v6, "quality"

    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 574
    .restart local v3    # "quality":I
    if-gt v3, v9, :cond_d

    if-gtz v3, :cond_e

    .line 575
    :cond_d
    const/16 v3, 0x64

    .line 577
    :cond_e
    iget-object v6, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;->mParamJson:Lorg/json/JSONObject;

    const-string/jumbo v7, "quality"

    invoke-virtual {v6, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_5

    .line 583
    .end local v3    # "quality":I
    :cond_f
    :goto_5
    const-string/jumbo v6, "uploadTime"

    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 585
    :try_start_5
    const-string/jumbo v6, "uploadTime"

    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 586
    .local v5, "uploadTime":I
    if-gt v5, v9, :cond_10

    if-gtz v5, :cond_11

    .line 587
    :cond_10
    const/16 v5, 0x64

    .line 590
    :cond_11
    iget-object v6, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;->mParamJson:Lorg/json/JSONObject;

    const-string/jumbo v7, "uploadTime"

    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_6

    .line 596
    .end local v5    # "uploadTime":I
    :cond_12
    :goto_6
    const-string/jumbo v6, "expiredTime"

    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 598
    :try_start_6
    const-string/jumbo v6, "expiredTime"

    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 599
    .local v1, "expiredTime":I
    iget-object v6, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;->mParamJson:Lorg/json/JSONObject;

    const-string/jumbo v7, "expiredTime"

    invoke-virtual {v6, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 600
    .end local v1    # "expiredTime":I
    :catch_0
    move-exception v0

    .line 601
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 530
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 531
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    .line 542
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v0

    .line 543
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_2

    .line 554
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_3
    move-exception v0

    .line 555
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_3

    .line 566
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_4
    move-exception v0

    .line 567
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4

    .line 578
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_5
    move-exception v0

    .line 579
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_5

    .line 591
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_6
    move-exception v0

    .line 592
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_6
.end method

.method public chosen(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 3
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1644
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    .line 1645
    .local v0, "args":Lorg/json/JSONObject;
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1646
    .local v1, "itemMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$9;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$9;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lorg/json/JSONObject;Ljava/util/Map;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    invoke-virtual {p0, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1699
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v2

    return-object v2
.end method

.method public datepicker(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 22
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    .prologue
    .line 1574
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    move-object/from16 v16, v0

    .line 1575
    .local v16, "args":Lorg/json/JSONObject;
    const-string/jumbo v2, "format"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1576
    .local v4, "format":Ljava/lang/String;
    const-string/jumbo v2, "start"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1577
    .local v5, "minDate":Ljava/lang/String;
    const-string/jumbo v2, "end"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1578
    .local v6, "maxDate":Ljava/lang/String;
    const-string/jumbo v2, "value"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1581
    .local v21, "value":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lclu;->a()Ljava/util/Calendar;

    move-result-object v17

    .line 1582
    .local v17, "calendar":Ljava/util/Calendar;
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1583
    new-instance v19, Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1584
    .local v19, "dateFormat":Ljava/text/DateFormat;
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v18

    .line 1585
    .local v18, "date":Ljava/util/Date;
    invoke-virtual/range {v17 .. v18}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1588
    .end local v18    # "date":Ljava/util/Date;
    .end local v19    # "dateFormat":Ljava/text/DateFormat;
    :cond_0
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 1589
    .local v7, "year":I
    const/4 v2, 0x2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 1590
    .local v8, "month":I
    const/4 v2, 0x5

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 1592
    .local v9, "day":I
    if-lez v7, :cond_1

    if-ltz v8, :cond_1

    if-lez v9, :cond_1

    .line 1593
    new-instance v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$7;

    move-object/from16 v3, p0

    move-object/from16 v10, p1

    invoke-direct/range {v2 .. v10}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$7;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILcom/alibaba/lightapp/runtime/ActionRequest;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1616
    :goto_0
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v2

    .line 1640
    .end local v7    # "year":I
    .end local v8    # "month":I
    .end local v9    # "day":I
    .end local v17    # "calendar":Ljava/util/Calendar;
    :goto_1
    return-object v2

    .line 1613
    .restart local v7    # "year":I
    .restart local v8    # "month":I
    .restart local v9    # "day":I
    .restart local v17    # "calendar":Ljava/util/Calendar;
    :cond_1
    const/4 v2, 0x3

    const-string/jumbo v3, "time value is wrong"

    invoke-static {v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1617
    .end local v7    # "year":I
    .end local v8    # "month":I
    .end local v9    # "day":I
    .end local v17    # "calendar":Ljava/util/Calendar;
    :catch_0
    move-exception v20

    .line 1618
    .local v20, "e":Ljava/text/ParseException;
    invoke-virtual/range {v20 .. v20}, Ljava/text/ParseException;->printStackTrace()V

    .line 1619
    const/4 v2, 0x3

    const-string/jumbo v3, "value does not match format"

    invoke-static {v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 1622
    new-instance v10, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$8;

    move-object/from16 v11, p0

    move-object v12, v4

    move-object v13, v5

    move-object v14, v6

    move-object/from16 v15, p1

    invoke-direct/range {v10 .. v15}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$8;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1640
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v2

    goto :goto_1
.end method

.method public datetimepicker(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 1
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    .prologue
    .line 1821
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->datetimeAndMonthPicker(Lcom/alibaba/lightapp/runtime/ActionRequest;Z)Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v0

    return-object v0
.end method

.method public decrypt(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 8
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1352
    :try_start_0
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v6, "data"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 1353
    .local v4, "jsonObject":Lorg/json/JSONObject;
    invoke-static {v4}, Lhrl;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v2

    .line 1354
    .local v2, "encryptMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v6, "corpId"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1355
    .local v0, "corpId":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v5

    invoke-virtual {v5, v0, v2}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    .line 1356
    .local v3, "encryptValueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-static {v3}, Lhrl;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1359
    .end local v0    # "corpId":Ljava/lang/String;
    .end local v2    # "encryptMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "encryptValueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-object v5

    .line 1357
    :catch_0
    move-exception v1

    .line 1358
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 1359
    new-instance v5, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v5, v6}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    goto :goto_0
.end method

.method public encrypt(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 8
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1338
    :try_start_0
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v6, "data"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 1339
    .local v4, "jsonObject":Lorg/json/JSONObject;
    invoke-static {v4}, Lhrl;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v2

    .line 1340
    .local v2, "encryptMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v6, "corpId"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1341
    .local v0, "corpId":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v5

    invoke-virtual {v5, v0, v2}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    .line 1342
    .local v3, "encryptValueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-static {v3}, Lhrl;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1345
    .end local v0    # "corpId":Ljava/lang/String;
    .end local v2    # "encryptMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "encryptValueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-object v5

    .line 1343
    :catch_0
    move-exception v1

    .line 1344
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 1345
    new-instance v5, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v5, v6}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    goto :goto_0
.end method

.method public fetchFileData(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 14
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v13, 0xc

    .line 3857
    const/4 v4, 0x0

    .line 3858
    .local v4, "mediaAccessToken":Ljava/lang/String;
    iget-object v9, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    if-eqz v9, :cond_0

    .line 3859
    iget-object v9, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v10, "mediaAccessToken"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3862
    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 3863
    const/4 v9, 0x2

    const-string/jumbo v10, "mediaAccessToken is null"

    invoke-static {v9, v10}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    iget-object v10, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-virtual {p0, v9, v10}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 3864
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v9

    .line 3957
    :goto_0
    return-object v9

    .line 3867
    :cond_1
    const-string/jumbo v9, "lightapp"

    const-string/jumbo v10, "biz.Util"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "fetchFileData meida:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3869
    move-object v1, v4

    .line 3871
    .local v1, "finalMediaAccessToken":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string/jumbo v10, "EXTRA_IM_MESSAGES_INFO"

    invoke-static {v9, v10}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3872
    .local v8, "msgsInfo":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 3873
    const-string/jumbo v9, "mediaAccessToken is invalidate"

    invoke-static {v13, v9}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    iget-object v10, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-virtual {p0, v9, v10}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 3875
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v9

    goto :goto_0

    .line 3878
    :cond_2
    const/4 v3, 0x0

    .line 3880
    .local v3, "matchMediaId":Ljava/lang/String;
    :try_start_0
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, v8}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 3881
    .local v6, "msgArray":Lorg/json/JSONArray;
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lez v9, :cond_4

    .line 3882
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v2, v9, :cond_4

    .line 3883
    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 3884
    .local v7, "msgInfo":Lorg/json/JSONObject;
    if-eqz v7, :cond_3

    .line 3885
    const-string/jumbo v9, "mediaAccessToken"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3886
    .local v5, "mediaToken":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 3887
    const-string/jumbo v9, "content"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 3882
    .end local v5    # "mediaToken":Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3892
    .end local v2    # "i":I
    .end local v6    # "msgArray":Lorg/json/JSONArray;
    .end local v7    # "msgInfo":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 3893
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 3896
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 3897
    const-string/jumbo v9, "mediaAccessToken is invalidate"

    invoke-static {v13, v9}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    iget-object v10, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-virtual {p0, v9, v10}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 3899
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v9

    goto/16 :goto_0

    .line 3902
    :cond_5
    const-string/jumbo v9, "lightapp"

    const-string/jumbo v10, "biz.Util"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "fetchFileData start meida:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3903
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v9

    new-instance v10, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$33;

    invoke-direct {v10, p0, v1, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$33;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/lang/String;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    .line 3904
    invoke-virtual {v9, v3, v10}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->c(Ljava/lang/String;Lcma;)V

    .line 3957
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v9

    goto/16 :goto_0
.end method

.method public fetchImageData(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 6
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x1

    .line 642
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mFetchImageDataCallbackName:Ljava/lang/String;

    .line 643
    const-string/jumbo v0, "lightapp"

    const-string/jumbo v1, "biz.Util"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "request fetchImageData "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mFetchImageDataCallbackName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v1, "quality"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mImageCompressQuality:I

    .line 646
    iget v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mImageCompressQuality:I

    if-gt v0, v5, :cond_0

    iget v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mImageCompressQuality:I

    if-gtz v0, :cond_1

    .line 647
    :cond_0
    iput v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mImageCompressQuality:I

    .line 650
    :cond_1
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    invoke-direct {p0, v0, v4, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->nav2Image(Lorg/json/JSONObject;IZ)V

    .line 651
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDDRes(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 6
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 473
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->buildUploadImageMethod(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadImageCallbackName:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;

    .line 475
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadImageCallbackName:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;

    if-eqz v1, :cond_0

    .line 476
    iput-boolean v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mIsDDResName:Z

    .line 477
    const-string/jumbo v1, "lightapp"

    const-string/jumbo v2, "biz.Util"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "request uploadImage "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadImageCallbackName:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;->mCallbackId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    if-nez v1, :cond_1

    const/16 v0, 0x9

    .line 480
    .local v0, "max":I
    :goto_0
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    invoke-direct {p0, v1, v0, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->nav2Image(Lorg/json/JSONObject;IZ)V

    .line 483
    .end local v0    # "max":I
    :cond_0
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v1

    return-object v1

    .line 479
    :cond_1
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v2, "max"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getLocaleAndNationByCorpId(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 9
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 488
    if-eqz p1, :cond_1

    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    if-eqz v5, :cond_1

    .line 489
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v6, "corpId"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 490
    .local v0, "corpId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 491
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v5

    invoke-virtual {v5}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v4

    .line 492
    .local v4, "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v4, :cond_1

    iget-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v5, :cond_1

    .line 493
    iget-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 494
    .local v3, "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v3, :cond_0

    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v6, :cond_0

    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->corpId:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 495
    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->corpId:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 496
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 498
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v5, "locale"

    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->getLocale()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 499
    const-string/jumbo v5, "nation"

    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->getNation()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 500
    new-instance v5, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v5, v6, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    .end local v0    # "corpId":Ljava/lang/String;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .end local v4    # "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    :goto_0
    return-object v5

    .line 501
    .restart local v0    # "corpId":Ljava/lang/String;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v3    # "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .restart local v4    # "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    :catch_0
    move-exception v1

    .line 502
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 503
    new-instance v5, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v7, 0x3

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 511
    .end local v0    # "corpId":Ljava/lang/String;
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .end local v4    # "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    :cond_1
    new-instance v5, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v7, "org not found"

    invoke-direct {v5, v6, v7}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public monthPicker(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 1
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    .prologue
    .line 1816
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->datetimeAndMonthPicker(Lcom/alibaba/lightapp/runtime/ActionRequest;Z)Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v0

    return-object v0
.end method

.method public multiSelect(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 1
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    .prologue
    .line 1705
    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$10;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$10;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1774
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 12
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 3244
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/Plugin;->onActivityResult(IILandroid/content/Intent;)V

    .line 3245
    const-string/jumbo v7, "lightapp"

    const-string/jumbo v8, "biz.Util"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "Activity ret "

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 3246
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3245
    invoke-static {v7, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3247
    const/4 v7, 0x1

    if-ne p1, v7, :cond_b

    const/4 v7, -0x1

    if-ne p2, v7, :cond_b

    .line 3248
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadImageCallbackName:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;

    if-eqz v7, :cond_0

    .line 3249
    const-string/jumbo v7, "lightapp"

    const-string/jumbo v8, "biz.Util"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "activity ret req="

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadImageCallbackName:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;

    iget-object v11, v11, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;->mCallbackId:Ljava/lang/String;

    aput-object v11, v9, v10

    .line 3250
    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3249
    invoke-static {v7, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3253
    :cond_0
    iget-boolean v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mIsShuiyin:Z

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mCaptureUri:Landroid/net/Uri;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mCaptureUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 3255
    iget-boolean v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mSaveImageToLocal:Z

    if-eqz v7, :cond_1

    .line 3256
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mCaptureUri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alibaba/laiwang/photokit/utils/ImageUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 3259
    :cond_1
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mCaptureUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->compressUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3261
    .local v3, "path":Ljava/lang/String;
    const-string/jumbo v8, "lightapp"

    const-string/jumbo v9, "biz.Util"

    const/4 v7, 0x2

    new-array v10, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v11, "Util path path="

    aput-object v11, v10, v7

    const/4 v11, 0x1

    if-eqz v3, :cond_4

    move-object v7, v3

    :goto_0
    aput-object v7, v10, v11

    .line 3262
    invoke-static {v10}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3261
    invoke-static {v8, v9, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3263
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 15031
    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lhrp;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 3264
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3265
    .local v5, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3267
    .local v0, "ddResUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mFromImage:Z

    if-eqz v7, :cond_5

    .line 3268
    new-instance v7, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-direct {p0, v3, v5, v0, v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->uploadImage(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 3408
    .end local v0    # "ddResUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "path":Ljava/lang/String;
    .end local v5    # "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    const/4 v7, 0x1

    if-ne p1, v7, :cond_3

    .line 3409
    const/4 v7, 0x3

    iput v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mJsapiStatus:I

    .line 3411
    :cond_3
    :goto_2
    return-void

    .line 3261
    .restart local v3    # "path":Ljava/lang/String;
    :cond_4
    const-string/jumbo v7, ""

    goto :goto_0

    .line 3270
    .restart local v0    # "ddResUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3271
    invoke-direct {p0, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->uploadFile(Ljava/util/List;)V

    goto :goto_1

    .line 3273
    .end local v0    # "ddResUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "path":Ljava/lang/String;
    .end local v5    # "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    iget-boolean v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mIsShuiyin:Z

    if-eqz v7, :cond_2

    .line 3275
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getRealFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 3276
    .restart local v3    # "path":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 3277
    const-string/jumbo v7, "lightapp"

    const-string/jumbo v8, "biz.Util"

    const-string/jumbo v9, "Shuiyin camera return null"

    invoke-static {v7, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 3281
    :cond_7
    iget-boolean v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mSaveImageToLocal:Z

    if-eqz v7, :cond_8

    .line 3282
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v3}, Lcom/alibaba/laiwang/photokit/utils/ImageUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 3285
    :cond_8
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getRealFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->compressUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3287
    const-string/jumbo v8, "lightapp"

    const-string/jumbo v9, "biz.Util"

    const/4 v7, 0x2

    new-array v10, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v11, "Util path path="

    aput-object v11, v10, v7

    const/4 v11, 0x1

    if-eqz v3, :cond_9

    move-object v7, v3

    :goto_3
    aput-object v7, v10, v11

    .line 3288
    invoke-static {v10}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3287
    invoke-static {v8, v9, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3290
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 16031
    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lhrp;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 3291
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3292
    .restart local v5    # "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3294
    .restart local v0    # "ddResUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mFromImage:Z

    if-eqz v7, :cond_a

    .line 3295
    new-instance v7, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-direct {p0, v3, v5, v0, v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->uploadImage(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;)V

    goto/16 :goto_1

    .line 3287
    .end local v0    # "ddResUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_9
    const-string/jumbo v7, ""

    goto :goto_3

    .line 3297
    .restart local v0    # "ddResUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_a
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3298
    invoke-direct {p0, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->uploadFile(Ljava/util/List;)V

    goto/16 :goto_1

    .line 3301
    .end local v0    # "ddResUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "path":Ljava/lang/String;
    .end local v5    # "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_b
    const/4 v7, 0x4

    if-ne p1, v7, :cond_d

    .line 3302
    const-string/jumbo v7, "lightapp"

    const-string/jumbo v8, "biz.Util"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "activity ret req="

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mVideoRecordCallbackName:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3303
    const/4 v7, -0x1

    if-eq p2, v7, :cond_c

    .line 3304
    const/4 v7, -0x1

    const-string/jumbo v8, "Cancel recording"

    invoke-static {v7, v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mVideoRecordCallbackName:Ljava/lang/String;

    invoke-virtual {p0, v7, v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 3305
    const-string/jumbo v7, "lightapp"

    const-string/jumbo v8, "biz.Util"

    const-string/jumbo v9, "Recording cancel"

    invoke-static {v7, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3307
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 3308
    .local v4, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v7, "code"

    const-string/jumbo v8, "-1"

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3309
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v7

    const/4 v8, 0x0

    const-string/jumbo v9, "ding_card_active_upload_fail"

    invoke-interface {v7, v8, v9, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_2

    .line 3312
    .end local v4    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_c
    const-string/jumbo v7, "biz.Util"

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v7

    new-instance v8, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$27;

    invoke-direct {v8, p0, p3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$27;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Landroid/content/Intent;)V

    invoke-interface {v7, v8}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 3374
    :cond_d
    const/4 v7, 0x5

    if-ne p1, v7, :cond_12

    .line 3375
    const/4 v7, -0x1

    if-ne p2, v7, :cond_10

    .line 3376
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mSelectEmojiCallbackId:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_f

    .line 3377
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 3378
    .local v2, "jsonObject":Lorg/json/JSONObject;
    if-eqz p3, :cond_e

    .line 3380
    :try_start_0
    const-string/jumbo v7, "emoji"

    const-string/jumbo v8, "emoji"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3385
    :cond_e
    :goto_4
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mSelectEmojiCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v2, v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->success(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 3387
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :cond_f
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mSelectEmojiCallbackId:Ljava/lang/String;

    goto/16 :goto_1

    .line 3381
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 3382
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4

    .line 3389
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :cond_10
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mSelectEmojiCallbackId:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_11

    .line 3390
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mSelectEmojiCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->cancel(Ljava/lang/String;)V

    .line 3392
    :cond_11
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mSelectEmojiCallbackId:Ljava/lang/String;

    goto/16 :goto_1

    .line 3394
    :cond_12
    const/4 v7, 0x6

    if-ne p1, v7, :cond_2

    .line 3395
    const-string/jumbo v7, "lightapp"

    const-string/jumbo v8, "biz.Util"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "activity ret req="

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadAttachmentCallbackName:Ljava/lang/String;

    aput-object v11, v9, v10

    .line 3396
    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3395
    invoke-static {v7, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3397
    const/4 v7, -0x1

    if-eq p2, v7, :cond_13

    .line 3398
    const/4 v7, -0x1

    const-string/jumbo v8, "Cancel recording"

    invoke-static {v7, v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadAttachmentCallbackName:Ljava/lang/String;

    invoke-virtual {p0, v7, v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 3399
    const-string/jumbo v7, "lightapp"

    const-string/jumbo v8, "biz.Util"

    const-string/jumbo v9, "Recording cancel"

    invoke-static {v7, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3403
    :cond_13
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v7

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->b(Landroid/os/Bundle;)Ldco;

    move-result-object v6

    .line 3404
    .local v6, "videoRecordResult":Ldco;
    invoke-direct {p0, v6}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->uploadVideoToSpace(Ldco;)V

    goto/16 :goto_1
.end method

.method public onCreate()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 341
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onCreate()V

    .line 342
    const-string/jumbo v0, "lightapp"

    const-string/jumbo v1, "biz.Util"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onCreate "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-class v0, Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;

    invoke-static {v0}, Lhqv;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUserDataSource:Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;

    .line 344
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v0

    const-class v1, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    invoke-virtual {v0, v1}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareInterface:Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    .line 345
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareInterface:Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newShareConstants(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;->init(Landroid/content/Context;Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;)V

    .line 346
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->initAllShareList(I)V

    .line 347
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->registerChoosePictureReceiver()V

    .line 348
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->registerScanReceiver()V

    .line 349
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->registerPreviewReceiver()V

    .line 350
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->registerFileReceiver()V

    .line 351
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->registerSpaceReceiver()V

    .line 352
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->registerScanCardReceiver()V

    .line 353
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->registerShareReceiver()V

    .line 354
    return-void
.end method

.method public onDestroy()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 363
    const-string/jumbo v0, "lightapp"

    const-string/jumbo v1, "biz.Util"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[biz.Util] onDestroy "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUserDataSource:Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;

    .line 365
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->unregisterReceiver()V

    .line 367
    const/4 v0, 0x2

    iget v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mJsapiStatus:I

    if-ne v0, v1, :cond_2

    .line 369
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "lightapp"

    const-string/jumbo v2, "biz.Util"

    const-string/jumbo v3, "false"

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/statistics/Statistics;->commitCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 374
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mParentBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 376
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mParentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    :cond_1
    :goto_1
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onDestroy()V

    .line 382
    return-void

    .line 370
    :cond_2
    const/4 v0, 0x3

    iget v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mJsapiStatus:I

    if-ne v0, v1, :cond_0

    .line 372
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "lightapp"

    const-string/jumbo v2, "biz.Util"

    const-string/jumbo v3, "true"

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/statistics/Statistics;->commitCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 358
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onPause()V

    .line 359
    return-void
.end method

.method public open(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 7
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 388
    :try_start_0
    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v5, "name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 389
    .local v0, "action":Ljava/lang/String;
    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v5, "params"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 391
    .local v3, "params":Lorg/json/JSONObject;
    const-string/jumbo v4, "chat"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 392
    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->openChat(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v4

    .line 421
    .end local v0    # "action":Ljava/lang/String;
    .end local v3    # "params":Lorg/json/JSONObject;
    :goto_0
    return-object v4

    .line 394
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v3    # "params":Lorg/json/JSONObject;
    :cond_0
    const-string/jumbo v4, "mailAttachment"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 395
    invoke-direct {p0, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->openAttachment(Lorg/json/JSONObject;)Z

    move-result v2

    .line 396
    .local v2, "isOpenActionSuccess":Z
    if-eqz v2, :cond_1

    new-instance v4, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v5, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v4, v5}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 419
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "isOpenActionSuccess":Z
    .end local v3    # "params":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 420
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 421
    new-instance v4, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v5, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V

    goto :goto_0

    .line 396
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v2    # "isOpenActionSuccess":Z
    .restart local v3    # "params":Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    new-instance v4, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v5, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v4, v5}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    goto :goto_0

    .line 398
    .end local v2    # "isOpenActionSuccess":Z
    :cond_2
    const-string/jumbo v4, "call"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 399
    invoke-direct {p0, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->openDingRecord(Lorg/json/JSONObject;)Z

    move-result v2

    .line 400
    .restart local v2    # "isOpenActionSuccess":Z
    if-eqz v2, :cond_3

    new-instance v4, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v5, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v4, v5}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    goto :goto_0

    :cond_3
    new-instance v4, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v5, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v4, v5}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    goto :goto_0

    .line 402
    .end local v2    # "isOpenActionSuccess":Z
    :cond_4
    const-string/jumbo v4, "profile"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 403
    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->openProfile(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v4

    goto :goto_0

    .line 405
    :cond_5
    const-string/jumbo v4, "contactAdd"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 406
    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->openContactAdd(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 407
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v4

    goto/16 :goto_0

    .line 408
    :cond_6
    const-string/jumbo v4, "friendAdd"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 409
    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->openFriendAdd(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 410
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v4

    goto/16 :goto_0

    .line 411
    :cond_7
    const-string/jumbo v4, "manageOrg"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 412
    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->openManageOrg(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v4

    goto/16 :goto_0

    .line 413
    :cond_8
    const-string/jumbo v4, "customer"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 414
    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->openCustomer(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 415
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v4

    goto/16 :goto_0

    .line 417
    :cond_9
    new-instance v4, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v5, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->NO_RESULT:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v4, v5}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public openFloatWindow(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 3
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 3700
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3701
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$31;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$31;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3709
    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v1, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    return-object v1
.end method

.method public openLink(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 24
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    .prologue
    .line 1118
    :try_start_0
    const-string/jumbo v19, "openLink"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->isOutIntervalTime(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 1119
    new-instance v19, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v20, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/16 v21, 0x1bc

    const-string/jumbo v22, "invoke too fast"

    .line 1120
    invoke-static/range {v21 .. v22}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    invoke-direct/range {v19 .. v21}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 1224
    :goto_0
    return-object v19

    .line 1123
    :cond_0
    invoke-static {}, Lhdv;->a()Z

    move-result v19

    if-nez v19, :cond_1

    .line 1124
    new-instance v19, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v20, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v21, "too many links to open"

    invoke-direct/range {v19 .. v21}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1222
    :catch_0
    move-exception v9

    .line 1223
    .local v9, "e":Lorg/json/JSONException;
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    .line 1224
    new-instance v19, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v20, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct/range {v19 .. v20}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    goto :goto_0

    .line 1127
    .end local v9    # "e":Lorg/json/JSONException;
    :cond_1
    :try_start_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1128
    .local v16, "pageUrl":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    move-object/from16 v19, v0

    const-string/jumbo v20, "url"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1129
    .local v14, "link":Ljava/lang/String;
    invoke-static {}, Lhqx;->b()Lhqw;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lhqw;->a(Ljava/lang/String;)Lhqy;

    move-result-object v17

    .line 1130
    .local v17, "safeTunnelMicroAppInfo":Lhqy;
    if-eqz v17, :cond_2

    .line 1131
    invoke-static {}, Lhqx;->b()Lhqw;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-interface {v0, v14, v1}, Lhqw;->b(Ljava/lang/String;Lhqy;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 1132
    invoke-static {}, Lhqx;->b()Lhqw;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-interface {v0, v14, v1}, Lhqw;->a(Ljava/lang/String;Lhqy;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 1133
    new-instance v19, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v20, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/16 v21, 0xf

    const-string/jumbo v22, "url is not in safePaths"

    invoke-static/range {v21 .. v22}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    invoke-direct/range {v19 .. v21}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 1136
    :cond_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    move-object/from16 v19, v0

    const-string/jumbo v20, "ddAppId"

    const-wide v22, 0x7fffffffffffffffL

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1137
    .local v6, "appId":J
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    move-object/from16 v19, v0

    const-string/jumbo v20, "ddAgentId"

    const-wide v22, 0x7fffffffffffffffL

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 1139
    .local v4, "agentId":J
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v13

    .line 1140
    .local v13, "lightAppRuntimeReverseInterface":Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 1141
    .local v8, "bundle":Landroid/os/Bundle;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    move-object/from16 v19, v0

    const-string/jumbo v20, "title"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1142
    .local v18, "title":Ljava/lang/String;
    const-string/jumbo v19, "title"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    const-string/jumbo v19, "url"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    const-string/jumbo v19, "micro_app"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1145
    const-string/jumbo v19, "micro_agent"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1149
    invoke-static {v14}, Lhec;->a(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;

    move/from16 v19, v0

    if-nez v19, :cond_4

    .line 1150
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v19

    const v20, 0x10008000

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v0, v8, v1}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToCommonWebView(Landroid/content/Context;Landroid/os/Bundle;I)V

    .line 1220
    :cond_3
    :goto_1
    new-instance v19, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v20, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct/range {v19 .. v20}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    goto/16 :goto_0

    .line 1151
    :cond_4
    const-wide/16 v20, 0x9e

    cmp-long v19, v6, v20

    if-nez v19, :cond_6

    .line 1152
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v19

    const-string/jumbo v20, "f_auto_attendance_on_open_link"

    invoke-virtual/range {v19 .. v20}, Lchx;->a(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 1153
    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/alibaba/wukong/auth/AuthService;->isLogin()Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v19

    if-eqz v19, :cond_5

    .line 1155
    :try_start_2
    const-string/jumbo v19, "LIFECYCLE"

    invoke-static/range {v19 .. v19}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    .line 1156
    .local v12, "lifecycleMonitor":Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;
    const-string/jumbo v19, "lightapp"

    sget-object v20, Lhkx;->a:Ljava/lang/String;

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string/jumbo v23, "openLink startAutoAttendance background="

    aput-object v23, v21, v22

    const/16 v22, 0x1

    .line 1157
    invoke-interface {v12}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->isBackground()Z

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    .line 1156
    invoke-static/range {v21 .. v21}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    invoke-interface {v12}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->isBackground()Z

    move-result v19

    if-nez v19, :cond_5

    .line 1159
    invoke-static {}, Lhkx;->a()Lhkx;

    move-result-object v19

    const/16 v20, 0x3

    invoke-virtual/range {v19 .. v20}, Lhkx;->a(I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1164
    .end local v12    # "lifecycleMonitor":Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;
    :cond_5
    :goto_2
    :try_start_3
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 1165
    .local v15, "monitorInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v19, "app_id"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1166
    const-string/jumbo v19, "startDate"

    invoke-static {}, Lhrm;->a()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1167
    const-string/jumbo v19, "preload_keep_enable"

    const-string/jumbo v20, "false"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1168
    const-string/jumbo v19, "hit_preload"

    const-string/jumbo v20, "false"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1169
    const-string/jumbo v19, "hit_keep_alive"

    const-string/jumbo v20, "false"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1170
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    .line 1196
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0, v8}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToCommonWebView(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 1199
    invoke-static {v15}, Lcom/alibaba/lightapp/runtime/plugin/monitor/RuntimeMonitor;->setMonitorInfo(Ljava/util/Map;)V

    goto/16 :goto_1

    .line 1201
    .end local v15    # "monitorInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    move-object/from16 v0, p1

    iget v0, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->fromType:I

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    const-string/jumbo v19, "hybrid_wml_open_page_enable"

    const/16 v20, 0x1

    .line 1202
    invoke-static/range {v19 .. v20}, Lhdo;->b(Ljava/lang/String;Z)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 1203
    const/4 v10, 0x0

    .line 1204
    .local v10, "isLaunchSuccess":Z
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    instance-of v0, v0, Ljqd;

    move/from16 v19, v0

    if-eqz v19, :cond_7

    .line 1205
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v11

    check-cast v11, Ljqd;

    .line 1206
    .local v11, "iwmlContext":Ljqd;
    invoke-interface {v11}, Ljqd;->getRouter()Ljqr;

    move-result-object v19

    if-eqz v19, :cond_7

    .line 1207
    invoke-interface {v11}, Ljqd;->getRouter()Ljqr;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljqr;->a(Ljava/lang/String;)Z

    .line 1208
    const/4 v10, 0x1

    .line 1211
    .end local v11    # "iwmlContext":Ljqd;
    :cond_7
    if-nez v10, :cond_3

    .line 1212
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0, v8}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToCommonWebView(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 1213
    const-string/jumbo v19, "lightapp"

    const-string/jumbo v20, "biz.Util"

    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string/jumbo v23, "openLink from wml fail"

    aput-object v23, v21, v22

    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadImageCallbackName:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;->mCallbackId:Ljava/lang/String;

    move-object/from16 v23, v0

    aput-object v23, v21, v22

    const/16 v22, 0x2

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    move-object/from16 v23, v0

    aput-object v23, v21, v22

    invoke-static/range {v21 .. v21}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1217
    .end local v10    # "isLaunchSuccess":Z
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0, v8}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToCommonWebView(Landroid/content/Context;Landroid/os/Bundle;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    :catch_1
    move-exception v19

    goto/16 :goto_2
.end method

.method public presentWindow(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 1
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    .prologue
    .line 1236
    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->openLink(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v0

    return-object v0
.end method

.method public previewImage(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 17
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    .prologue
    .line 440
    const/4 v2, 0x1

    :try_start_0
    new-array v11, v2, [I

    .line 441
    .local v11, "index":[I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mPreviewCallbackName:Ljava/lang/String;

    .line 442
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v3, "current"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 443
    .local v8, "currentUrl":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v3, "urls"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 444
    .local v12, "jsonArray":Lorg/json/JSONArray;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v3, "showRemoveButton"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v15

    .line 446
    .local v15, "showRemoveButton":Z
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v13

    .line 447
    .local v13, "jsonArrayLength":I
    new-array v4, v13, [Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    .line 448
    .local v4, "photoObjects":[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v13, :cond_1

    .line 449
    invoke-virtual {v12, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 450
    .local v16, "url":Ljava/lang/String;
    new-instance v14, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    invoke-direct {v14}, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;-><init>()V

    .line 451
    .local v14, "photoObject":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    neg-int v2, v10

    int-to-long v2, v2

    iput-wide v2, v14, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->id:J

    .line 452
    move-object/from16 v0, v16

    iput-object v0, v14, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->url:Ljava/lang/String;

    .line 453
    aput-object v14, v4, v10

    .line 454
    move-object/from16 v0, v16

    invoke-static {v8, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 455
    const/4 v2, 0x0

    aput v10, v11, v2

    .line 448
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 458
    .end local v14    # "photoObject":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .end local v16    # "url":Ljava/lang/String;
    :cond_1
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 459
    .local v7, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "showRemove"

    invoke-virtual {v7, v2, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 460
    const-string/jumbo v2, "hide_list_button"

    const/4 v3, 0x1

    invoke-virtual {v7, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 461
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    const/4 v5, 0x0

    aget v5, v11, v5

    aget-object v5, v4, v5

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;ZLandroid/os/Bundle;)V

    .line 462
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 465
    .end local v4    # "photoObjects":[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .end local v7    # "bundle":Landroid/os/Bundle;
    .end local v8    # "currentUrl":Ljava/lang/String;
    .end local v10    # "i":I
    .end local v11    # "index":[I
    .end local v12    # "jsonArray":Lorg/json/JSONArray;
    .end local v13    # "jsonArrayLength":I
    .end local v15    # "showRemoveButton":Z
    :goto_1
    return-object v2

    .line 463
    :catch_0
    move-exception v9

    .line 464
    .local v9, "e":Lorg/json/JSONException;
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    .line 465
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v5, 0x3

    .line 466
    invoke-virtual {v9}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    .line 465
    invoke-static {v5, v6}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_1
.end method

.method public previewVideo(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 10
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x3

    .line 4579
    :try_start_0
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v6, "url"

    const-string/jumbo v7, ""

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 4580
    .local v4, "videoUrl":Ljava/lang/String;
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v6, "fileName"

    const-string/jumbo v7, ""

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 4581
    .local v2, "fileName":Ljava/lang/String;
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v6, "thumbnail"

    const-string/jumbo v7, ""

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 4582
    .local v3, "thumbnail":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4583
    new-instance v5, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v7, 0x3

    const-string/jumbo v8, "video url cannot be null or empty"

    invoke-static {v7, v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 4598
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v3    # "thumbnail":Ljava/lang/String;
    .end local v4    # "videoUrl":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 4585
    .restart local v2    # "fileName":Ljava/lang/String;
    .restart local v3    # "thumbnail":Ljava/lang/String;
    .restart local v4    # "videoUrl":Ljava/lang/String;
    :cond_0
    invoke-static {v4}, Lhcs;->d(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4586
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4587
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-nez v5, :cond_2

    .line 4588
    :cond_1
    new-instance v5, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v7, 0x3

    const-string/jumbo v8, "video url(local file) not exist"

    invoke-static {v7, v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4596
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v3    # "thumbnail":Ljava/lang/String;
    .end local v4    # "videoUrl":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 4597
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4598
    new-instance v5, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    .line 4599
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    .line 4598
    invoke-static {v9, v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 4591
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "fileName":Ljava/lang/String;
    .restart local v3    # "thumbnail":Ljava/lang/String;
    .restart local v4    # "videoUrl":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4592
    new-instance v5, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v7, 0x3

    const-string/jumbo v8, "fileName cannot be null or empty"

    invoke-static {v7, v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 4594
    :cond_3
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v5

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6, v4, v2, v3}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4595
    new-instance v5, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v5, v6}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public qrcode(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 4
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1078
    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mScanCallbackName:Ljava/lang/String;

    .line 1079
    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v3, "keep"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1080
    .local v0, "isKeepScan":Z
    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v3, "tips"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1081
    .local v1, "tips":Ljava/lang/String;
    const/4 v2, 0x0

    const-string/jumbo v3, "all"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->navigatorToScan(ZLjava/lang/String;ZLjava/lang/String;)V

    .line 1082
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v2

    return-object v2
.end method

.method public recordVideoToUpload(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 10
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 3793
    iget-object v8, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mVideoRecordCallbackName:Ljava/lang/String;

    .line 3794
    iget-object v8, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v9, "minDuration"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 3795
    .local v5, "minDuration":I
    iget-object v8, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v9, "maxDuration"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 3796
    .local v3, "maxDuration":I
    iget-object v8, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v9, "name"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mVideoRecordFileName:Ljava/lang/String;

    .line 3797
    iget-object v8, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v9, "url"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mVideoUploadUrl:Ljava/lang/String;

    .line 3798
    iget-object v8, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v9, "formData"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 3799
    .local v0, "extraData":Lorg/json/JSONObject;
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mVideoUploadUrl:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3800
    const/4 v8, 0x2

    const-string/jumbo v9, "parameter invalid"

    invoke-static {v8, v9}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mVideoRecordCallbackName:Ljava/lang/String;

    invoke-virtual {p0, v8, v9}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 3852
    :goto_0
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v8

    return-object v8

    .line 3802
    :cond_0
    if-gtz v5, :cond_1

    .line 3803
    const/4 v5, 0x1

    .line 3805
    :cond_1
    if-gtz v3, :cond_2

    .line 3806
    const/4 v3, 0x6

    .line 3808
    :cond_2
    if-le v5, v3, :cond_3

    .line 3809
    move v5, v3

    .line 3811
    :cond_3
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mVideoUploadUrl:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3812
    const-string/jumbo v8, "video"

    iput-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mVideoUploadUrl:Ljava/lang/String;

    .line 3814
    :cond_4
    if-eqz v0, :cond_6

    .line 3815
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mVideoUploadFormData:Ljava/util/Map;

    .line 3817
    :try_start_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 3818
    .local v2, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 3819
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3820
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 3821
    .local v7, "value":Ljava/lang/Object;
    instance-of v8, v7, Ljava/lang/String;

    if-eqz v8, :cond_5

    .line 3822
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mVideoUploadFormData:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v7    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v8

    .line 3829
    :cond_6
    move v4, v3

    .line 3830
    .local v4, "maxDurationValue":I
    move v6, v5

    .line 3831
    .local v6, "minDurationValue":I
    new-instance v8, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$32;

    invoke-direct {v8, p0, v4, v6, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$32;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;IILcom/alibaba/lightapp/runtime/ActionRequest;)V

    invoke-virtual {p0, v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public saveImage(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 9
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x1

    .line 4193
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v6, "autoCapture"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 4194
    .local v0, "autoCapture":Z
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v6, "image"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4195
    .local v2, "imageUrl":Ljava/lang/String;
    if-nez v0, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4196
    new-instance v5, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v7, "Params is invalid"

    invoke-static {v8, v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 4274
    :goto_0
    return-object v5

    .line 4198
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 4199
    .local v1, "context":Landroid/content/Context;
    if-eqz v0, :cond_3

    .line 4200
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getParentView()Landroid/view/View;

    move-result-object v4

    .line 4201
    .local v4, "view":Landroid/view/View;
    if-eqz v4, :cond_1

    instance-of v5, v1, Landroid/app/Activity;

    if-nez v5, :cond_2

    .line 4202
    :cond_1
    new-instance v5, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v7, 0x3

    const-string/jumbo v8, "Capture view err"

    invoke-static {v7, v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 4204
    :cond_2
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v5

    new-instance v6, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$38;

    invoke-direct {v6, p0, v4, p1, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$38;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Landroid/view/View;Lcom/alibaba/lightapp/runtime/ActionRequest;Landroid/content/Context;)V

    invoke-virtual {v5, v6}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 4274
    .end local v4    # "view":Landroid/view/View;
    :goto_1
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v5

    goto :goto_0

    .line 4228
    :cond_3
    const-string/jumbo v5, "REQUEST"

    invoke-static {v5}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/request/Request;

    .line 4229
    .local v3, "request":Lcom/alibaba/doraemon/request/Request;
    invoke-interface {v3, v8}, Lcom/alibaba/doraemon/request/Request;->setCacheable(Z)Lcom/alibaba/doraemon/request/Request;

    move-result-object v5

    .line 4230
    invoke-interface {v5, v2}, Lcom/alibaba/doraemon/request/Request;->setCacheKey(Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    move-result-object v5

    .line 4231
    invoke-interface {v5, v2}, Lcom/alibaba/doraemon/request/Request;->setRequestUrl(Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    move-result-object v5

    const-string/jumbo v6, "biz.Util"

    .line 4232
    invoke-interface {v5, v6}, Lcom/alibaba/doraemon/request/Request;->setPerfTag(Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    move-result-object v5

    new-instance v6, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$39;

    invoke-direct {v6, p0, p1, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$39;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lcom/alibaba/lightapp/runtime/ActionRequest;Landroid/content/Context;)V

    .line 4233
    invoke-interface {v5, v6}, Lcom/alibaba/doraemon/request/Request;->setResponseReceiver(Lcom/alibaba/doraemon/request/ResponseReceiver;)Lcom/alibaba/doraemon/request/Request;

    .line 4272
    invoke-interface {v3}, Lcom/alibaba/doraemon/request/Request;->start()V

    goto :goto_1
.end method

.method public scan(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 8
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 1087
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mScanCallbackName:Ljava/lang/String;

    .line 1088
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v6, "keep"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1089
    .local v0, "isKeepScan":Z
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v6, "tips"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1090
    .local v2, "tips":Ljava/lang/String;
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v6, "type"

    const-string/jumbo v7, "all"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1092
    .local v3, "type":Ljava/lang/String;
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v6, "shouldCallback"

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1093
    .local v1, "shouldCallback":Z
    if-nez v1, :cond_0

    :goto_0
    invoke-direct {p0, v0, v2, v4, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->navigatorToScan(ZLjava/lang/String;ZLjava/lang/String;)V

    .line 1094
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v4

    return-object v4

    .line 1093
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public scanCard(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 3
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 3670
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mScanCardCallbackName:Ljava/lang/String;

    .line 3671
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mScanCardUrl:Ljava/lang/String;

    .line 3672
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3673
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "activity_identify"

    const-string/jumbo v2, "biz.Util"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3674
    const-class v1, Lcom/alibaba/android/dingtalk/userbase/extras/EnumExtras$RecognizeCardType;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/dingtalk/userbase/extras/EnumExtras$RecognizeCardType;->NameCard:Lcom/alibaba/android/dingtalk/userbase/extras/EnumExtras$RecognizeCardType;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 3675
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v2, v1, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->n(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 3676
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v1

    return-object v1
.end method

.method public selectEmoji(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 3
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 430
    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mSelectEmojiCallbackId:Ljava/lang/String;

    .line 431
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 432
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/SelectEmojiActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 433
    .local v1, "intent":Landroid/content/Intent;
    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 434
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v2

    return-object v2
.end method

.method public setScreenBrightnessAndKeepOn(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 9
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 4529
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    .line 4530
    .local v0, "args":Lorg/json/JSONObject;
    if-nez v0, :cond_0

    .line 4531
    new-instance v5, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v7, 0x2

    const-string/jumbo v8, "invalid args"

    invoke-static {v7, v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 4554
    :goto_0
    return-object v5

    .line 4534
    :cond_0
    const-string/jumbo v5, "isKeep"

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 4535
    .local v4, "isKeep":Z
    const-string/jumbo v5, "brightness"

    const-wide v6, 0x3fe99999a0000000L    # 0.800000011920929

    invoke-virtual {v0, v5, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    .line 4536
    .local v2, "brightness":D
    const-wide v6, 0x3fb99999a0000000L    # 0.10000000149011612

    cmpg-double v5, v2, v6

    if-gez v5, :cond_2

    .line 4537
    const-wide v2, 0x3fb99999a0000000L    # 0.10000000149011612

    .line 4542
    :cond_1
    :goto_1
    double-to-float v1, v2

    .line 4543
    .local v1, "finalBrightness":F
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v5

    new-instance v6, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$44;

    invoke-direct {v6, p0, v4, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$44;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;ZF)V

    invoke-virtual {v5, v6}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 4554
    new-instance v5, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v5, v6}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    goto :goto_0

    .line 4538
    .end local v1    # "finalBrightness":F
    :cond_2
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v2, v6

    if-lez v5, :cond_1

    .line 4539
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    goto :goto_1
.end method

.method public share(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 11
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1424
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mShareCallbackName:Ljava/lang/String;

    .line 1425
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1426
    .local v7, "linkUrl":Ljava/lang/String;
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v1, "image"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1427
    .local v8, "picUrl":Ljava/lang/String;
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1428
    .local v5, "title":Ljava/lang/String;
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1429
    .local v6, "content":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1430
    .local v4, "shareInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/tide/share/business/ShareInfo;>;"
    invoke-direct {p0, v5, v6, v7, v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->initShareInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    move-result-object v9

    .line 1432
    .local v9, "shareUnitInfo":Lcom/alibaba/laiwang/tide/share/business/ShareInfo;
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v1, "custom"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1433
    const/4 v2, 0x4

    .line 1437
    .local v2, "type":I
    :goto_0
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v1, "style"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    .line 1438
    .local v10, "style":I
    packed-switch v2, :pswitch_data_0

    .line 1457
    :goto_1
    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$6;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$6;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;ILcom/alibaba/lightapp/runtime/ActionRequest;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1485
    const/4 v0, 0x4

    if-ne v2, v0, :cond_1

    .line 1486
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v0

    .line 1488
    :goto_2
    return-object v0

    .line 1435
    .end local v2    # "type":I
    .end local v10    # "style":I
    :cond_0
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .restart local v2    # "type":I
    goto :goto_0

    .line 1440
    .restart local v10    # "style":I
    :pswitch_0
    invoke-direct {p0, v10}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->initAllShareList(I)V

    goto :goto_1

    .line 1443
    :pswitch_1
    invoke-direct {p0, v10}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->initShareToDDList(I)V

    goto :goto_1

    .line 1446
    :pswitch_2
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->clearShareList()V

    goto :goto_1

    .line 1449
    :pswitch_3
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->initShareAppExceptDDList()V

    goto :goto_1

    .line 1452
    :pswitch_4
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    invoke-direct {p0, v0, v4, v9}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->initShareAppCustomDDList(Lorg/json/JSONObject;Ljava/util/List;Lcom/alibaba/laiwang/tide/share/business/ShareInfo;)V

    goto :goto_1

    .line 1488
    :cond_1
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v0, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    goto :goto_2

    .line 1438
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public shareImage(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 9
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x1

    .line 4010
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v6, "autoCapture"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 4011
    .local v0, "autoCapture":Z
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v6, "image"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4012
    .local v2, "imageUrl":Ljava/lang/String;
    if-nez v0, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4013
    new-instance v5, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v7, "Params is invalid"

    invoke-static {v8, v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 4080
    :goto_0
    return-object v5

    .line 4015
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 4016
    .local v1, "context":Landroid/content/Context;
    if-eqz v0, :cond_3

    .line 4017
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getParentView()Landroid/view/View;

    move-result-object v4

    .line 4018
    .local v4, "view":Landroid/view/View;
    if-eqz v4, :cond_1

    instance-of v5, v1, Landroid/app/Activity;

    if-nez v5, :cond_2

    .line 4019
    :cond_1
    new-instance v5, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v7, 0x3

    const-string/jumbo v8, "Capture view err"

    invoke-static {v7, v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 4021
    :cond_2
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v5

    new-instance v6, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$34;

    invoke-direct {v6, p0, v4, p1, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$34;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Landroid/view/View;Lcom/alibaba/lightapp/runtime/ActionRequest;Landroid/content/Context;)V

    invoke-virtual {v5, v6}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 4080
    .end local v4    # "view":Landroid/view/View;
    :goto_1
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v5

    goto :goto_0

    .line 4034
    :cond_3
    const-string/jumbo v5, "REQUEST"

    invoke-static {v5}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/request/Request;

    .line 4035
    .local v3, "request":Lcom/alibaba/doraemon/request/Request;
    invoke-interface {v3, v8}, Lcom/alibaba/doraemon/request/Request;->setCacheable(Z)Lcom/alibaba/doraemon/request/Request;

    move-result-object v5

    .line 4036
    invoke-interface {v5, v2}, Lcom/alibaba/doraemon/request/Request;->setCacheKey(Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    move-result-object v5

    .line 4037
    invoke-interface {v5, v2}, Lcom/alibaba/doraemon/request/Request;->setRequestUrl(Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    move-result-object v5

    const-string/jumbo v6, "biz.Util"

    .line 4038
    invoke-interface {v5, v6}, Lcom/alibaba/doraemon/request/Request;->setPerfTag(Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    move-result-object v5

    new-instance v6, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$35;

    invoke-direct {v6, p0, p1, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$35;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lcom/alibaba/lightapp/runtime/ActionRequest;Landroid/content/Context;)V

    .line 4039
    invoke-interface {v5, v6}, Lcom/alibaba/doraemon/request/Request;->setResponseReceiver(Lcom/alibaba/doraemon/request/ResponseReceiver;)Lcom/alibaba/doraemon/request/Request;

    .line 4078
    invoke-interface {v3}, Lcom/alibaba/doraemon/request/Request;->start()V

    goto :goto_1
.end method

.method public stickPage(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 9
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1365
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    .line 1366
    .local v1, "args":Lorg/json/JSONObject;
    if-nez v1, :cond_0

    .line 1368
    new-instance v5, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v7, 0x2

    const-string/jumbo v8, "invalid args"

    .line 1369
    invoke-static {v7, v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 1404
    :goto_0
    return-object v5

    .line 1372
    :cond_0
    const-string/jumbo v5, "url"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1373
    .local v4, "url":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1375
    new-instance v5, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v7, 0x3

    const-string/jumbo v8, "link url is null!"

    .line 1376
    invoke-static {v7, v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 1380
    :cond_1
    const-string/jumbo v5, "title"

    const-string/jumbo v6, ""

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1381
    .local v3, "title":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "com.workapp.lightapp.microapp.TOP"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1382
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "url"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1383
    const-string/jumbo v5, "title"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1385
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v5

    invoke-virtual {v5, v2}, Ldq;->a(Landroid/content/Intent;)Z

    .line 1388
    const-string/jumbo v5, "NAVIGATOR"

    invoke-static {v5}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v5

    const-string/jumbo v6, "https://qr.dingtalk.com/ding/home.html"

    new-instance v7, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$5;

    invoke-direct {v7, p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$5;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)V

    .line 1389
    invoke-interface {v5, v6, v7}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 1399
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v5

    instance-of v5, v5, Landroid/app/Activity;

    if-eqz v5, :cond_2

    .line 1400
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1401
    .local v0, "activity":Landroid/app/Activity;
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v0, v5, v6}, Lhrf;->a(Landroid/app/Activity;ZZ)Z

    .line 1404
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_2
    new-instance v5, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v5, v6}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    goto :goto_0
.end method

.method public systemShare(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 14
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x1

    .line 4108
    if-eqz p1, :cond_0

    iget-object v8, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v8

    instance-of v8, v8, Landroid/app/Activity;

    if-nez v8, :cond_1

    .line 4109
    :cond_0
    const-string/jumbo v8, "lightapp"

    const-string/jumbo v9, "biz.Util"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "system share param is invalid context="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v11

    instance-of v11, v11, Landroid/app/Activity;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4110
    new-instance v8, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v9, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v10, "Params is invalid"

    invoke-static {v12, v10}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 4185
    :goto_0
    return-object v8

    .line 4114
    :cond_1
    iget-object v8, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v9, "type"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    .line 4116
    .local v7, "type":I
    if-ne v7, v12, :cond_2

    .line 4118
    const-string/jumbo v8, "lightapp"

    const-string/jumbo v9, "biz.Util"

    const-string/jumbo v10, "system share link type is not support"

    invoke-static {v8, v9, v10}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4119
    new-instance v8, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v9, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v10, 0x5

    const-string/jumbo v11, "Android not support link type"

    invoke-static {v10, v11}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 4122
    :cond_2
    const/4 v8, 0x4

    if-ne v7, v8, :cond_5

    .line 4123
    iget-object v8, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v9, "title"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4124
    .local v6, "title":Ljava/lang/String;
    if-nez v6, :cond_3

    const/4 v6, 0x0

    .line 4125
    :goto_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 4126
    const-string/jumbo v8, "lightapp"

    const-string/jumbo v9, "biz.Util"

    const-string/jumbo v10, "system share param title is null"

    invoke-static {v8, v9, v10}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4127
    new-instance v8, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v9, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v10, "param title must be not null"

    invoke-static {v12, v10}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 4124
    :cond_3
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 4130
    :cond_4
    :try_start_0
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 4131
    .local v5, "sendIntent":Landroid/content/Intent;
    const-string/jumbo v8, "android.intent.action.SEND"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4132
    const-string/jumbo v8, "android.intent.extra.TEXT"

    invoke-virtual {v5, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4133
    const-string/jumbo v8, "text/plain"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 4134
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 4135
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 4136
    new-instance v8, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v9, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v8, v9}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 4137
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v5    # "sendIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 4138
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v8, "lightapp"

    const-string/jumbo v9, "biz.Util"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "system share text fail: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4139
    new-instance v8, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v9, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v10, "param title must be not null"

    invoke-static {v13, v10}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 4143
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v6    # "title":Ljava/lang/String;
    :cond_5
    if-eq v7, v13, :cond_6

    if-ne v7, v10, :cond_b

    .line 4144
    :cond_6
    iget-object v8, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v9, "images"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 4145
    .local v4, "images":Lorg/json/JSONArray;
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-nez v8, :cond_8

    .line 4146
    :cond_7
    const-string/jumbo v8, "lightapp"

    const-string/jumbo v9, "biz.Util"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "share param images is empty type:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4147
    new-instance v8, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v9, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v10, "param images array must be not empty"

    invoke-static {v12, v10}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 4149
    :cond_8
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    new-array v3, v8, [Ljava/lang/String;

    .line 4150
    .local v3, "imageArray":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v8, v3

    if-ge v2, v8, :cond_9

    .line 4151
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v2

    .line 4150
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 4153
    :cond_9
    const/4 v6, 0x0

    .line 4154
    .restart local v6    # "title":Ljava/lang/String;
    if-ne v7, v10, :cond_a

    .line 4155
    iget-object v8, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v9, "title"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4157
    :cond_a
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 4158
    .restart local v0    # "activity":Landroid/app/Activity;
    invoke-static {}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    move-result-object v9

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v8

    new-instance v10, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$37;

    invoke-direct {v10, p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$37;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    const-class v11, Lcma;

    invoke-interface {v8, v10, v11, v0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcma;

    invoke-virtual {v9, v0, v3, v6, v8}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->systemShareMultiNetImage(Landroid/app/Activity;[Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 4185
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v8

    goto/16 :goto_0

    .line 4182
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v2    # "i":I
    .end local v3    # "imageArray":[Ljava/lang/String;
    .end local v4    # "images":Lorg/json/JSONArray;
    .end local v6    # "title":Ljava/lang/String;
    :cond_b
    const-string/jumbo v8, "lightapp"

    const-string/jumbo v9, "biz.Util"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "share param type is invalid: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4183
    new-instance v8, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v9, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v10, "share type is invalid"

    invoke-static {v12, v10}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto/16 :goto_0
.end method

.method public timepicker(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 10
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1780
    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    .line 1781
    .local v6, "args":Lorg/json/JSONObject;
    const-string/jumbo v0, "format"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1782
    .local v2, "format":Ljava/lang/String;
    const-string/jumbo v0, "value"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1784
    .local v9, "time":Ljava/lang/String;
    invoke-static {v9}, Lhro;->a(Ljava/lang/String;)I

    move-result v7

    .line 1785
    .local v7, "hour":I
    invoke-static {v9}, Lhro;->b(Ljava/lang/String;)I

    move-result v8

    .line 1787
    .local v8, "minute":I
    if-ltz v7, :cond_0

    if-ltz v8, :cond_0

    .line 1788
    move v3, v7

    .line 1789
    .local v3, "hourOfDay":I
    move v4, v8

    .line 1790
    .local v4, "minuteOfHour":I
    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$11;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$11;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/lang/String;IILcom/alibaba/lightapp/runtime/ActionRequest;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1810
    .end local v3    # "hourOfDay":I
    .end local v4    # "minuteOfHour":I
    :cond_0
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v0

    return-object v0
.end method

.method public timestamp(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 8
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 3681
    invoke-static {}, Lcom/laiwang/protocol/android/LWP;->currentServerTime()J

    move-result-wide v4

    .line 3682
    .local v4, "time":J
    const/4 v1, 0x0

    .line 3683
    .local v1, "fromLocal":Z
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gtz v3, :cond_0

    .line 3684
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 3685
    const/4 v1, 0x1

    .line 3688
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 3690
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v3, "timestamp"

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 3691
    const-string/jumbo v3, "local"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3695
    :goto_0
    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v3, v6, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    return-object v3

    .line 3692
    :catch_0
    move-exception v0

    .line 3693
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public uploadAttachment(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 6
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x3

    .line 952
    if-eqz p1, :cond_1

    .line 953
    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadAttachmentCallbackName:Ljava/lang/String;

    .line 954
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    .line 955
    .local v0, "args":Lorg/json/JSONObject;
    if-eqz v0, :cond_4

    .line 956
    const-string/jumbo v4, "types"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 957
    .local v3, "typesArray":Lorg/json/JSONArray;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 958
    invoke-direct {p0, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->getAttachmentItems(Lorg/json/JSONArray;)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 959
    .local v2, "items":[Ljava/lang/CharSequence;
    if-eqz v2, :cond_2

    array-length v4, v2

    if-lez v4, :cond_2

    .line 960
    array-length v4, v2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 961
    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 962
    .local v1, "itemName":Ljava/lang/String;
    new-instance v4, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$3;

    invoke-direct {v4, p0, v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$3;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 968
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v4

    .line 1000
    .end local v0    # "args":Lorg/json/JSONObject;
    .end local v1    # "itemName":Ljava/lang/String;
    .end local v2    # "items":[Ljava/lang/CharSequence;
    .end local v3    # "typesArray":Lorg/json/JSONArray;
    :goto_0
    return-object v4

    .line 970
    .restart local v0    # "args":Lorg/json/JSONObject;
    .restart local v2    # "items":[Ljava/lang/CharSequence;
    .restart local v3    # "typesArray":Lorg/json/JSONArray;
    :cond_0
    new-instance v4, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$4;

    invoke-direct {v4, p0, v2, v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$4;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;[Ljava/lang/CharSequence;Lorg/json/JSONObject;)V

    invoke-virtual {p0, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1000
    .end local v0    # "args":Lorg/json/JSONObject;
    .end local v2    # "items":[Ljava/lang/CharSequence;
    .end local v3    # "typesArray":Lorg/json/JSONArray;
    :cond_1
    :goto_1
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v4

    goto :goto_0

    .line 990
    .restart local v0    # "args":Lorg/json/JSONObject;
    .restart local v2    # "items":[Ljava/lang/CharSequence;
    .restart local v3    # "typesArray":Lorg/json/JSONArray;
    :cond_2
    const-string/jumbo v4, "types paramters wrong"

    invoke-static {v5, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadAttachmentCallbackName:Ljava/lang/String;

    invoke-virtual {p0, v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_1

    .line 994
    .end local v2    # "items":[Ljava/lang/CharSequence;
    :cond_3
    const-string/jumbo v4, "types can\'t be null"

    invoke-static {v5, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadAttachmentCallbackName:Ljava/lang/String;

    invoke-virtual {p0, v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_1

    .line 997
    .end local v3    # "typesArray":Lorg/json/JSONArray;
    :cond_4
    const-string/jumbo v4, "param is null"

    invoke-static {v5, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadAttachmentCallbackName:Ljava/lang/String;

    invoke-virtual {p0, v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public uploadImage(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 6
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 611
    iput v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadMethod:I

    .line 612
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->buildUploadImageMethod(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadImageCallbackName:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;

    .line 614
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadImageCallbackName:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;

    if-eqz v1, :cond_0

    .line 615
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mIsDDResName:Z

    .line 616
    const-string/jumbo v1, "lightapp"

    const-string/jumbo v2, "biz.Util"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "request uploadImage "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadImageCallbackName:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    if-nez v1, :cond_1

    const/16 v0, 0x9

    .line 620
    .local v0, "max":I
    :goto_0
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    invoke-direct {p0, v1, v0, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->nav2Image(Lorg/json/JSONObject;IZ)V

    .line 623
    .end local v0    # "max":I
    :cond_0
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v1

    return-object v1

    .line 617
    :cond_1
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v2, "max"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public uploadImageFromCamera(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 6
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 869
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->buildUploadImageMethod(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadImageCallbackName:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;

    .line 871
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadImageCallbackName:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;

    if-eqz v0, :cond_0

    .line 872
    iput-boolean v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mIsDDResName:Z

    .line 874
    const-string/jumbo v0, "lightapp"

    const-string/jumbo v1, "biz.Util"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "camera req "

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadImageCallbackName:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;->mCallbackId:Ljava/lang/String;

    aput-object v3, v2, v5

    const/4 v3, 0x2

    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 875
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 874
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    invoke-direct {p0, v0, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->nav2Camera(Lorg/json/JSONObject;Z)V

    .line 879
    :cond_0
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v0

    return-object v0
.end method

.method public uploadMedia(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 5
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 628
    const/4 v1, 0x2

    iput v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadMethod:I

    .line 629
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->buildUploadImageMethod(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadImageCallbackName:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;

    .line 630
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadImageCallbackName:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;

    if-eqz v1, :cond_0

    .line 631
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mIsDDResName:Z

    .line 632
    const-string/jumbo v1, "lightapp"

    const-string/jumbo v2, "biz.Util"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "request uploadMedia "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->mUploadImageCallbackName:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    if-nez v1, :cond_1

    const/16 v0, 0x9

    .line 635
    .local v0, "max":I
    :goto_0
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->nav2Image(Lorg/json/JSONObject;IZ)V

    .line 637
    .end local v0    # "max":I
    :cond_0
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v1

    return-object v1

    .line 633
    :cond_1
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v2, "max"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public ut(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 6
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1286
    :try_start_0
    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v5, "key"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1287
    .local v1, "key":Ljava/lang/String;
    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v5, "value"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1289
    .local v3, "value":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->stringToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 1291
    .local v2, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5, v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1293
    new-instance v4, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v5, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v4, v5}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1296
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "value":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 1294
    :catch_0
    move-exception v0

    .line 1295
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1296
    new-instance v4, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v5, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v4, v5}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    goto :goto_0
.end method

.method public vip(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 8
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1315
    :try_start_0
    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v7, "moduleName"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1316
    .local v3, "moduleName":Ljava/lang/String;
    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v7, "subtype"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1317
    .local v4, "subtype":I
    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v7, "desc"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1318
    .local v0, "desc":Ljava/lang/String;
    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v7, "extra"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1319
    .local v2, "extra":Ljava/lang/String;
    new-instance v5, Lhzu;

    invoke-direct {v5}, Lhzu;-><init>()V

    .line 1320
    .local v5, "wkAlarm":Lhzu;
    iput-object v3, v5, Lhzu;->a:Ljava/lang/String;

    .line 1321
    iput v4, v5, Lhzu;->c:I

    .line 1322
    iput-object v0, v5, Lhzu;->d:Ljava/lang/String;

    .line 1323
    invoke-direct {p0, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->stringToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    iput-object v6, v5, Lhzu;->b:Ljava/util/Map;

    .line 1324
    const-class v6, Lhzr;

    invoke-static {v6}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lhzr;

    invoke-virtual {v6, v5}, Lhzr;->a(Lhzu;)V

    .line 1325
    new-instance v6, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v7, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v6, v7}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1328
    .end local v0    # "desc":Ljava/lang/String;
    .end local v2    # "extra":Ljava/lang/String;
    .end local v3    # "moduleName":Ljava/lang/String;
    .end local v4    # "subtype":I
    .end local v5    # "wkAlarm":Lhzu;
    :goto_0
    return-object v6

    .line 1326
    :catch_0
    move-exception v1

    .line 1327
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 1328
    new-instance v6, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v7, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v6, v7}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    goto :goto_0
.end method

.method public warn(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 16
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1241
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v10, "message"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 1242
    .local v8, "warningMessage":Lorg/json/JSONObject;
    if-nez v8, :cond_0

    .line 1243
    new-instance v9, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v10, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v11, 0x2

    const-string/jumbo v12, "invalid message "

    .line 1244
    invoke-static {v11, v12}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 1280
    :goto_0
    return-object v9

    .line 1247
    :cond_0
    invoke-static {}, Lhqe;->a()Lhqe;

    move-result-object v9

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    .line 1248
    invoke-virtual {v9, v10}, Lhqe;->b(Ljava/lang/String;)Lhqe$d;

    move-result-object v6

    .line 1249
    .local v6, "session":Lhqe$d;
    if-eqz v6, :cond_1

    .line 5488
    iget-object v7, v6, Lhqe$d;->b:Ljava/lang/String;

    .line 1250
    .local v7, "sessionCorpId":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v10, "corpId"

    const-string/jumbo v11, ""

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1252
    .local v2, "argCorpId":Ljava/lang/String;
    if-nez v7, :cond_2

    .line 1253
    move-object v4, v2

    .line 1265
    .local v4, "corpId":Ljava/lang/String;
    :goto_2
    if-eqz v6, :cond_4

    .line 5492
    iget-object v1, v6, Lhqe$d;->c:Ljava/lang/String;

    .line 1266
    .local v1, "agentId":Ljava/lang/String;
    :goto_3
    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1267
    .local v3, "content":Ljava/lang/String;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1268
    .local v5, "hm":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v9, "type"

    const-string/jumbo v10, "5"

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1269
    const-string/jumbo v9, "corpId"

    invoke-virtual {v5, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1270
    const-string/jumbo v9, "agentId"

    invoke-virtual {v5, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1271
    const-string/jumbo v9, "url"

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1272
    const-string/jumbo v9, "content"

    invoke-virtual {v5, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1273
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->getInstance()Lgvi;

    move-result-object v9

    invoke-virtual {v9, v5}, Lgvi;->warn(Ljava/util/Map;)V

    .line 1274
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/WebLogger;

    move-result-object v9

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    const-string/jumbo v12, "biz.Util"

    const/16 v13, 0x9

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string/jumbo v15, "warn from jsapi"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    const-string/jumbo v15, ";content:"

    aput-object v15, v13, v14

    const/4 v14, 0x2

    aput-object v3, v13, v14

    const/4 v14, 0x3

    const-string/jumbo v15, ";corpId:"

    aput-object v15, v13, v14

    const/4 v14, 0x4

    aput-object v4, v13, v14

    const/4 v14, 0x5

    const-string/jumbo v15, ";agentId:"

    aput-object v15, v13, v14

    const/4 v14, 0x6

    aput-object v1, v13, v14

    const/4 v14, 0x7

    const-string/jumbo v15, ":type:"

    aput-object v15, v13, v14

    const/16 v14, 0x8

    const-string/jumbo v15, "type_from_jsapi"

    aput-object v15, v13, v14

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->logMiddle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1280
    new-instance v9, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v10, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v9, v10}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    goto/16 :goto_0

    .line 1249
    .end local v1    # "agentId":Ljava/lang/String;
    .end local v2    # "argCorpId":Ljava/lang/String;
    .end local v3    # "content":Ljava/lang/String;
    .end local v4    # "corpId":Ljava/lang/String;
    .end local v5    # "hm":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "sessionCorpId":Ljava/lang/String;
    :cond_1
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 1256
    .restart local v2    # "argCorpId":Ljava/lang/String;
    .restart local v7    # "sessionCorpId":Ljava/lang/String;
    :cond_2
    invoke-static {v7, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1257
    move-object v4, v7

    .restart local v4    # "corpId":Ljava/lang/String;
    goto/16 :goto_2

    .line 1260
    .end local v4    # "corpId":Ljava/lang/String;
    :cond_3
    new-instance v9, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v10, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/16 v11, 0x8

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "invalid corpId: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1261
    invoke-static {v11, v12}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 1265
    .restart local v4    # "corpId":Ljava/lang/String;
    :cond_4
    const-string/jumbo v1, ""

    goto/16 :goto_3
.end method
