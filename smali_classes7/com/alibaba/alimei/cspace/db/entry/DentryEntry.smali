.class public Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;
.super Lcom/alibaba/alimei/orm/TableEntry;
.source "DentryEntry.java"


# annotations
.annotation runtime Lcom/alibaba/alimei/orm/annotation/Table;
    name = "cspace_dentry"
.end annotation


# static fields
.field public static final ACCOUNT_NAME:Ljava/lang/String; = "account_name"

.field public static final APP_ID:Ljava/lang/String; = "app_id"

.field public static final AUTH_FLAG:Ljava/lang/String; = "auth_flag"

.field public static final AUTH_PIC_CODE:Ljava/lang/String; = "auth_pic_code"

.field public static final AUTH_PIC_URL:Ljava/lang/String; = "auth_pic_url"

.field public static final AUTO_RENAME:Ljava/lang/String; = "auto_rename"

.field public static final CID:Ljava/lang/String; = "cid"

.field public static final COMMENT_COUNT:Ljava/lang/String; = "commnet_count"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "content_type"

.field public static final CORP_ID:Ljava/lang/String; = "corp_id"

.field public static final CREATE_EMAIL:Ljava/lang/String; = "create_email"

.field public static final CREATE_NICK:Ljava/lang/String; = "create_nick"

.field public static final CREATE_TIME:Ljava/lang/String; = "create_time"

.field public static final CRYPT_LOCAL_URL:Ljava/lang/String; = "crypt_local_url"

.field public static final CRYPT_STATUS:Ljava/lang/String; = "crypt_status"

.field public static final DIRTY:Ljava/lang/String; = "dirty"

.field public static final DISPLAY_ALBUM_URL:Ljava/lang/String; = "display_album_url"

.field public static final DOWNLOADED_SIZE:Ljava/lang/String; = "downloaded_size"

.field public static final DOWNLOAD_COUNT:Ljava/lang/String; = "downloadCount"

.field public static final DURATION:Ljava/lang/String; = "duraion"

.field public static final EDITOR_COUNT:Ljava/lang/String; = "editor_count"

.field public static final EXPIRE_TIME:Ljava/lang/String; = "expire_time"

.field public static final EXTEND_INFO:Ljava/lang/String; = "extend_info"

.field public static final EXTENSION:Ljava/lang/String; = "extension"

.field public static final E_SAFE_NET_ENCRYPT_OFF:I = 0x0

.field public static final E_SAFE_NET_ENCRYPT_ON:I = 0x2

.field public static final FEATURE_FLAG:Ljava/lang/String; = "feature_flag"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final IS_CRYPT:Ljava/lang/String; = "crypt"

.field public static final IS_E_SAFE_NET_ENCRYPT:Ljava/lang/String; = "is_e_safe_net_encrypt"

.field public static final IS_SOFT:Ljava/lang/String; = "is_soft"

.field public static final IS_SOFT_FALSE:I = 0x0

.field public static final IS_SOFT_TRUE:I = 0x1

.field public static final LAST_COMMENT_ID:Ljava/lang/String; = "last_comment_id"

.field public static final LIKE_COUNT:Ljava/lang/String; = "like_count"

.field public static final LOCAL_URL:Ljava/lang/String; = "local_url"

.field public static final MESSAGE_ID:Ljava/lang/String; = "message_id"

.field public static final MODIFIED_TIME:Ljava/lang/String; = "modified_time"

.field public static final MODIFIER_EMAIL:Ljava/lang/String; = "modifier_email"

.field public static final MODIFIER_NICK:Ljava/lang/String; = "modifier_nick"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final ORG_ID:Ljava/lang/String; = "org_id"

.field public static final OVER_WRITE:Ljava/lang/String; = "over_write"

.field public static final PARENT_ID:Ljava/lang/String; = "parent_id"

.field public static final PARENT_PATH:Ljava/lang/String; = "parent_path"

.field public static final PATH:Ljava/lang/String; = "path"

.field public static final PIC_HEIGHT:Ljava/lang/String; = "pic_height"

.field public static final PIC_ROTATION:Ljava/lang/String; = "pic_rotation"

