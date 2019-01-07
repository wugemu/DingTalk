.class public Lcom/alibaba/android/rimet/biz/splash/SplashDataEntry;
.super Lcom/alibaba/bee/impl/table/BaseTableEntry;
.source "SplashDataEntry.java"


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
    name = "tb_splash_data"
.end annotation


# static fields
.field public static final NAME_ATTACHMENT_MEDIA_ID:Ljava/lang/String; = "attachmentMediaId"

.field public static final NAME_END_TIME:Ljava/lang/String; = "endTime"

.field public static final NAME_JUMP_URL:Ljava/lang/String; = "jumpUrl"

.field public static final NAME_MEDIA_ID:Ljava/lang/String; = "mediaId"

.field public static final NAME_ORG_ID:Ljava/lang/String; = "orgId"

.field public static final NAME_PRIORITY:Ljava/lang/String; = "priority"

.field public static final NAME_SHOW_DURATION:Ljava/lang/String; = "duration"

.field public static final NAME_SPLASH_ID:Ljava/lang/String; = "splashId"

.field public static final NAME_START_LOAD_TIME:Ljava/lang/String; = "startLoadTime"

.field public static final NAME_START_TIME:Ljava/lang/String; = "startTime"

.field public static final NAME_STATUS:Ljava/lang/String; = "status"

.field public static final NAME_TEXT_COLOR:Ljava/lang/String; = "textColor"

.field public static final NAME_TYPE:Ljava/lang/String; = "type"

.field public static final TABLE_NAME:Ljava/lang/String; = "tb_splash_data"


# instance fields
.field public attachmentMediaId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "attachmentMediaId"
        sort = 0xa
    .end annotation
.end field

.field public duration:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "duration"
        sort = 0x8
    .end annotation
.end field

.field public endTime:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "endTime"
        sort = 0x6
    .end annotation
.end field

.field public jumpUrl:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "jumpUrl"
        sort = 0x4
    .end annotation
.end field

.field public mediaId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "mediaId"
        sort = 0x3
    .end annotation
.end field

.field public orgId:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "orgId"
        sort = 0xc
    .end annotation
.end field

.field public priority:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "priority"
        sort = 0x9
    .end annotation
.end field

.field public splashId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "splashId"
        nullable = false
        sort = 0x1
        uniqueIndexName = "idx_tb_splash_data_id:1"
    .end annotation
.end field

.field public startLoadTime:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "startLoadTime"
        sort = 0x7
    .end annotation
.end field

.field public startTime:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "startTime"
        sort = 0x5
    .end annotation
.end field

.field public status:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "status"
        sort = 0xd
    .end annotation
.end field

.field public textColor:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "textColor"
        sort = 0xb
    .end annotation
.end field

.field public type:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "type"
        sort = 0x2
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/alibaba/bee/impl/table/BaseTableEntry;-><init>()V

    return-void
.end method

.method public static fromDBEntry(Lcom/alibaba/android/rimet/biz/splash/SplashDataEntry;)Lekr;
    .locals 4
    .param p0, "entry"    # Lcom/alibaba/android/rimet/biz/splash/SplashDataEntry;

    .prologue
    .line 86
    new-instance v0, Lekr;

    invoke-direct {v0}, Lekr;-><init>()V

    .line 87
    .local v0, "object":Lekr;
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/splash/SplashDataEntry;->splashId:Ljava/lang/String;

    iput-object v1, v0, Lekr;->a:Ljava/lang/String;

    .line 88
    iget v1, p0, Lcom/alibaba/android/rimet/biz/splash/SplashDataEntry;->type:I

    iput v1, v0, Lekr;->b:I

    .line 89
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/splash/SplashDataEntry;->mediaId:Ljava/lang/String;

    iput-object v1, v0, Lekr;->c:Ljava/lang/String;

    .line 90
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/splash/SplashDataEntry;->jumpUrl:Ljava/lang/String;

    iput-object v1, v0, Lekr;->d:Ljava/lang/String;

    .line 91
    iget-wide v2, p0, Lcom/alibaba/android/rimet/biz/splash/SplashDataEntry;->startTime:J

    iput-wide v2, v0, Lekr;->e:J

    .line 92
    iget-wide v2, p0, Lcom/alibaba/android/rimet/biz/splash/SplashDataEntry;->endTime:J

    iput-wide v2, v0, Lekr;->f:J

    .line 93
    iget-wide v2, p0, Lcom/alibaba/android/rimet/biz/splash/SplashDataEntry;->startLoadTime:J

    iput-wide v2, v0, Lekr;->g:J

    .line 94
    iget-wide v2, p0, Lcom/alibaba/android/rimet/biz/splash/SplashDataEntry;->duration:J

    iput-wide v2, v0, Lekr;->h:J

    .line 95
    iget v1, p0, Lcom/alibaba/android/rimet/biz/splash/SplashDataEntry;->priority:I

    iput v1, v0, Lekr;->i:I

    .line 96
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/splash/SplashDataEntry;->attachmentMediaId:Ljava/lang/String;

    iput-object v1, v0, Lekr;->j:Ljava/lang/String;

    .line 97
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/splash/SplashDataEntry;->textColor:Ljava/lang/String;

    iput-object v1, v0, Lekr;->k:Ljava/lang/String;

    .line 98
    iget-wide v2, p0, Lcom/alibaba/android/rimet/biz/splash/SplashDataEntry;->orgId:J

    iput-wide v2, v0, Lekr;->l:J

    .line 99
    iget v1, p0, Lcom/alibaba/android/rimet/biz/splash/SplashDataEntry;->status:I

    iput v1, v0, Lekr;->m:I

    .line 101
    return-object v0
