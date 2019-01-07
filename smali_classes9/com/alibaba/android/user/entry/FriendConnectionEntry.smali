.class public Lcom/alibaba/android/user/entry/FriendConnectionEntry;
.super Lcom/alibaba/bee/impl/table/BaseTableEntry;
.source "FriendConnectionEntry.java"


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
    name = "tb_friend_connection"
.end annotation


# static fields
.field public static final NAME_MOBILE:Ljava/lang/String; = "mobile"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NAME_SHARE_MOBILE:Ljava/lang/String; = "shareMobile"

.field public static final NAME_UID:Ljava/lang/String; = "uid"

.field public static final TABLE_NAME:Ljava/lang/String; = "tb_friend_connection"


# instance fields
.field public mobile:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "mobile"
        sort = 0x2
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public shareMobile:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "shareMobile"
        sort = 0x3
    .end annotation
.end field

.field public uid:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "uid"
        nullable = false
        sort = 0x1
        uniqueIndexName = "idx_tb_friend_connection_uid:1"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/alibaba/bee/impl/table/BaseTableEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 42
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/user/entry/FriendConnectionEntry;->uid:J

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/entry/FriendConnectionEntry;->mobile:Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/user/entry/FriendConnectionEntry;->shareMobile:I

    .line 45
    return-void
.end method
