.class final Lcom/alibaba/bee/impl/table/TableInfo$1;
.super Ljava/lang/Object;
.source "TableInfo.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/bee/impl/table/TableInfo;->extractColumns(Ljava/lang/Class;)[Lcom/alibaba/bee/impl/table/ColumnType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/alibaba/bee/impl/table/ColumnType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/alibaba/bee/impl/table/ColumnType;Lcom/alibaba/bee/impl/table/ColumnType;)I
    .locals 2
    .param p1, "lhs"    # Lcom/alibaba/bee/impl/table/ColumnType;
    .param p2, "rhs"    # Lcom/alibaba/bee/impl/table/ColumnType;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 112
    iget v0, p1, Lcom/alibaba/bee/impl/table/ColumnType;->sort:I

    iget v1, p2, Lcom/alibaba/bee/impl/table/ColumnType;->sort:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 109
    check-cast p1, Lcom/alibaba/bee/impl/table/ColumnType;

    check-cast p2, Lcom/alibaba/bee/impl/table/ColumnType;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/bee/impl/table/TableInfo$1;->compare(Lcom/alibaba/bee/impl/table/ColumnType;Lcom/alibaba/bee/impl/table/ColumnType;)I

    move-result v0

    return v0
.end method