.field public static final PIC_SIZE:Ljava/lang/String; = "pic_size"

.field public static final PIC_URL:Ljava/lang/String; = "pic_url"

.field public static final PIC_WIDTH:Ljava/lang/String; = "pic_width"

.field public static final PREVIEW_COUNT:Ljava/lang/String; = "previewCount"

.field public static final PROIRITY:Ljava/lang/String; = "proirity"

.field public static final SERVER_ID:Ljava/lang/String; = "server_id"

.field public static final SESSION_ID:Ljava/lang/String; = "session_id"

.field public static final SIZE:Ljava/lang/String; = "size"

.field public static final SORT_KEY:Ljava/lang/String; = "sort_key"

.field public static final SPACE_ID:Ljava/lang/String; = "space_id"

.field public static final SPACE_TYPE_BELONG:Ljava/lang/String; = "space_type_belong"

.field public static final TABLE_NAME:Ljava/lang/String; = "cspace_dentry"

.field public static final TARGET_DENTRY_ID:Ljava/lang/String; = "target_dentry_id"

.field public static final TARGET_DENTRY_PATH:Ljava/lang/String; = "target_dentry_path"

.field public static final TARGET_SPACE_ID:Ljava/lang/String; = "target_sapce_id"

.field public static final TARGET_SPACE_NAME:Ljava/lang/String; = "target_space_name"

.field public static final TARGET_SPACE_TYPE:Ljava/lang/String; = "target_sapce_type"

.field public static final TEMP_URL:Ljava/lang/String; = "temp_url"

.field public static final TRANSFER_COUNT:Ljava/lang/String; = "transferCount"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final UN_FINISH_EDITOR_COUNT:Ljava/lang/String; = "un_finish_editor_count"

.field public static final UPLOADED_SIZE:Ljava/lang/String; = "uploaded_size"

.field public static final UPLOAD_ID:Ljava/lang/String; = "upload_id"

.field public static final VERSION_TYPE:Ljava/lang/String; = "version_type"

.field public static final WAITING_EDIT:Ljava/lang/String; = "waiting_edit"

.field public static final WIFI_ONLY:Ljava/lang/String; = "wifi_only"


# instance fields
.field public accountName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x1
        index = true
        name = "account_name"
    .end annotation
.end field

.field public appId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x24
        name = "app_id"
    .end annotation
.end field

.field public authFlag:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x2c
        name = "auth_flag"
    .end annotation
.end field

.field public authPicCode:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x32
        name = "auth_pic_code"
    .end annotation
.end field

.field public authPicUrl:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x31
        name = "auth_pic_url"
    .end annotation
.end field

.field public autoRename:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x15
        name = "auto_rename"
    .end annotation
.end field

.field public cid:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x37
        name = "cid"
    .end annotation
.end field

.field public commentCount:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x29
        name = "commnet_count"
    .end annotation
.end field

.field public contentType:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x6
        name = "content_type"
    .end annotation
.end field

.field public corpId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x25
        name = "corp_id"
    .end annotation
.end field

.field public createTime:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x9
        name = "create_time"
    .end annotation
.end field

.field public creatorEmail:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0xb
        name = "create_email"
    .end annotation
.end field

.field public creatorNick:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0xc
        name = "create_nick"
    .end annotation
.end field

.field public cryptLocalUrl:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x27
        name = "crypt_local_url"
    .end annotation
.end field

.field public cryptStatus:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x23
        name = "crypt_status"
    .end annotation
.end field

.field public dirty:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x12
        name = "dirty"
    .end annotation
.end field

.field public displayAlbumUrl:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x3d
        name = "display_album_url"
    .end annotation
.end field

.field public downloadCount:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x1f
        name = "downloadCount"
    .end annotation
.end field

.field public downloadedSize:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x17
        name = "downloaded_size"
    .end annotation
.end field

.field public duration:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x2d
        name = "duraion"
    .end annotation
.end field

.field public editorCount:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x35
        name = "editor_count"
    .end annotation
.end field

.field public expireTime:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x1e
        name = "expire_time"
    .end annotation
.end field

