.class public Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;
.super Ljava/lang/Object;
.source "DingAttachmentObject.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTENSION_TITLE_MODEL_TYPE_GROUP_CHAT:I = 0x1

.field public static final EXTENSION_TITLE_MODEL_TYPE_ME_TO_ME_CHAT:I = 0x2

.field public static final EXTENSION_TITLE_MODEL_TYPE_NORMAL_SINGLE_CHAT:I = 0x0

.field public static final KEY_EXTENSION_CONTENT_MODEL:Ljava/lang/String; = "contentModel"

.field public static final KEY_EXTENSION_CONTENT_MODEL_CONTENT:Ljava/lang/String; = "content"

.field public static final KEY_EXTENSION_CONTENT_MODEL_SENDER_NAME:Ljava/lang/String; = "senderName"

.field public static final KEY_EXTENSION_CONTENT_MODEL_TYPE:Ljava/lang/String; = "type"

.field public static final KEY_EXTENSION_MSG_ID_LIST:Ljava/lang/String; = "msgIdList"

.field public static final KEY_EXTENSION_MSG_LIST:Ljava/lang/String; = "msgList"

.field public static final KEY_EXTENSION_STATUS:Ljava/lang/String; = "status"

.field public static final KEY_EXTENSION_TITLE_MODEL:Ljava/lang/String; = "titleModel"

.field public static final KEY_EXTENSION_TITLE_MODEL_NAME_LIST:Ljava/lang/String; = "nameList"

.field public static final KEY_EXTENSION_TITLE_MODEL_TYPE:Ljava/lang/String; = "type"

.field public static final KEY_EXTENSION_URL:Ljava/lang/String; = "url"

.field public static final KEY_MESSAGE:Ljava/lang/String; = "message"

.field public static final KEY_MESSAGE_CONTENT:Ljava/lang/String; = "msgContent"

.field public static final KEY_MESSAGE_ID:Ljava/lang/String; = "msgId"

.field public static final KEY_MESSAGE_SENDER_NAME:Ljava/lang/String; = "senderName"

.field private static final serialVersionUID:J = -0x11f614ca7efd93e0L


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

.field public cid:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        serialize = false
    .end annotation
.end field

.field public detailType:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "detailType"
    .end annotation
.end field

.field public duration:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "duration"
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

.field public fileName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "fileName"
    .end annotation
.end field

.field public fileSpaceId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "fileSpaceId"
    .end annotation
.end field

.field public isCSpaceCopy:Z
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        serialize = false
    .end annotation
.end field

.field public linkContent:Lcom/alibaba/android/ding/base/objects/DingLinkObject;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "linkContent"
    .end annotation
.end field

.field public mediaId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "mediaId"
    .end annotation
.end field

.field public messageSelectCacheTimeStamp:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        serialize = false
    .end annotation
.end field

.field public size:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "size"
    .end annotation
.end field

.field public status:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "status"
    .end annotation
.end field

.field public type:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "type"
    .end annotation
.end field

