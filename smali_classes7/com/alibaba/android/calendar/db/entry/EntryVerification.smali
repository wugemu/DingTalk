.class public Lcom/alibaba/android/calendar/db/entry/EntryVerification;
.super Lcom/alibaba/bee/impl/table/BaseTableEntry;
.source "EntryVerification.java"


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
    name = "tb_calendar_verification"
.end annotation


# static fields
.field public static final NAME_ID:Ljava/lang/String; = "id"

.field private static final NAME_IS_VALID:Ljava/lang/String; = "valid"

.field public static final TABLE_NAME:Ljava/lang/String; = "tb_calendar_verification"


# instance fields
.field public mId:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "id"
        nullable = false
        sort = 0x1
        uniqueIndexName = "idx_tb_calendar_verification_id:1"
    .end annotation
.end field

.field public mIsValid:Z
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "valid"
        nullable = false
        sort = 0x2
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/alibaba/bee/impl/table/BaseTableEntry;-><init>()V

    return-void
.end method
