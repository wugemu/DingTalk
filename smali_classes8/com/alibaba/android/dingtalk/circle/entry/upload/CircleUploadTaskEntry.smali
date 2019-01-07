.class public Lcom/alibaba/android/dingtalk/circle/entry/upload/CircleUploadTaskEntry;
.super Lcom/alibaba/android/dingtalk/circle/datasource/BaseCircleTableEntry;
.source "CircleUploadTaskEntry.java"


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
    name = "tb_circle_upload_data"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/android/dingtalk/circle/datasource/BaseCircleTableEntry",
        "<",
        "Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final NAME_IS_COMPRESSED:Ljava/lang/String; = "is_compressed"

.field private static final NAME_ORIGIN_URL:Ljava/lang/String; = "origin_url"

.field private static final NAME_TYPE:Ljava/lang/String; = "type"

.field private static final NAME_URL:Ljava/lang/String; = "url"

.field public static final TABLE_NAME:Ljava/lang/String; = "tb_circle_upload_data"

.field public static final TYPE_IMAGE:I = 0x0

.field public static final TYPE_UNKNOWN:I = -0x1

.field public static final TYPE_VIDEO:I = 0x1


# instance fields
.field public isCompressed:Z
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = "false"
        name = "is_compressed"
        sort = 0x4
    .end annotation
.end field

.field public originUrl:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "origin_url"
        sort = 0x3
    .end annotation
.end field

.field public type:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = "-1"
        name = "type"
        sort = 0x1
    .end annotation
.end field

.field public url:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "url"
        sort = 0x2
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/circle/datasource/BaseCircleTableEntry;-><init>()V

    .line 40
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/dingtalk/circle/entry/upload/CircleUploadTaskEntry;->type:I

    .line 58
    iput-object v1, p0, Lcom/alibaba/android/dingtalk/circle/entry/upload/CircleUploadTaskEntry;->url:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Lcom/alibaba/android/dingtalk/circle/entry/upload/CircleUploadTaskEntry;->originUrl:Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/circle/entry/upload/CircleUploadTaskEntry;->isCompressed:Z

    .line 61
    return-void
.end method

.method public fillContentValues(Landroid/content/ContentValues;)V
    .locals 2
    .param p1, "contentValues"    # Landroid/content/ContentValues;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 46
    if-nez p1, :cond_0

    .line 53
    :goto_0
    return-void

    .line 49
    :cond_0
    const-string/jumbo v0, "type"

    iget v1, p0, Lcom/alibaba/android/dingtalk/circle/entry/upload/CircleUploadTaskEntry;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 50
    const-string/jumbo v0, "url"

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/entry/upload/CircleUploadTaskEntry;->url:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string/jumbo v0, "origin_url"

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/entry/upload/CircleUploadTaskEntry;->originUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string/jumbo v0, "is_compressed"

    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/circle/entry/upload/CircleUploadTaskEntry;->isCompressed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method public fillWithObject(Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;)V
    .locals 1
    .param p1, "object"    # Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    .prologue
    .line 75
    iget v0, p1, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->type:I

    iput v0, p0, Lcom/alibaba/android/dingtalk/circle/entry/upload/CircleUploadTaskEntry;->type:I

    .line 76
    iget-object v0, p1, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/entry/upload/CircleUploadTaskEntry;->url:Ljava/lang/String;

    .line 77
    iget-object v0, p1, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->originUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/entry/upload/CircleUploadTaskEntry;->originUrl:Ljava/lang/String;

    .line 78
    iget-boolean v0, p1, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->isCompressed:Z

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/circle/entry/upload/CircleUploadTaskEntry;->isCompressed:Z

    .line 79
    return-void
.end method

.method public bridge synthetic fillWithObject(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 14
    check-cast p1, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalk/circle/entry/upload/CircleUploadTaskEntry;->fillWithObject(Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;)V

    return-void
.end method

.method public toObject()Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 65
    new-instance v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    invoke-direct {v0}, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;-><init>()V

    .line 66
    .local v0, "result":Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    iget v1, p0, Lcom/alibaba/android/dingtalk/circle/entry/upload/CircleUploadTaskEntry;->type:I

    iput v1, v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->type:I

    .line 67
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/entry/upload/CircleUploadTaskEntry;->url:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->url:Ljava/lang/String;

    .line 68
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/entry/upload/CircleUploadTaskEntry;->originUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->originUrl:Ljava/lang/String;

    .line 69
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/circle/entry/upload/CircleUploadTaskEntry;->isCompressed:Z

    iput-boolean v1, v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->isCompressed:Z

    .line 70
    return-object v0
.end method

.method public bridge synthetic toObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/circle/entry/upload/CircleUploadTaskEntry;->toObject()Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    move-result-object v0

    return-object v0
.end method
