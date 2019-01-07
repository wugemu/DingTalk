.class public Lcom/alibaba/bee/impl/table/types/StringType;
.super Ljava/lang/Object;
.source "StringType.java"

# interfaces
.implements Lcom/alibaba/bee/impl/table/types/FieldConverter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bindArg(Lcom/alibaba/bee/SQLiteStatement;ILjava/lang/Object;)V
    .locals 1
    .param p1, "stmt"    # Lcom/alibaba/bee/SQLiteStatement;
    .param p2, "index"    # I
    .param p3, "arg"    # Ljava/lang/Object;

    .prologue
    .line 27
    if-nez p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, p2, v0}, Lcom/alibaba/bee/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 28
    return-void

    .line 27
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDataType()Lcom/alibaba/bee/impl/table/DataType;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/alibaba/bee/impl/table/DataType;->TEXT:Lcom/alibaba/bee/impl/table/DataType;

    return-object v0
.end method

.method public resultToJava(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "columnPos"    # I

    .prologue
    .line 22
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
