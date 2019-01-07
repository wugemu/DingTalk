.class public Lcom/alibaba/bee/impl/table/types/FloatType;
.super Ljava/lang/Object;
.source "FloatType.java"

# interfaces
.implements Lcom/alibaba/bee/impl/table/types/FieldConverter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
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
    .line 25
    check-cast p3, Ljava/lang/Number;

    .end local p3    # "arg":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-interface {p1, p2, v0, v1}, Lcom/alibaba/bee/SQLiteStatement;->bindDouble(ID)V

    .line 26
    return-void
.end method

.method public getDataType()Lcom/alibaba/bee/impl/table/DataType;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/alibaba/bee/impl/table/DataType;->REAL:Lcom/alibaba/bee/impl/table/DataType;

    return-object v0
.end method

.method public resultToJava(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "columnPos"    # I

    .prologue
    .line 20
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