.field public url:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "url"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 273
    new-instance v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject$1;

    invoke-direct {v0}, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->isCSpaceCopy:Z

    .line 108
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->messageSelectCacheTimeStamp:J

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 9
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-boolean v6, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->isCSpaceCopy:Z

    .line 108
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->messageSelectCacheTimeStamp:J

    .line 155
    const/4 v3, 0x4

    new-array v2, v3, [Ljava/lang/String;

    .line 156
    .local v2, "s":[Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 157
    aget-object v3, v2, v7

    iput-object v3, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->fileSpaceId:Ljava/lang/String;

    .line 158
    aget-object v3, v2, v6

    iput-object v3, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->mediaId:Ljava/lang/String;

    .line 159
    aget-object v3, v2, v8

    iput-object v3, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->fileName:Ljava/lang/String;

    .line 160
    const/4 v3, 0x3

    aget-object v3, v2, v3

    iput-object v3, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->detailType:Ljava/lang/String;

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->type:I

    .line 162
    new-array v1, v8, [J

    .line 163
    .local v1, "l":[J
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readLongArray([J)V

    .line 164
    aget-wide v4, v1, v7

    iput-wide v4, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->duration:J

    .line 165
    aget-wide v4, v1, v6

    iput-wide v4, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->size:J

    .line 166
    const-class v3, Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->extension:Ljava/util/Map;

    .line 167
    const-class v3, Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    iput-object v3, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->linkContent:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    .line 168
    new-array v0, v6, [Z

    .line 169
    .local v0, "b":[Z
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 170
    aget-boolean v3, v0, v7

    iput-boolean v3, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->isCSpaceCopy:Z

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->authMediaId:Ljava/lang/String;

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->authCode:Ljava/lang/String;

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->status:Ljava/lang/String;

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->url:Ljava/lang/String;

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->cid:Ljava/lang/String;

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->messageSelectCacheTimeStamp:J

    .line 177
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/ding/base/objects/idl/DingAttachmentModel;)V
    .locals 1
    .param p1, "model"    # Lcom/alibaba/android/ding/base/objects/idl/DingAttachmentModel;

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;-><init>(Lcom/alibaba/android/ding/base/objects/idl/DingAttachmentModel;Ljava/util/Map;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/ding/base/objects/idl/DingAttachmentModel;Ljava/util/Map;)V
    .locals 6
    .param p1, "model"    # Lcom/alibaba/android/ding/base/objects/idl/DingAttachmentModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/ding/base/objects/idl/DingAttachmentModel;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "dingExtension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v4, 0x0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->isCSpaceCopy:Z

    .line 108
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->messageSelectCacheTimeStamp:J

    .line 120
    if-eqz p1, :cond_0

    .line 121
    iget-object v1, p1, Lcom/alibaba/android/ding/base/objects/idl/DingAttachmentModel;->type:Ljava/lang/Integer;

    .line 1033
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 121
    iput v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->type:I

    .line 122
    iget-object v1, p1, Lcom/alibaba/android/ding/base/objects/idl/DingAttachmentModel;->fileSpaceId:Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->fileSpaceId:Ljava/lang/String;

    .line 123
    iget-object v1, p1, Lcom/alibaba/android/ding/base/objects/idl/DingAttachmentModel;->mediaId:Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->mediaId:Ljava/lang/String;

    .line 124
    iget-object v1, p1, Lcom/alibaba/android/ding/base/objects/idl/DingAttachmentModel;->duration:Ljava/lang/Long;

    .line 1044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 124
    iput-wide v2, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->duration:J

    .line 125
    iget-object v1, p1, Lcom/alibaba/android/ding/base/objects/idl/DingAttachmentModel;->size:Ljava/lang/Long;

    .line 2044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 125
    iput-wide v2, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->size:J

    .line 126
    iget-object v1, p1, Lcom/alibaba/android/ding/base/objects/idl/DingAttachmentModel;->fileName:Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->fileName:Ljava/lang/String;

    .line 127
    iget-object v1, p1, Lcom/alibaba/android/ding/base/objects/idl/DingAttachmentModel;->detailType:Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->detailType:Ljava/lang/String;

    .line 129
    iget-object v1, p1, Lcom/alibaba/android/ding/base/objects/idl/DingAttachmentModel;->extension:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 130
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p1, Lcom/alibaba/android/ding/base/objects/idl/DingAttachmentModel;->extension:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->extension:Ljava/util/Map;

    .line 135
    :goto_0
    new-instance v1, Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    iget-object v2, p1, Lcom/alibaba/android/ding/base/objects/idl/DingAttachmentModel;->linkContent:Lcom/alibaba/android/ding/base/objects/idl/DingLinkModel;

    invoke-direct {v1, v2}, Lcom/alibaba/android/ding/base/objects/DingLinkObject;-><init>(Lcom/alibaba/android/ding/base/objects/idl/DingLinkModel;)V

    iput-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->linkContent:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    .line 137
    iget-object v1, p1, Lcom/alibaba/android/ding/base/objects/idl/DingAttachmentModel;->authMediaId:Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->authMediaId:Ljava/lang/String;

    .line 138
    iget-object v1, p1, Lcom/alibaba/android/ding/base/objects/idl/DingAttachmentModel;->authCode:Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->authCode:Ljava/lang/String;

    .line 139
    iget-object v1, p1, Lcom/alibaba/android/ding/base/objects/idl/DingAttachmentModel;->status:Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->status:Ljava/lang/String;

    .line 140
    iget-object v1, p1, Lcom/alibaba/android/ding/base/objects/idl/DingAttachmentModel;->url:Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->url:Ljava/lang/String;

    .line 142
    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->authMediaId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 143
    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->mediaId:Ljava/lang/String;

    invoke-static {v1, p2}, Layx;->a(Ljava/lang/String;Ljava/util/Map;)Layw;

    move-result-object v0

    .line 144
    .local v0, "authInfo":Layw;
    if-eqz v0, :cond_0

    .line 145
    iget-object v1, v0, Layw;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->authMediaId:Ljava/lang/String;

    .line 146
    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->authCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, v0, Layw;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->authCode:Ljava/lang/String;

    .line 152
    .end local v0    # "authInfo":Layw;
    :cond_0
    return-void

    .line 132
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->extension:Ljava/util/Map;

    goto :goto_0
.end method

.method public static getAttachment(Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;)Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;
    .locals 3
    .param p0, "mailObject"    # Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;

    .prologue
    .line 302
    new-instance v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    invoke-direct {v0}, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;-><init>()V

    .line 303
    .local v0, "object":Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;
    if-eqz p0, :cond_0

    .line 304
    sget-object v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->LINK:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->getValue()I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->type:I

    .line 305
    new-instance v1, Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    invoke-direct {v1}, Lcom/alibaba/android/ding/base/objects/DingLinkObject;-><init>()V

    iput-object v1, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->linkContent:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    .line 307
    iget-object v1, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->linkContent:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    sget-object v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$LinkType;->CType_Mail:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$LinkType;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$LinkType;->getValue()I

    move-result v2

    iput v2, v1, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->type:I

    .line 308
    iget-object v1, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->linkContent:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailTitle:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->title:Ljava/lang/String;

    .line 309
    iget-object v1, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->linkContent:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailContent:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->text:Ljava/lang/String;

    .line 310
    iget-object v1, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->linkContent:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->picMediaId:Ljava/lang/String;

    .line 311
    iget-object v1, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->linkContent:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    invoke-static {p0}, Lckw;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->extension:Ljava/util/Map;

    .line 313
    :cond_0
    return-object v0
.end method

.method public static getAttachment(Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;)Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;
    .locals 3
    .param p0, "oaObject"    # Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;

    .prologue
    .line 286
    new-instance v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    invoke-direct {v0}, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;-><init>()V

    .line 287
    .local v0, "object":Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;
    if-eqz p0, :cond_0

    .line 288
    sget-object v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->LINK:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->getValue()I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->type:I

    .line 289
    new-instance v1, Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    invoke-direct {v1}, Lcom/alibaba/android/ding/base/objects/DingLinkObject;-><init>()V

    iput-object v1, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->linkContent:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    .line 291
    iget-object v1, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->linkContent:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    sget-object v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$LinkType;->CType_OA:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$LinkType;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$LinkType;->getValue()I

    move-result v2

    iput v2, v1, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->type:I

    .line 292
    iget-object v1, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->linkContent:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->headerTitle:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->title:Ljava/lang/String;

    .line 293
    iget-object v1, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->linkContent:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->bodyTitle:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->text:Ljava/lang/String;

    .line 294
    iget-object v1, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->linkContent:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->mediaId:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->picMediaId:Ljava/lang/String;

    .line 295
    iget-object v1, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->linkContent:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    invoke-static {p0}, Lckw;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->extension:Ljava/util/Map;

    .line 298
    :cond_0
    return-object v0
.end method

.method public static getAttachment(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;I)Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;
    .locals 4
    .param p0, "spaceObject"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .param p1, "type"    # I

    .prologue
    .line 317
    new-instance v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    invoke-direct {v0}, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;-><init>()V

    .line 318
    .local v0, "object":Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;
    if-eqz p0, :cond_0

    .line 319
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileName:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->fileName:Ljava/lang/String;

    .line 320
    iget-wide v2, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileSize:J

    iput-wide v2, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->size:J

    .line 321
    sget-object v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->LINK:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->getValue()I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->type:I

    .line 322
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileType:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->detailType:Ljava/lang/String;

    .line 323
    new-instance v1, Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    invoke-direct {v1}, Lcom/alibaba/android/ding/base/objects/DingLinkObject;-><init>()V

    iput-object v1, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->linkContent:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    .line 325
    iget-object v1, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->linkContent:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    iput p1, v1, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->type:I

    .line 326
    iget-object v1, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->linkContent:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    invoke-static {p0}, Lckw;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->extension:Ljava/util/Map;

    .line 328
    :cond_0
    return-object v0
.end method

.method public static objectFromJson(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;
    .locals 6
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    .line 226
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 227
    const/4 v2, 0x0

    .line 248
    :goto_0
    return-object v2

    .line 229
    :cond_0
    new-instance v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    invoke-direct {v2}, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;-><init>()V

    .line 231
    .local v2, "object":Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 232
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v3, "type"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->type:I

    .line 233
    const-string/jumbo v3, "fileSpaceId"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->fileSpaceId:Ljava/lang/String;

    .line 234
    const-string/jumbo v3, "mediaId"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->mediaId:Ljava/lang/String;

    .line 235
    const-string/jumbo v3, "duration"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->duration:J

    .line 236
    const-string/jumbo v3, "size"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->size:J

    .line 237
    const-string/jumbo v3, "fileName"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->fileName:Ljava/lang/String;

    .line 238
    const-string/jumbo v3, "detailType"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->detailType:Ljava/lang/String;

    .line 239
    const-string/jumbo v3, "extension"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcoz;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->extension:Ljava/util/Map;

    .line 240
    const-string/jumbo v3, "linkContent"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->fromJson(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->linkContent:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    .line 241
    const-string/jumbo v3, "authMediaId"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->authMediaId:Ljava/lang/String;

    .line 242
    const-string/jumbo v3, "authCode"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->authCode:Ljava/lang/String;

    .line 243
    const-string/jumbo v3, "status"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->status:Ljava/lang/String;

    .line 244
    const-string/jumbo v3, "url"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->url:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 245
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static objectToJson(Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;)Ljava/lang/String;
    .locals 6
    .param p0, "obj"    # Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .prologue
    .line 201
    if-nez p0, :cond_0

    .line 202
    const-string/jumbo v2, ""

    .line 222
    :goto_0
    return-object v2

    .line 204
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 206
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "type"

    iget v3, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->type:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 207
    const-string/jumbo v2, "fileSpaceId"

    iget-object v3, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->fileSpaceId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 208
    const-string/jumbo v2, "mediaId"

    iget-object v3, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->mediaId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 209
    const-string/jumbo v2, "duration"

    iget-wide v4, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->duration:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 210
    const-string/jumbo v2, "size"

    iget-wide v4, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->size:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 211
    const-string/jumbo v2, "fileName"

    iget-object v3, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 212
    const-string/jumbo v2, "detailType"

    iget-object v3, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->detailType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    const-string/jumbo v2, "extension"

    iget-object v3, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->extension:Ljava/util/Map;

    invoke-static {v3}, Lcoz;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 214
    const-string/jumbo v2, "linkContent"

    iget-object v3, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->linkContent:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    invoke-static {v3}, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->toJson(Lcom/alibaba/android/ding/base/objects/DingLinkObject;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 215
    const-string/jumbo v2, "authMediaId"

    iget-object v3, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->authMediaId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 216
    const-string/jumbo v2, "authCode"

    iget-object v3, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->authCode:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 217
    const-string/jumbo v2, "status"

    iget-object v3, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->status:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 218
    const-string/jumbo v2, "url"

    iget-object v3, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->url:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x0

    return v0
.end method

.method public fillExtensionWithForwardCombineMessage(Lcom/alibaba/wukong/im/Message;)V
    .locals 10
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 332
    instance-of v6, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-nez v6, :cond_1

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v6

    instance-of v6, v6, Lcom/alibaba/wukong/im/MessageContent$ForwardCombineContent;

    if-eqz v6, :cond_0

    .line 340
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$ForwardCombineContent;

    .line 342
    .local v0, "content":Lcom/alibaba/wukong/im/MessageContent$ForwardCombineContent;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 343
    .local v5, "uidNameMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$ForwardCombineContent;->contents()Ljava/util/List;

    move-result-object v3

    .line 344
    .local v3, "msgs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 345
    .local v2, "msgIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz v3, :cond_4

    .line 346
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/Message;

    .line 347
    .local v1, "msg":Lcom/alibaba/wukong/im/Message;
    if-eqz v1, :cond_2

    .line 350
    const-string/jumbo v7, "senderName"

    invoke-interface {v1, v7}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 351
    .local v4, "senderName":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 352
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v5, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    :cond_3
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 358
    .end local v1    # "msg":Lcom/alibaba/wukong/im/Message;
    .end local v4    # "senderName":Ljava/lang/String;
    :cond_4
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->extension:Ljava/util/Map;

    .line 359
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v6

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Lcom/alibaba/wukong/im/Conversation;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->putExtensionTitleModel(Ljava/util/Map;)V

    .line 360
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v6

    invoke-virtual {v6, v3, v5}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->putExtensionContentModel(Ljava/util/List;)V

    .line 361
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v6

    invoke-virtual {v6, v3, v5}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->b(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->putExtensionMessageInfos(Ljava/util/List;)V

    .line 362
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 363
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v6

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->cid:Ljava/lang/String;

    .line 365
    :cond_5
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Ljava/util/List;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->messageSelectCacheTimeStamp:J

    goto/16 :goto_0
.end method

.method public getExtensionContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 393
    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->getExtensionContent(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtensionContent(I)Ljava/lang/String;
    .locals 5
    .param p1, "maxNum"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 397
    iget-object v3, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->extension:Ljava/util/Map;

    if-nez v3, :cond_0

    .line 398
    const-string/jumbo v3, ""

    .line 410
    :goto_0
    return-object v3

    .line 400
    :cond_0
    iget-object v3, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->extension:Ljava/util/Map;

    const-string/jumbo v4, "contentModel"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 401
    .local v1, "contentInfoStr":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 402
    const-string/jumbo v3, ""

    goto :goto_0

    .line 405
    :cond_1
    :try_start_0
    const-class v3, Ljava/util/Map;

    invoke-static {v1, v3}, Lcoo;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 406
    .local v0, "contentInfo":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map;>;"
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v3

    invoke-virtual {v3, v0, p1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->b(Ljava/util/List;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 407
    .end local v0    # "contentInfo":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map;>;"
    :catch_0
    move-exception v2

    .line 408
    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 410
    const-string/jumbo v3, ""

    goto :goto_0
.end method

.method public getExtensionMessages()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 435
    iget-object v9, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->extension:Ljava/util/Map;

    if-nez v9, :cond_1

    .line 479
    :cond_0
    return-object v8

    .line 439
    :cond_1
    iget-object v9, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->extension:Ljava/util/Map;

    const-string/jumbo v10, "msgList"

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 440
    .local v4, "msgInfoListObject":Ljava/lang/Object;
    instance-of v9, v4, Ljava/lang/String;

    if-eqz v9, :cond_0

    move-object v5, v4

    .line 444
    check-cast v5, Ljava/lang/String;

    .line 445
    .local v5, "msgInfoListStr":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 449
    const/4 v3, 0x0

    .line 451
    .local v3, "msgInfoList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map;>;"
    :try_start_0
    const-class v9, Ljava/util/Map;

    invoke-static {v5, v9}, Lcoo;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 456
    :goto_0
    if-eqz v3, :cond_0

    .line 460
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 461
    .local v8, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 462
    .local v2, "msgInfo":Ljava/util/Map;
    if-eqz v2, :cond_2

    .line 465
    const-string/jumbo v10, "message"

    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 466
    .local v7, "msgStr":Ljava/lang/Object;
    instance-of v10, v7, Ljava/lang/String;

    if-eqz v10, :cond_2

    .line 469
    check-cast v7, Ljava/lang/String;

    .end local v7    # "msgStr":Ljava/lang/Object;
    invoke-static {v7}, Libt;->d(Ljava/lang/String;)Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    .line 470
    .local v1, "message":Lcom/alibaba/wukong/im/Message;
    if-eqz v1, :cond_2

    .line 473
    const-string/jumbo v10, "senderName"

    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 474
    .local v6, "msgSenderName":Ljava/lang/Object;
    instance-of v10, v6, Ljava/lang/String;

    if-eqz v10, :cond_3

    .line 475
    const-string/jumbo v10, "senderName"

    check-cast v6, Ljava/lang/String;

    .end local v6    # "msgSenderName":Ljava/lang/Object;
    invoke-interface {v1, v10, v6}, Lcom/alibaba/wukong/im/Message;->updateLocalExtension(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    :cond_3
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 452
    .end local v1    # "message":Lcom/alibaba/wukong/im/Message;
    .end local v2    # "msgInfo":Ljava/util/Map;
    .end local v8    # "ret":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    :catch_0
    move-exception v0

    .line 453
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getExtensionTitle()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 369
    iget-object v3, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->extension:Ljava/util/Map;

    if-nez v3, :cond_0

    .line 370
    const-string/jumbo v3, ""

    .line 382
    :goto_0
    return-object v3

    .line 372
    :cond_0
    iget-object v3, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->extension:Ljava/util/Map;

    const-string/jumbo v4, "titleModel"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 373
    .local v2, "titleInfoStr":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 374
    const-string/jumbo v3, ""

    goto :goto_0

    .line 377
    :cond_1
    :try_start_0
    const-class v3, Ljava/util/Map;

    invoke-static {v2, v3}, Lcoo;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 378
    .local v1, "titleInfo":Ljava/util/Map;
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Ljava/util/Map;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 379
    .end local v1    # "titleInfo":Ljava/util/Map;
    :catch_0
    move-exception v0

    .line 380
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 382
    const-string/jumbo v3, ""

    goto :goto_0
.end method

.method public hasExtensionMessages()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 421
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->extension:Ljava/util/Map;

    if-nez v0, :cond_0

    move v0, v1

    .line 424
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->extension:Ljava/util/Map;

    const-string/jumbo v2, "msgList"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public putExtensionContentModel(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 414
    .local p1, "contentInfo":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->extension:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 415
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->extension:Ljava/util/Map;

    .line 417
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->extension:Ljava/util/Map;

    const-string/jumbo v2, "contentModel"

    if-nez p1, :cond_1

    const-string/jumbo v0, ""

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    return-void

    .line 417
    :cond_1
    invoke-static {p1}, Lcoo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public putExtensionMessageInfos(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 428
    .local p1, "msgInfos":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->extension:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 429
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->extension:Ljava/util/Map;

    .line 431
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->extension:Ljava/util/Map;

    const-string/jumbo v2, "msgList"

    if-nez p1, :cond_1

    const-string/jumbo v0, ""

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    return-void

    .line 431
    :cond_1
    invoke-static {p1}, Lcoo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public putExtensionTitleModel(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 386
    .local p1, "titleInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->extension:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 387
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->extension:Ljava/util/Map;

    .line 389
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->extension:Ljava/util/Map;

    const-string/jumbo v2, "titleModel"

    if-nez p1, :cond_1

    const-string/jumbo v0, ""

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    return-void

    .line 389
    :cond_1
    invoke-static {p1}, Lcoo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toIDLModel()Lcom/alibaba/android/ding/base/objects/idl/DingAttachmentModel;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 180
    new-instance v0, Lcom/alibaba/android/ding/base/objects/idl/DingAttachmentModel;

    invoke-direct {v0}, Lcom/alibaba/android/ding/base/objects/idl/DingAttachmentModel;-><init>()V

    .line 181
    .local v0, "model":Lcom/alibaba/android/ding/base/objects/idl/DingAttachmentModel;
    iget v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/ding/base/objects/idl/DingAttachmentModel;->type:Ljava/lang/Integer;

    .line 182
    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->fileSpaceId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/ding/base/objects/idl/DingAttachmentModel;->fileSpaceId:Ljava/lang/String;

    .line 183
    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->mediaId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/ding/base/objects/idl/DingAttachmentModel;->mediaId:Ljava/lang/String;

    .line 184
    iget-wide v2, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->duration:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/ding/base/objects/idl/DingAttachmentModel;->duration:Ljava/lang/Long;

    .line 185
    iget-wide v2, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->size:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/ding/base/objects/idl/DingAttachmentModel;->size:Ljava/lang/Long;

    .line 186
    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->fileName:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/ding/base/objects/idl/DingAttachmentModel;->fileName:Ljava/lang/String;

    .line 187
    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->detailType:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/ding/base/objects/idl/DingAttachmentModel;->detailType:Ljava/lang/String;

    .line 188
    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->extension:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 189
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->extension:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lcom/alibaba/android/ding/base/objects/idl/DingAttachmentModel;->extension:Ljava/util/Map;

    .line 191
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->linkContent:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    invoke-static {v1}, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->toIDLModel(Lcom/alibaba/android/ding/base/objects/DingLinkObject;)Lcom/alibaba/android/ding/base/objects/idl/DingLinkModel;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/ding/base/objects/idl/DingAttachmentModel;->linkContent:Lcom/alibaba/android/ding/base/objects/idl/DingLinkModel;

    .line 192
    iget-boolean v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->isCSpaceCopy:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/ding/base/objects/idl/DingAttachmentModel;->isCSpaceCopy:Ljava/lang/Boolean;

    .line 193
    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->authMediaId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/ding/base/objects/idl/DingAttachmentModel;->authMediaId:Ljava/lang/String;

    .line 194
    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->authCode:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/ding/base/objects/idl/DingAttachmentModel;->authCode:Ljava/lang/String;

    .line 195
    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->status:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/ding/base/objects/idl/DingAttachmentModel;->status:Ljava/lang/String;

    .line 196
    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->url:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/ding/base/objects/idl/DingAttachmentModel;->url:Ljava/lang/String;

    .line 197
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 259
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->fileSpaceId:Ljava/lang/String;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->mediaId:Ljava/lang/String;

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->fileName:Ljava/lang/String;

    aput-object v1, v0, v3

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->detailType:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 260
    iget v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    new-array v0, v3, [J

    iget-wide v2, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->duration:J

    aput-wide v2, v0, v4

    iget-wide v2, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->size:J

    aput-wide v2, v0, v5

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 262
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->extension:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 263
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->linkContent:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 264
    new-array v0, v5, [Z

    iget-boolean v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->isCSpaceCopy:Z

    aput-boolean v1, v0, v4

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 265
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->authMediaId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->authCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->status:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->cid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 270
    iget-wide v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->messageSelectCacheTimeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 271
    return-void
.end method
