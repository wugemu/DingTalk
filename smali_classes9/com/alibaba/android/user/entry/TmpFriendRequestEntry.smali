.class public Lcom/alibaba/android/user/entry/TmpFriendRequestEntry;
.super Lcom/alibaba/bee/impl/table/BaseTableEntry;
.source "TmpFriendRequestEntry.java"


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
    name = "tb_tmp_friend_request"
.end annotation


# static fields
.field public static final NAME_ICONMEDIAID:Ljava/lang/String; = "iconMediaId"

.field public static final NAME_NICK:Ljava/lang/String; = "nick"

.field public static final NAME_REMARK:Ljava/lang/String; = "remark"

.field public static final NAME_UID:Ljava/lang/String; = "uid"

.field public static final TABLE_NAME:Ljava/lang/String; = "tb_tmp_friend_request"


# instance fields
.field public iconMediaId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "iconMediaId"
        sort = 0x2
    .end annotation
.end field

.field public nick:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "nick"
        sort = 0x3
    .end annotation
.end field

.field public remark:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "remark"
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
    .line 12
    invoke-direct {p0}, Lcom/alibaba/bee/impl/table/BaseTableEntry;-><init>()V

    return-void
.end method
