.class public Lcom/alibaba/android/user/entry/LoginUserEntry;
.super Lcom/alibaba/bee/impl/table/BaseTableEntry;
.source "LoginUserEntry.java"


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
    name = "tb_login_users"
.end annotation


# static fields
.field public static final NAME_INFO_JSON_STRING:Ljava/lang/String; = "info"

.field public static final NAME_UID:Ljava/lang/String; = "uid"

.field public static final TABLE_NAME:Ljava/lang/String; = "tb_login_users"


# instance fields
.field public info:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "info"
        sort = 0x2
    .end annotation
.end field

.field public uid:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "uid"
        nullable = false
        sort = 0x1
        uniqueIndexName = "idx_tb_login_users_uid:1"
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
