.class public Lcom/alibaba/wukong/im/message/MessageContentImpl;
.super Ljava/lang/Object;
.source "MessageContentImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/im/MessageContent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;,
        Lcom/alibaba/wukong/im/message/MessageContentImpl$ForwardCombineContentImpl;,
        Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownIconExContentImpl;,
        Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownIconContentImpl;,
        Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownExContentImpl;,
        Lcom/alibaba/wukong/im/message/MessageContentImpl$CommentContentImp;,
        Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;,
        Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptVideoContentImpl;,
        Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptCommonVideoContentImpl;,
        Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptAudioContentImpl;,
        Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptImageContentImpl;,
        Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptContentImpl;,
        Lcom/alibaba/wukong/im/message/MessageContentImpl$MultiMessageContentImpl;,
        Lcom/alibaba/wukong/im/message/MessageContentImpl$GeoContentImpl;,
        Lcom/alibaba/wukong/im/message/MessageContentImpl$CommonVideoContentImpl;,
        Lcom/alibaba/wukong/im/message/MessageContentImpl$VideoContentImpl;,
        Lcom/alibaba/wukong/im/message/MessageContentImpl$CustomMessageContentImpl;,
        Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedContentImpl;,
        Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedNoMenuContentImpl;,
        Lcom/alibaba/wukong/im/message/MessageContentImpl$FileContentImpl;,
        Lcom/alibaba/wukong/im/message/MessageContentImpl$AudioContentImpl;,
        Lcom/alibaba/wukong/im/message/MessageContentImpl$ImageContentImpl;,
        Lcom/alibaba/wukong/im/message/MessageContentImpl$MediaContentImpl;,
        Lcom/alibaba/wukong/im/message/MessageContentImpl$TextContentImpl;
    }
.end annotation


# static fields
.field public static final DING_CARD_CURRENT_VERSION:I = 0x1

.field public static final KEY_AUD_VOLUMNS:Ljava/lang/String; = "volumns"

.field public static final KEY_AUTH_CODE:Ljava/lang/String; = "authCode"

.field public static final KEY_AUTH_EXTENSION:Ljava/lang/String; = "auth"

.field public static final KEY_AUTH_MEDIA_ID:Ljava/lang/String; = "authMediaId"

.field private static final KEY_CONTENT_TYPE:Ljava/lang/String; = "tp"

.field public static final KEY_DING_CARD_BIZ_TYPE:Ljava/lang/String; = "dingBizType"

.field public static final KEY_DING_CARD_CONFIRM_STATUS:Ljava/lang/String; = "dingConfirmStatus"

.field public static final KEY_DING_CARD_CONTENT:Ljava/lang/String; = "dingContent"

.field public static final KEY_DING_CARD_DING_ATTACHMENTS:Ljava/lang/String; = "dingAttachments"

.field public static final KEY_DING_CARD_DING_EXECUTOR_UIDS:Ljava/lang/String; = "executorUids"

.field public static final KEY_DING_CARD_DING_ID:Ljava/lang/String; = "dingId"

.field public static final KEY_DING_CARD_END_TIME:Ljava/lang/String; = "dingEndTime"

.field public static final KEY_DING_CARD_INVITATION_STATUS:Ljava/lang/String; = "dingInvitationStatus"

.field public static final KEY_DING_CARD_LOCATION:Ljava/lang/String; = "dingLocation"

.field public static final KEY_DING_CARD_MSG_TYPE:Ljava/lang/String; = "dingMsgType"

.field public static final KEY_DING_CARD_ROLE:Ljava/lang/String; = "dingRole"

.field public static final KEY_DING_CARD_SENDER_ID:Ljava/lang/String; = "dingSenderId"

.field public static final KEY_DING_CARD_START_TIME:Ljava/lang/String; = "dingStartTime"

.field public static final KEY_DING_CARD_SUB_BIZ_TYPE:Ljava/lang/String; = "dingSubBizType"

.field public static final KEY_DING_CARD_VERSION:Ljava/lang/String; = "dingCardVer"

