.class public Lcom/alibaba/lightapp/runtime/miniapp/datasource/entry/LocalResEntry;
.super Lcom/alibaba/bee/impl/table/BaseTableEntry;
.source "LocalResEntry.java"


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
    name = "tb_lightapp_mini_local_res"
.end annotation


# static fields
.field public static final TABLE_NAME:Ljava/lang/String; = "tb_lightapp_mini_local_res"


# instance fields
.field public appId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "app_id"
        sort = 0x6
    .end annotation
.end field

.field public corpId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "corp_id"
        sort = 0x7
    .end annotation
.end field

.field public extras:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "extras"
        sort = 0x8
    .end annotation
.end field

.field public fileName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "file_name"
        sort = 0x3
    .end annotation
.end field

.field public filePath:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "file_path"
        sort = 0x2
    .end annotation
.end field

.field public fileSize:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "file_size"
        sort = 0x5
    .end annotation
.end field

.field public fileType:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "file_type"
        sort = 0x4
    .end annotation
.end field

.field public localId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "local_id"
        sort = 0x1
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alibaba/bee/impl/table/BaseTableEntry;-><init>()V

    .line 41
    return-void
.end method

.method public static fromDBEntry(Lcom/alibaba/lightapp/runtime/miniapp/datasource/entry/LocalResEntry;)Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;
    .locals 4
    .param p0, "entry"    # Lcom/alibaba/lightapp/runtime/miniapp/datasource/entry/LocalResEntry;

    .prologue
    .line 73
    if-nez p0, :cond_0

    .line 74
    const/4 v0, 0x0

    .line 87
    :goto_0
    return-object v0

    .line 77
    :cond_0
    new-instance v0, Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;

    invoke-direct {v0}, Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;-><init>()V

    .line 78
    .local v0, "model":Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/datasource/entry/LocalResEntry;->localId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;->localId:Ljava/lang/String;

    .line 79
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/datasource/entry/LocalResEntry;->filePath:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;->filePath:Ljava/lang/String;

    .line 80
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/datasource/entry/LocalResEntry;->fileName:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;->fileName:Ljava/lang/String;

    .line 81
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/datasource/entry/LocalResEntry;->fileType:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;->fileType:Ljava/lang/String;

    .line 82
    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/datasource/entry/LocalResEntry;->fileSize:J

    iput-wide v2, v0, Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;->fileSize:J

    .line 83
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/datasource/entry/LocalResEntry;->appId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;->appId:Ljava/lang/String;

    .line 84
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/datasource/entry/LocalResEntry;->corpId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;->corpId:Ljava/lang/String;

    .line 85
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/datasource/entry/LocalResEntry;->extras:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;->extras:Ljava/lang/String;

    goto :goto_0
.end method

.method public static toDBEntry(Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;)Lcom/alibaba/lightapp/runtime/miniapp/datasource/entry/LocalResEntry;
    .locals 4
    .param p0, "model"    # Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;

    .prologue
    .line 54
    if-nez p0, :cond_0

    .line 55
    const/4 v0, 0x0

    .line 68
    :goto_0
    return-object v0

    .line 58
    :cond_0
    new-instance v0, Lcom/alibaba/lightapp/runtime/miniapp/datasource/entry/LocalResEntry;

    invoke-direct {v0}, Lcom/alibaba/lightapp/runtime/miniapp/datasource/entry/LocalResEntry;-><init>()V

    .line 59
    .local v0, "entry":Lcom/alibaba/lightapp/runtime/miniapp/datasource/entry/LocalResEntry;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;->localId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/lightapp/runtime/miniapp/datasource/entry/LocalResEntry;->localId:Ljava/lang/String;

    .line 60
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;->filePath:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/lightapp/runtime/miniapp/datasource/entry/LocalResEntry;->filePath:Ljava/lang/String;

    .line 61
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;->fileName:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/lightapp/runtime/miniapp/datasource/entry/LocalResEntry;->fileName:Ljava/lang/String;

    .line 62
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;->fileType:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/lightapp/runtime/miniapp/datasource/entry/LocalResEntry;->fileType:Ljava/lang/String;

    .line 63
    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;->fileSize:J

    iput-wide v2, v0, Lcom/alibaba/lightapp/runtime/miniapp/datasource/entry/LocalResEntry;->fileSize:J

    .line 64
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;->appId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/lightapp/runtime/miniapp/datasource/entry/LocalResEntry;->appId:Ljava/lang/String;

    .line 65
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;->corpId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/lightapp/runtime/miniapp/datasource/entry/LocalResEntry;->corpId:Ljava/lang/String;

    .line 66
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;->extras:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/lightapp/runtime/miniapp/datasource/entry/LocalResEntry;->extras:Ljava/lang/String;

    goto :goto_0
.end method
