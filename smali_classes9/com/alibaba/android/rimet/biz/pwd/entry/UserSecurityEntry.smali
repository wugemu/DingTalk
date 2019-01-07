.class public Lcom/alibaba/android/rimet/biz/pwd/entry/UserSecurityEntry;
.super Lcom/alibaba/bee/impl/table/BaseTableEntry;
.source "UserSecurityEntry.java"


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
    name = "tbusersecurity"
.end annotation


# static fields
.field public static final NAME_HIDE_BOSS_MODE:Ljava/lang/String; = "hideBossMode"

.field public static final NAME_PASSCODE:Ljava/lang/String; = "passcode"

.field public static final NAME_SCREEN_LOCK:Ljava/lang/String; = "screenLock"

.field public static final NAME_UID:Ljava/lang/String; = "uid"

.field public static final TABLE_NAME:Ljava/lang/String; = "tbusersecurity"


# instance fields
.field public hideBossMode:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "hideBossMode"
        sort = 0x4
    .end annotation
.end field

.field public passcode:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "passcode"
        sort = 0x2
    .end annotation
.end field

.field public screenLock:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "screenLock"
        sort = 0x3
    .end annotation
.end field

.field public uid:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "uid"
        nullable = false
        sort = 0x1
        uniqueIndexName = "idx_tabmsgactor_uid:1"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/alibaba/bee/impl/table/BaseTableEntry;-><init>()V

    return-void
.end method