.field public static final KEY_DURATION:Ljava/lang/String; = "duration"

.field public static final KEY_DYNAMIC_EMOTION:Ljava/lang/String; = "is_3rd_emotion"

.field public static final KEY_DYNAMIC_EMOTION_ID:Ljava/lang/String; = "3rd_emotion_id"

.field public static final KEY_DYNAMIC_EMOTION_THUMB:Ljava/lang/String; = "3rd_emotion_thumb"

.field public static final KEY_ENCRYPT_APPID:Ljava/lang/String; = "appId"

.field public static final KEY_ENCRYPT_FILE_ID:Ljava/lang/String; = "f_id"

.field public static final KEY_ENCRYPT_FILE_NAME:Ljava/lang/String; = "f_name"

.field public static final KEY_ENCRYPT_FILE_SIZE:Ljava/lang/String; = "f_size"

.field public static final KEY_ENCRYPT_FILE_TYPE:Ljava/lang/String; = "f_type"

.field public static final KEY_ENCRYPT_IMG_HEIGHT:Ljava/lang/String; = "p_height"

.field public static final KEY_ENCRYPT_IMG_ORIENTATION:Ljava/lang/String; = "orientation"

.field public static final KEY_ENCRYPT_IMG_THUMB_ID:Ljava/lang/String; = "thumb_id"

.field public static final KEY_ENCRYPT_IMG_WIDTH:Ljava/lang/String; = "p_width"

.field public static final KEY_ENCRYPT_ORGID:Ljava/lang/String; = "oid"

.field public static final KEY_ENCRYPT_PRIORITY:Ljava/lang/String; = "priority"

.field public static final KEY_ENCRYPT_SPACE_ID:Ljava/lang/String; = "s_id"

.field public static final KEY_ENCRYPT_TEXT:Ljava/lang/String; = "key_encrypt_text"

.field public static final KEY_EXTENSION:Ljava/lang/String; = "ext"

.field public static final KEY_FILE_NAME:Ljava/lang/String; = "fileName"

.field public static final KEY_FILE_TYPE:Ljava/lang/String; = "fileType"

.field public static final KEY_FORWARD_COMBINE_MESSAGE:Ljava/lang/String; = "message"

.field public static final KEY_FORWARD_COMBINE_SENDER_NAME:Ljava/lang/String; = "senderName"

.field public static final KEY_FORWARD_COMBINE_SUMMARY:Ljava/lang/String; = "summary"

.field public static final KEY_FORWARD_COMBINE_TITLE:Ljava/lang/String; = "title"

.field public static final KEY_GEO_LATITUDE:Ljava/lang/String; = "latitude"

.field public static final KEY_GEO_LOCATION_NAME:Ljava/lang/String; = "locationName"

.field public static final KEY_GEO_LONGITUDE:Ljava/lang/String; = "longitude"

.field public static final KEY_HEIGHT:Ljava/lang/String; = "height"

.field private static final KEY_IMG_EXT:Ljava/lang/String; = "picExt"

.field public static final KEY_IMG_ORIENTATION:Ljava/lang/String; = "picOrientation"

.field public static final KEY_IMG_TYPE:Ljava/lang/String; = "picType"

.field public static final KEY_IS_ENCRYPT:Ljava/lang/String; = "isEncrypt"

.field public static final KEY_MARKDOWN:Ljava/lang/String; = "markdown"

.field public static final KEY_MARKDOWN_ATTACH:Ljava/lang/String; = "md_attach"

.field public static final KEY_MARKDOWN_AUTH:Ljava/lang/String; = "md_auth"

.field public static final KEY_MARKDOWN_BTN_JSON:Ljava/lang/String; = "btn_json"

.field public static final KEY_MARKDOWN_BTN_ORIENTATION:Ljava/lang/String; = "btn_orientation"

.field public static final KEY_MARKDOWN_ENHANCED_EXTENSION:Ljava/lang/String; = "enhanced_extension"

.field public static final KEY_MARKDOWN_HIDE_AVATAR:Ljava/lang/String; = "hide_avatar"