.end method

.method public static toDBEntry(Lekr;)Lcom/alibaba/android/rimet/biz/splash/SplashDataEntry;
    .locals 4
    .param p0, "object"    # Lekr;

    .prologue
    .line 106
    new-instance v0, Lcom/alibaba/android/rimet/biz/splash/SplashDataEntry;

    invoke-direct {v0}, Lcom/alibaba/android/rimet/biz/splash/SplashDataEntry;-><init>()V

    .line 107
    .local v0, "entry":Lcom/alibaba/android/rimet/biz/splash/SplashDataEntry;
    iget-object v1, p0, Lekr;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/rimet/biz/splash/SplashDataEntry;->splashId:Ljava/lang/String;

    .line 108
    iget v1, p0, Lekr;->b:I

    iput v1, v0, Lcom/alibaba/android/rimet/biz/splash/SplashDataEntry;->type:I

    .line 109
    iget-object v1, p0, Lekr;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/rimet/biz/splash/SplashDataEntry;->mediaId:Ljava/lang/String;

    .line 110
    iget-object v1, p0, Lekr;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/rimet/biz/splash/SplashDataEntry;->jumpUrl:Ljava/lang/String;

    .line 111
    iget-wide v2, p0, Lekr;->e:J

    iput-wide v2, v0, Lcom/alibaba/android/rimet/biz/splash/SplashDataEntry;->startTime:J

    .line 112
    iget-wide v2, p0, Lekr;->f:J

    iput-wide v2, v0, Lcom/alibaba/android/rimet/biz/splash/SplashDataEntry;->endTime:J

    .line 113
    iget-wide v2, p0, Lekr;->g:J

    iput-wide v2, v0, Lcom/alibaba/android/rimet/biz/splash/SplashDataEntry;->startLoadTime:J

    .line 114
    iget-wide v2, p0, Lekr;->h:J

    iput-wide v2, v0, Lcom/alibaba/android/rimet/biz/splash/SplashDataEntry;->duration:J

    .line 115
    iget v1, p0, Lekr;->i:I

    iput v1, v0, Lcom/alibaba/android/rimet/biz/splash/SplashDataEntry;->priority:I

    .line 116
    iget-object v1, p0, Lekr;->j:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/rimet/biz/splash/SplashDataEntry;->attachmentMediaId:Ljava/lang/String;

    .line 117
    iget-object v1, p0, Lekr;->k:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/rimet/biz/splash/SplashDataEntry;->textColor:Ljava/lang/String;

    .line 118
    iget-wide v2, p0, Lekr;->l:J

    iput-wide v2, v0, Lcom/alibaba/android/rimet/biz/splash/SplashDataEntry;->orgId:J

    .line 119
    iget v1, p0, Lekr;->m:I

    iput v1, v0, Lcom/alibaba/android/rimet/biz/splash/SplashDataEntry;->status:I

    .line 121
    return-object v0
.end method
