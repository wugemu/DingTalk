.class public Lcom/alibaba/bee/impl/table/types/BlobType;
.super Ljava/lang/Object;
.source "BlobType.java"

# interfaces
.implements Lcom/alibaba/bee/impl/table/types/FieldConverter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bindArg(Lcom/alibaba/bee/SQLiteStatement;ILjava/lang/Object;)V
    .locals 0
    .param p1, "stmt"    # Lcom/alibaba/bee/SQLiteStatement;
    .param p2, "index"    # I
    .param p3, "arg"    # Ljava/lang/Object;

    .prologue
    .line 24
    check-cast p3, [B

    .end local p3    # "arg":Ljava/lang/Object;
    check-cast p3, [B

    invoke-interface {p1, p2, p3}, Lcom/alibaba/bee/SQLiteStatement;->bindBlob(I[B)V

    .line 25
    return-void
.end method

.method public getDataType()Lcom/alibaba/bee/impl/table/DataType;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/alibaba/bee/impl/table/DataType;->BLOB:Lcom/alibaba/bee/impl/table/DataType;

    return-object v0
.end method

.method public resultToJava(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "columnPos"    # I

    .prologue
    .line 19
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    return-object v0
.end method
