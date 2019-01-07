.class public Lcom/alibaba/android/dingtalkim/db/EmotionPackageInstalledEntry;
.super Lcom/alibaba/bee/impl/table/BaseTableEntry;
.source "EmotionPackageInstalledEntry.java"


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
    name = "emotion_package_installed"
.end annotation


# static fields
.field public static final NAME_PACKAGE_ID:Ljava/lang/String; = "package_id"

.field public static final NAME_PACKAGE_INSTALLED_ICON_URL:Ljava/lang/String; = "package_installed_url"

.field public static final NAME_PACKAGE_INSTALLED_ORDER:Ljava/lang/String; = "install_order"

.field public static final NAME_PACKAGE_INSTALLED_PROGRESS:Ljava/lang/String; = "install_progress"

.field public static final NAME_PACKAGE_INSTALLED_STATUS:Ljava/lang/String; = "install_status"

.field public static final TABLE_NAME:Ljava/lang/String; = "emotion_package_installed"


# instance fields
.field public installOrder:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "install_order"
        sort = 0x5
    .end annotation
.end field

.field public installProgress:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "install_progress"
        sort = 0x4
    .end annotation
.end field

.field public installStatus:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "install_status"
        sort = 0x3
    .end annotation
.end field

.field public packageIConUrl:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "package_installed_url"
        sort = 0x2
    .end annotation
.end field

.field public packageId:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "package_id"
        sort = 0x1
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alibaba/bee/impl/table/BaseTableEntry;-><init>()V

    return-void
.end method