.field public static final KEY_MARKDOWN_NEW:Ljava/lang/String; = "new_markdown"

.field public static final KEY_MARKDOWN_NICK_MAP:Ljava/lang/String; = "nick_map"

.field public static final KEY_MARKDOWN_SINGLE_BTN_TITLE:Ljava/lang/String; = "single_title"

.field public static final KEY_MARKDOWN_SINGLE_BTN_URL:Ljava/lang/String; = "single_url"

.field public static final KEY_MARKDOWN_TITLE:Ljava/lang/String; = "title"

.field private static final KEY_MULTI:Ljava/lang/String; = "multi"

.field public static final KEY_PICURL:Ljava/lang/String; = "picUrl"

.field public static final KEY_PIC_AUTH_CODE:Ljava/lang/String; = "picAuthCode"

.field public static final KEY_PIC_AUTH_MEDIA:Ljava/lang/String; = "picAuthMedia"

.field public static final KEY_PIC_AUTH_MEDIA_ID:Ljava/lang/String; = "picAuthMediaId"

.field private static final KEY_RAW_CUSTOMTYPE:Ljava/lang/String; = "customType"

.field public static final KEY_SIZE:Ljava/lang/String; = "size"

.field public static final KEY_TITLE:Ljava/lang/String; = "title"

.field private static final KEY_TXT:Ljava/lang/String; = "txt"

.field private static final KEY_TXT_TEMPLATE_DATA:Ljava/lang/String; = "tplData"

.field private static final KEY_TXT_TEMPLATE_ID:Ljava/lang/String; = "tplId"

.field private static final KEY_URL:Ljava/lang/String; = "url"

.field public static final KEY_VIDEO_AUTH_MEDIA:Ljava/lang/String; = "videoAuthMedia"

.field public static final KEY_VIDEO_BITRATE:Ljava/lang/String; = "bitrate"

.field public static final KEY_WIDTH:Ljava/lang/String; = "width"

.field private static final SEP:Ljava/lang/String; = ","

.field private static final serialVersionUID:J = -0x2392e419ea016e06L


# instance fields
.field protected mType:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl;->mType:I

    .line 48
    return-void
.end method

