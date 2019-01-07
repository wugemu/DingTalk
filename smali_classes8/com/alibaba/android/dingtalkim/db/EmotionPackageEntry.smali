.class public Lcom/alibaba/android/dingtalkim/db/EmotionPackageEntry;
.super Lcom/alibaba/bee/impl/table/BaseTableEntry;
.source "EmotionPackageEntry.java"


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
    name = "tb_emotion_package"
.end annotation


# static fields
.field public static final NAME_PACKAGE_DESC:Ljava/lang/String; = "package_desc"

.field public static final NAME_PACKAGE_ICON_MEDIA_ID:Ljava/lang/String; = "package_icon_media_id"

.field public static final NAME_PACKAGE_ID:Ljava/lang/String; = "package_id"

.field public static final NAME_PACKAGE_MEDIA_ID:Ljava/lang/String; = "package_media_id"

.field public static final NAME_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final NAME_PACKAGE_PRICE:Ljava/lang/String; = "package_price"

.field public static final NAME_PACKAGE_STATE:Ljava/lang/String; = "package_state"

.field public static final TABLE_NAME:Ljava/lang/String; = "tb_emotion_package"


# instance fields
.field public iconMediaId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "package_icon_media_id"
        sort = 0x5
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "package_name"
        sort = 0x2
    .end annotation
.end field

.field public packageId:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "package_id"
        sort = 0x1
    .end annotation
.end field

.field public packageMediaId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "package_media_id"
        sort = 0x3
    .end annotation
.end field

.field public price:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "package_price"
        sort = 0x7
    .end annotation
.end field

.field public shortDesc:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "package_desc"
        sort = 0x6
    .end annotation
.end field

.field public state:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "package_state"
        sort = 0x4
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
