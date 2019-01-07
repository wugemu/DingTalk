.class public Lcom/alibaba/android/dingtalk/circle/entry/upload/CircleUploadResponseEntry;
.super Lcom/alibaba/android/dingtalk/circle/datasource/BaseCircleTableEntry;
.source "CircleUploadResponseEntry.java"


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
    name = "tb_circle_post_response_data"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/android/dingtalk/circle/datasource/BaseCircleTableEntry",
        "<",
        "Lifx;",
        ">;"
    }
.end annotation


# static fields
.field public static final NAME_AUTH_MEDIA_ID:Ljava/lang/String; = "auth_media_id"

.field public static final NAME_MEDIA_ID:Ljava/lang/String; = "media_id"

.field public static final TABLE_NAME:Ljava/lang/String; = "tb_circle_post_response_data"


# instance fields
.field private authMediaId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "auth_media_id"
        sort = 0x2
    .end annotation
.end field

.field private mediaId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "media_id"
        sort = 0x1
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/circle/datasource/BaseCircleTableEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/entry/upload/CircleUploadResponseEntry;->mediaId:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/entry/upload/CircleUploadResponseEntry;->authMediaId:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public fillContentValues(Landroid/content/ContentValues;)V
    .locals 2
    .param p1, "contentValues"    # Landroid/content/ContentValues;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 29
    if-nez p1, :cond_0

    .line 34
    :goto_0
    return-void

    .line 32
    :cond_0
    const-string/jumbo v0, "media_id"

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/entry/upload/CircleUploadResponseEntry;->mediaId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string/jumbo v0, "auth_media_id"

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/entry/upload/CircleUploadResponseEntry;->authMediaId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public fillWithObject(Lifx;)V
    .locals 1
    .param p1, "object"    # Lifx;

    .prologue
    .line 38
    if-nez p1, :cond_0

    .line 43
    :goto_0
    return-void

    .line 1026
    :cond_0
    iget-object v0, p1, Lifx;->a:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/entry/upload/CircleUploadResponseEntry;->mediaId:Ljava/lang/String;

    .line 1034
    iget-object v0, p1, Lifx;->b:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/entry/upload/CircleUploadResponseEntry;->authMediaId:Ljava/lang/String;

    goto :goto_0
.end method

.method public bridge synthetic fillWithObject(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 14
    check-cast p1, Lifx;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalk/circle/entry/upload/CircleUploadResponseEntry;->fillWithObject(Lifx;)V

    return-void
.end method

.method public toObject()Lifx;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 47
    new-instance v0, Lifx;

    invoke-direct {v0}, Lifx;-><init>()V

    .line 48
    .local v0, "response":Lifx;
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/entry/upload/CircleUploadResponseEntry;->mediaId:Ljava/lang/String;

    .line 2030
    iput-object v1, v0, Lifx;->a:Ljava/lang/String;

    .line 49
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/entry/upload/CircleUploadResponseEntry;->authMediaId:Ljava/lang/String;

    .line 2038
    iput-object v1, v0, Lifx;->b:Ljava/lang/String;

    .line 50
    return-object v0
.end method

.method public bridge synthetic toObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/circle/entry/upload/CircleUploadResponseEntry;->toObject()Lifx;

    move-result-object v0

    return-object v0
.end method
