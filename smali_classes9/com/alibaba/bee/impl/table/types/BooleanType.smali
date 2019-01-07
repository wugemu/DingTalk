.class public Lcom/alibaba/bee/impl/table/types/BooleanType;
.super Ljava/lang/Object;
.source "BooleanType.java"

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
    .locals 2
    .param p1, "stmt"    # Lcom/alibaba/bee/SQLiteStatement;
    .param p2, "index"    # I
    .param p3, "arg"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 24
    check-cast p3, Ljava/lang/Boolean;

    .end local p3    # "arg":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    :goto_0
    invoke-interface {p1, p2, v0, v1}, Lcom/alibaba/bee/SQLiteStatement;->bindLong(IJ)V

    .line 25
    return-void

    .line 24
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getDataType()Lcom/alibaba/bee/impl/table/DataType;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/alibaba/bee/impl/table/DataType;->INTEGER:Lcom/alibaba/bee/impl/table/DataType;

    return-object v0
.end method

.method public resultToJava(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "columnPos"    # I

    .prologue
    .line 19
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