.field public extendInfo:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x1b
        name = "extend_info"
    .end annotation
.end field

.field public extension:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x7
        name = "extension"
    .end annotation
.end field

.field public featureFlag:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x3b
        name = "feature_flag"
    .end annotation
.end field

.field public id:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x0
        isAutoincrement = true
        name = "_id"
        nullable = false
    .end annotation
.end field

.field public isCrypt:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x22
        name = "crypt"
    .end annotation
.end field

.field public isESafeNetEncrypt:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x3c
        name = "is_e_safe_net_encrypt"
    .end annotation
.end field

.field public isSoft:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x3e
        name = "is_soft"
    .end annotation
.end field

.field public lastCommentId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x28
        name = "last_comment_id"
    .end annotation
.end field

.field public likeCount:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x2a
        name = "like_count"
    .end annotation
.end field

.field public localUrl:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x11
        name = "local_url"
    .end annotation
.end field

.field public messageId:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x38
        name = "message_id"
    .end annotation
.end field

.field public modifiedTime:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0xa
        name = "modified_time"
    .end annotation
.end field

.field public modifierEmail:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0xd
        name = "modifier_email"
    .end annotation
.end field

.field public modifierNick:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0xe
        name = "modifier_nick"
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x4
        name = "name"
    .end annotation
.end field

.field public orgId:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x44
        name = "org_id"
    .end annotation
.end field

.field public overWrite:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x14
        name = "over_write"
    .end annotation
.end field

.field public parentId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x2b
        name = "parent_id"
    .end annotation
.end field

.field public parentPath:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x13
        index = true
        name = "parent_path"
    .end annotation
.end field

.field public path:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x3
        index = true
        name = "path"
    .end annotation
.end field

.field public picHeight:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x30
        name = "pic_height"
    .end annotation
.end field

.field public picRotation:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x33
        name = "pic_rotation"
    .end annotation
.end field

.field public picSize:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x34
        name = "pic_size"
    .end annotation
.end field

.field public picUrl:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x2e
        name = "pic_url"
    .end annotation
.end field

.field public picWidth:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x2f
        name = "pic_width"
    .end annotation
.end field

.field public previewCount:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x20
        name = "previewCount"
    .end annotation
.end field

.field public proirity:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x26
        name = "proirity"
    .end annotation
.end field

.field public serverId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x1d
        name = "server_id"
    .end annotation
.end field

.field public sessionId:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x18
        name = "session_id"
    .end annotation
.end field

.field public size:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x8
        name = "size"
    .end annotation
.end field

.field public sortKey:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x1c
        name = "sort_key"
    .end annotation
.end field

.field public spaceId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x2
        name = "space_id"
    .end annotation
.end field

.field public spaceTypeBelong:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x3a
        name = "space_type_belong"
    .end annotation
.end field

.field public targetDentryId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x42
        name = "target_dentry_id"
    .end annotation
.end field

.field public targetDentryPath:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x43
        name = "target_dentry_path"
    .end annotation
.end field

.field public targetSpaceId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x3f
        name = "target_sapce_id"
    .end annotation
.end field

.field public targetSpaceName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x41
        name = "target_space_name"
    .end annotation
.end field

.field public targetSpaceType:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x40
        name = "target_sapce_type"
    .end annotation
.end field

.field public tempUrl:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x10
        name = "temp_url"
    .end annotation
.end field

.field public transferCount:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x21
        name = "transferCount"
    .end annotation
.end field

.field public type:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x5
        name = "type"
    .end annotation
.end field

.field public unFinishEditorCount:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x39
        name = "un_finish_editor_count"
    .end annotation
.end field

.field public uploadId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x1a
        name = "upload_id"
    .end annotation
.end field

.field public uploadedSize:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x16
        name = "uploaded_size"
    .end annotation
.end field

.field public versionType:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0xf
        name = "version_type"
    .end annotation
.end field

.field public waitingForEdit:Z
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x36
        name = "waiting_edit"
    .end annotation
.end field

.field public wifiOnly:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x19
        name = "wifi_only"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/alibaba/alimei/orm/TableEntry;-><init>()V

    return-void
.end method
