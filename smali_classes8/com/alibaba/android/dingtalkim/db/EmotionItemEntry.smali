.class public Lcom/alibaba/android/dingtalkim/db/EmotionItemEntry;
.super Lcom/alibaba/bee/impl/table/BaseTableEntry;
.source "EmotionItemEntry.java"


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
    name = "tb_custom_emotion"
.end annotation


# static fields
.field public static final NAME_EMOTION_AUTH_CODE:Ljava/lang/String; = "emotion_auth_code"

.field public static final NAME_EMOTION_AUTH_MEDIA_ID:Ljava/lang/String; = "emotion_auth_media_id"

.field public static final NAME_EMOTION_ID:Ljava/lang/String; = "emotion_id"

.field public static final NAME_EMOTION_MEDIE_ID:Ljava/lang/String; = "emotion_media_id"

.field public static final NAME_EMOTION_NAME:Ljava/lang/String; = "emotion_name"

.field public static final NAME_EMOTION_ORIGINAL_URL:Ljava/lang/String; = "emotion_original_url"

.field public static final NAME_EMOTION_PACKAGE_ID:Ljava/lang/String; = "emotion_package_id"

.field public static final NAME_EMOTION_THUMB_URL:Ljava/lang/String; = "emotion_thumb_url"

.field public static final NAME_EMOTION_TYPE:Ljava/lang/String; = "emotion_type"

.field public static final TABLE_NAME:Ljava/lang/String; = "tb_custom_emotion"


# instance fields
.field public authCode:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "emotion_auth_code"
        sort = 0x9
    .end annotation
.end field

.field public authMediaId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "emotion_auth_media_id"
        sort = 0x8
    .end annotation
.end field

.field public emotionId:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        indexName = "emotion_id_index:1"
        name = "emotion_id"
        sort = 0x1
    .end annotation
.end field

.field public emotionMediaId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "emotion_media_id"
        sort = 0x4
    .end annotation
.end field

.field public emotionName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "emotion_name"
        sort = 0x3
    .end annotation
.end field

.field public emotionOriginalUrl:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "emotion_original_url"
        sort = 0x6
    .end annotation
.end field

.field public emotionThumbUrl:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "emotion_thumb_url"
        sort = 0x7
    .end annotation
.end field

.field public emotionType:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = "0"
        name = "emotion_type"
        sort = 0x5
    .end annotation
.end field

.field public packageId:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        indexName = "emotion_package_id_index:2"
        name = "emotion_package_id"
        sort = 0x2
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alibaba/bee/impl/table/BaseTableEntry;-><init>()V

    return-void
.end method
