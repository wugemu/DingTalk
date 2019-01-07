.class public Lcom/alibaba/android/dingtalk/circle/entry/upload/CircleUploadPostEntry;
.super Lcom/alibaba/android/dingtalk/circle/datasource/BaseCircleTableEntry;
.source "CircleUploadPostEntry.java"


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
    name = "tb_circle_comment_data"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/android/dingtalk/circle/datasource/BaseCircleTableEntry",
        "<",
        "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;",
        ">;"
    }
.end annotation


# static fields
.field public static final NAME_POST_CREATE_OBJECT_PARCELED:Ljava/lang/String; = "post_create_object_parceled"

.field public static final TABLE_NAME:Ljava/lang/String; = "tb_circle_post_create_object_data"


# instance fields
.field public mPostCreateObjectParceled:[B
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "type"
        sort = 0x1
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/circle/datasource/BaseCircleTableEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/entry/upload/CircleUploadPostEntry;->mPostCreateObjectParceled:[B

    .line 38
    return-void
.end method

.method public fillContentValues(Landroid/content/ContentValues;)V
    .locals 2
    .param p1, "contentValues"    # Landroid/content/ContentValues;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 32
    const-string/jumbo v0, "post_create_object_parceled"

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/entry/upload/CircleUploadPostEntry;->mPostCreateObjectParceled:[B

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 33
    return-void
.end method

.method public fillWithObject(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;)V
    .locals 1
    .param p1, "object"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;

    .prologue
    .line 27
    invoke-static {p1}, Lbqp;->a(Landroid/os/Parcelable;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/entry/upload/CircleUploadPostEntry;->mPostCreateObjectParceled:[B

    .line 28
    return-void
.end method

.method public bridge synthetic fillWithObject(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 16
    check-cast p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalk/circle/entry/upload/CircleUploadPostEntry;->fillWithObject(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;)V

    return-void
.end method

.method public toObject()Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/entry/upload/CircleUploadPostEntry;->mPostCreateObjectParceled:[B

    sget-object v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lbqp;->a([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;

    return-object v0
.end method

.method public bridge synthetic toObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/circle/entry/upload/CircleUploadPostEntry;->toObject()Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;

    move-result-object v0

    return-object v0
.end method
