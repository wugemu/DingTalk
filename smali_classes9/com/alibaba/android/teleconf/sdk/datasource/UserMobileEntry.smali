.class public Lcom/alibaba/android/teleconf/sdk/datasource/UserMobileEntry;
.super Lcom/alibaba/bee/impl/table/BaseTableEntry;
.source "UserMobileEntry.java"


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
    name = "tbusermobile"
.end annotation


# static fields
.field public static final NAME_MOBILE:Ljava/lang/String; = "user_mobile"

.field public static final NAME_STATE_CODE:Ljava/lang/String; = "user_state_code"

.field public static final NAME_UID:Ljava/lang/String; = "user_uid"

.field public static final TABLE_NAME:Ljava/lang/String; = "tbusermobile"


# instance fields
.field public mobile:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "user_mobile"
        nullable = false
        sort = 0x2
    .end annotation
.end field

.field public stateCode:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "user_state_code"
        nullable = false
        sort = 0x3
    .end annotation
.end field

.field public uid:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "user_uid"
        nullable = false
        sort = 0x1
        uniqueIndexName = "idx_tbusermobile_uid:1"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/alibaba/bee/impl/table/BaseTableEntry;-><init>()V

    return-void
.end method

.method public static fromeDbEntry(Lcom/alibaba/android/teleconf/sdk/datasource/UserMobileEntry;)Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;
    .locals 4
    .param p0, "entry"    # Lcom/alibaba/android/teleconf/sdk/datasource/UserMobileEntry;

    .prologue
    .line 58
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;

    invoke-direct {v0}, Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;-><init>()V

    .line 59
    .local v0, "object":Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;
    if-eqz p0, :cond_0

    .line 60
    iget-wide v2, p0, Lcom/alibaba/android/teleconf/sdk/datasource/UserMobileEntry;->uid:J

    iput-wide v2, v0, Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;->uid:J

    .line 61
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/datasource/UserMobileEntry;->mobile:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;->mobile:Ljava/lang/String;

    .line 62
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/datasource/UserMobileEntry;->stateCode:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;->stateCode:Ljava/lang/String;

    .line 64
    :cond_0
    return-object v0
.end method

.method public static toDbEntry(Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;)Lcom/alibaba/android/teleconf/sdk/datasource/UserMobileEntry;
    .locals 4
    .param p0, "object"    # Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;

    .prologue
    .line 48
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/datasource/UserMobileEntry;

    invoke-direct {v0}, Lcom/alibaba/android/teleconf/sdk/datasource/UserMobileEntry;-><init>()V

    .line 49
    .local v0, "entry":Lcom/alibaba/android/teleconf/sdk/datasource/UserMobileEntry;
    if-eqz p0, :cond_0

    .line 50
    iget-wide v2, p0, Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;->uid:J

    iput-wide v2, v0, Lcom/alibaba/android/teleconf/sdk/datasource/UserMobileEntry;->uid:J

    .line 51
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;->mobile:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/datasource/UserMobileEntry;->mobile:Ljava/lang/String;

    .line 52
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;->stateCode:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/datasource/UserMobileEntry;->stateCode:Ljava/lang/String;

    .line 54
    :cond_0
    return-object v0
.end method