.method public static fromString(ILjava/lang/String;)Lcom/alibaba/wukong/im/message/MessageContentImpl;
    .locals 5
    .param p0, "contentType"    # I
    .param p1, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 1764
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1765
    new-instance v3, Lcom/alibaba/wukong/im/message/MessageContentImpl;

    const/4 v4, -0x1

    invoke-direct {v3, v4}, Lcom/alibaba/wukong/im/message/MessageContentImpl;-><init>(I)V

    .line 1773
    :goto_0
    return-object v3

    .line 1767
    :cond_0
    const/4 v1, 0x0

    .line 1769
    .local v1, "object":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "object":Lorg/json/JSONObject;
    .local v2, "object":Lorg/json/JSONObject;
    move-object v1, v2

    .line 1773
    .end local v2    # "object":Lorg/json/JSONObject;
    .restart local v1    # "object":Lorg/json/JSONObject;
    :goto_1
    invoke-static {v1, p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl;->parseFromJSON(Lorg/json/JSONObject;I)Lcom/alibaba/wukong/im/message/MessageContentImpl;

    move-result-object v3

    goto :goto_0

    .line 1770
    :catch_0
    move-exception v0

    .line 1771
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getVolumnList(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "volumnString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 573
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 574
    const/4 v0, 0x0

    .line 581
    :cond_0
    return-object v0

    .line 576
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 577
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string/jumbo v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 578
    .local v2, "volumns":[Ljava/lang/String;
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v2, v3

    .line 579
    .local v1, "volumn":Ljava/lang/String;
    invoke-static {v1}, Lieb;->f(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private static parseFromJSON(Lorg/json/JSONObject;I)Lcom/alibaba/wukong/im/message/MessageContentImpl;
    .locals 3
    .param p0, "object"    # Lorg/json/JSONObject;
    .param p1, "defaultType"    # I

    .prologue
    .line 1777
    if-nez p0, :cond_0

    .line 1778
    new-instance v0, Lcom/alibaba/wukong/im/message/MessageContentImpl;

    const/4 v2, -0x1

    invoke-direct {v0, v2}, Lcom/alibaba/wukong/im/message/MessageContentImpl;-><init>(I)V

    .line 1850
    :goto_0
    return-object v0

    .line 1779
    :cond_0
    const-string/jumbo v2, "tp"

    invoke-virtual {p0, v2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 1781
    .local v1, "type":I
    sparse-switch v1, :sswitch_data_0

    .line 1847
    invoke-static {p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$MultiMessageContentImpl;->access$1600(Lorg/json/JSONObject;)Lcom/alibaba/wukong/im/message/MessageContentImpl$MultiMessageContentImpl;

    move-result-object v0

    .local v0, "content":Lcom/alibaba/wukong/im/message/MessageContentImpl;
    goto :goto_0

    .line 1783
    .end local v0    # "content":Lcom/alibaba/wukong/im/message/MessageContentImpl;
    :sswitch_0
    invoke-static {p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$TextContentImpl;->access$200(Lorg/json/JSONObject;)Lcom/alibaba/wukong/im/message/MessageContentImpl$TextContentImpl;

    move-result-object v0

    .line 1784
    .restart local v0    # "content":Lcom/alibaba/wukong/im/message/MessageContentImpl;
    goto :goto_0

    .line 1787
    .end local v0    # "content":Lcom/alibaba/wukong/im/message/MessageContentImpl;
    :sswitch_1
    invoke-static {p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$ImageContentImpl;->access$300(Lorg/json/JSONObject;)Lcom/alibaba/wukong/im/message/MessageContentImpl$ImageContentImpl;

    move-result-object v0

    .line 1788
    .restart local v0    # "content":Lcom/alibaba/wukong/im/message/MessageContentImpl;
    goto :goto_0

    .line 1791
    .end local v0    # "content":Lcom/alibaba/wukong/im/message/MessageContentImpl;
    :sswitch_2
    invoke-static {p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$AudioContentImpl;->access$400(Lorg/json/JSONObject;)Lcom/alibaba/wukong/im/message/MessageContentImpl$AudioContentImpl;

    move-result-object v0

    .line 1792
    .restart local v0    # "content":Lcom/alibaba/wukong/im/message/MessageContentImpl;
    goto :goto_0

    .line 1794
    .end local v0    # "content":Lcom/alibaba/wukong/im/message/MessageContentImpl;
    :sswitch_3
    invoke-static {p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$FileContentImpl;->access$500(Lorg/json/JSONObject;)Lcom/alibaba/wukong/im/message/MessageContentImpl$FileContentImpl;

    move-result-object v0

    .line 1795
    .restart local v0    # "content":Lcom/alibaba/wukong/im/message/MessageContentImpl;
    goto :goto_0

    .line 1797
    .end local v0    # "content":Lcom/alibaba/wukong/im/message/MessageContentImpl;
    :sswitch_4
    invoke-static {p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedContentImpl;->access$000(Lorg/json/JSONObject;)Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedContentImpl;

    move-result-object v0

    .line 1798
    .restart local v0    # "content":Lcom/alibaba/wukong/im/message/MessageContentImpl;
    goto :goto_0

    .line 1800
    .end local v0    # "content":Lcom/alibaba/wukong/im/message/MessageContentImpl;
    :sswitch_5
    invoke-static {p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedNoMenuContentImpl;->access$600(Lorg/json/JSONObject;)Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedContentImpl;

    move-result-object v0

    .line 1801
    .restart local v0    # "content":Lcom/alibaba/wukong/im/message/MessageContentImpl;
    goto :goto_0

    .line 1804
    .end local v0    # "content":Lcom/alibaba/wukong/im/message/MessageContentImpl;
    :sswitch_6
    invoke-static {p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$VideoContentImpl;->access$700(Lorg/json/JSONObject;)Lcom/alibaba/wukong/im/message/MessageContentImpl$VideoContentImpl;

    move-result-object v0

    .line 1805
    .restart local v0    # "content":Lcom/alibaba/wukong/im/message/MessageContentImpl;
    goto :goto_0

    .line 1807
    .end local v0    # "content":Lcom/alibaba/wukong/im/message/MessageContentImpl;
    :sswitch_7
    invoke-static {p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$GeoContentImpl;->access$800(Lorg/json/JSONObject;)Lcom/alibaba/wukong/im/message/MessageContentImpl$GeoContentImpl;

    move-result-object v0

    .line 1808
    .restart local v0    # "content":Lcom/alibaba/wukong/im/message/MessageContentImpl;
    goto :goto_0

    .line 1811
    .end local v0    # "content":Lcom/alibaba/wukong/im/message/MessageContentImpl;
    :sswitch_8
    invoke-static {p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$CommonVideoContentImpl;->access$900(Lorg/json/JSONObject;)Lcom/alibaba/wukong/im/message/MessageContentImpl$CommonVideoContentImpl;

    move-result-object v0

    .line 1812
    .restart local v0    # "content":Lcom/alibaba/wukong/im/message/MessageContentImpl;
    goto :goto_0

    .line 1814
    .end local v0    # "content":Lcom/alibaba/wukong/im/message/MessageContentImpl;
    :sswitch_9
    invoke-static {p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptImageContentImpl;->fromJson(Lorg/json/JSONObject;)Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptImageContentImpl;

    move-result-object v0

    .line 1815
    .restart local v0    # "content":Lcom/alibaba/wukong/im/message/MessageContentImpl;
    goto :goto_0

    .line 1817
    .end local v0    # "content":Lcom/alibaba/wukong/im/message/MessageContentImpl;
    :sswitch_a
    invoke-static {p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptAudioContentImpl;->fromJson(Lorg/json/JSONObject;)Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptAudioContentImpl;

    move-result-object v0

    .line 1818
    .restart local v0    # "content":Lcom/alibaba/wukong/im/message/MessageContentImpl;
    goto :goto_0

    .line 1820
    .end local v0    # "content":Lcom/alibaba/wukong/im/message/MessageContentImpl;
    :sswitch_b
    invoke-static {p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptVideoContentImpl;->fromJson(Lorg/json/JSONObject;)Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptVideoContentImpl;

    move-result-object v0

    .line 1821
    .restart local v0    # "content":Lcom/alibaba/wukong/im/message/MessageContentImpl;
    goto :goto_0

    .line 1823
    .end local v0    # "content":Lcom/alibaba/wukong/im/message/MessageContentImpl;
    :sswitch_c
    invoke-static {p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptCommonVideoContentImpl;->fromJson(Lorg/json/JSONObject;)Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptCommonVideoContentImpl;

    move-result-object v0

    .line 1824
    .restart local v0    # "content":Lcom/alibaba/wukong/im/message/MessageContentImpl;
    goto :goto_0

    .line 1826
    .end local v0    # "content":Lcom/alibaba/wukong/im/message/MessageContentImpl;
    :sswitch_d
    invoke-static {p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;->access$1000(Lorg/json/JSONObject;)Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;

    move-result-object v0

    .line 1827
    .restart local v0    # "content":Lcom/alibaba/wukong/im/message/MessageContentImpl;
    goto :goto_0

    .line 1829
    .end local v0    # "content":Lcom/alibaba/wukong/im/message/MessageContentImpl;
    :sswitch_e
    invoke-static {p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownExContentImpl;->access$1100(Lorg/json/JSONObject;)Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownExContentImpl;

    move-result-object v0

    .line 1830
    .restart local v0    # "content":Lcom/alibaba/wukong/im/message/MessageContentImpl;
    goto :goto_0

    .line 1832
    .end local v0    # "content":Lcom/alibaba/wukong/im/message/MessageContentImpl;
    :sswitch_f
    invoke-static {p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownIconContentImpl;->access$1200(Lorg/json/JSONObject;)Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownIconContentImpl;

    move-result-object v0

    .line 1833
    .restart local v0    # "content":Lcom/alibaba/wukong/im/message/MessageContentImpl;
    goto :goto_0

    .line 1835
    .end local v0    # "content":Lcom/alibaba/wukong/im/message/MessageContentImpl;
    :sswitch_10
    invoke-static {p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownIconExContentImpl;->access$1300(Lorg/json/JSONObject;)Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownIconExContentImpl;

    move-result-object v0

    .line 1836
    .restart local v0    # "content":Lcom/alibaba/wukong/im/message/MessageContentImpl;
    goto/16 :goto_0

    .line 1838
    .end local v0    # "content":Lcom/alibaba/wukong/im/message/MessageContentImpl;
    :sswitch_11
    invoke-static {p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$CommentContentImp;->access$1400(Lorg/json/JSONObject;)Lcom/alibaba/wukong/im/message/MessageContentImpl$CommentContentImp;

    move-result-object v0

    .line 1839
    .restart local v0    # "content":Lcom/alibaba/wukong/im/message/MessageContentImpl;
    goto/16 :goto_0

    .line 1841
    .end local v0    # "content":Lcom/alibaba/wukong/im/message/MessageContentImpl;
    :sswitch_12
    invoke-static {p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$ForwardCombineContentImpl;->access$1500(Lorg/json/JSONObject;)Lcom/alibaba/wukong/im/message/MessageContentImpl$ForwardCombineContentImpl;

    move-result-object v0

    .line 1842
    .restart local v0    # "content":Lcom/alibaba/wukong/im/message/MessageContentImpl;
    goto/16 :goto_0

    .line 1844
    .end local v0    # "content":Lcom/alibaba/wukong/im/message/MessageContentImpl;
    :sswitch_13
    invoke-static {p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;->fromJSON(Lorg/json/JSONObject;)Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;

    move-result-object v0

    .line 1845
    .restart local v0    # "content":Lcom/alibaba/wukong/im/message/MessageContentImpl;
    goto/16 :goto_0

    .line 1781
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x66 -> :sswitch_4
        0x67 -> :sswitch_6
        0x68 -> :sswitch_7
        0xca -> :sswitch_8
        0xcb -> :sswitch_9
        0xcc -> :sswitch_a
        0xcd -> :sswitch_b
        0xce -> :sswitch_c
        0xfb -> :sswitch_1
        0xfc -> :sswitch_2
        0xfd -> :sswitch_6
        0xfe -> :sswitch_8
        0x4b0 -> :sswitch_d
        0x4b1 -> :sswitch_e
        0x4b2 -> :sswitch_f
        0x4b4 -> :sswitch_10
        0x515 -> :sswitch_5
        0x578 -> :sswitch_11
        0x5dc -> :sswitch_12
        0x640 -> :sswitch_13
    .end sparse-switch
.end method

.method public static toVolumnString(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 585
    .local p0, "volumns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 586
    :cond_0
    const-string/jumbo v4, ""

    .line 596
    :goto_0
    return-object v4

    .line 588
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 589
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 590
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 591
    .local v2, "size":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 592
    const-string/jumbo v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 594
    .local v3, "volumn":Ljava/lang/Integer;
    invoke-static {v3}, Lieb;->a(Ljava/lang/Integer;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 591
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 596
    .end local v3    # "volumn":Ljava/lang/Integer;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method


# virtual methods
.method public cloneContent()Lcom/alibaba/wukong/im/MessageContent;
    .locals 0

    .prologue
    .line 1760
    return-object p0
.end method

.method protected toJSON()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 1755
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1437
    invoke-virtual {p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl;->toJSON()Lorg/json/JSONObject;

    move-result-object v0

    .line 1438
    .local v0, "o":Lorg/json/JSONObject;
    if-nez v0, :cond_0

    .line 1439
    const/4 v1, 0x0

    .line 1440
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public type()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl;->mType:I

    return v0
.end method
