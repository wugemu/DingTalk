.class public Lcom/alibaba/android/user/connection/entry/CircleUsrPostDataEntry;
.super Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;
.source "CircleUsrPostDataEntry.java"


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
    name = "tb_connection_usr_post_data"
.end annotation


# static fields
.field public static final TABLE_NAME:Ljava/lang/String; = "tb_connection_usr_post_data"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;-><init>()V

    return-void
.end method

.method public static getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    const-string/jumbo v0, "tb_connection_usr_post_data"

    return-object v0
.end method
