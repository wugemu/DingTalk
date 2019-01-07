.class public Lcom/alibaba/alimei/sqlite/SQLiteView;
.super Ljava/lang/Object;
.source "SQLiteView.java"


# static fields
.field public static final VIEW_TYPE_DEFAULT:Ljava/lang/String; = " "

.field public static final VIEW_TYPE_TEMP:Ljava/lang/String; = "TEMP"

.field public static final VIEW_TYPE_TEMPORARY:Ljava/lang/String; = "TEMPORARY"


# instance fields
.field private columns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sqlite/SQLiteViewColumn;",
            ">;"
        }
    .end annotation
.end field

.field private distinct:Z

.field private from:Ljava/lang/String;

.field private groupBy:Ljava/lang/String;

.field private having:Ljava/lang/String;

.field private limit:Ljava/lang/String;

.field private orderBy:Ljava/lang/String;

.field private viewName:Ljava/lang/String;

.field private viewType:Ljava/lang/String;

.field private where:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .param p1, "viewName"    # Ljava/lang/String;
    .param p3, "fromSegment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sqlite/SQLiteViewColumn;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    .local p2, "columns":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sqlite/SQLiteViewColumn;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string/jumbo v0, " "

    iput-object v0, p0, Lcom/alibaba/alimei/sqlite/SQLiteView;->viewType:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/alimei/sqlite/SQLiteView;->distinct:Z

    .line 39
    iput-object p1, p0, Lcom/alibaba/alimei/sqlite/SQLiteView;->viewName:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/alibaba/alimei/sqlite/SQLiteView;->columns:Ljava/util/List;

    .line 41
    iput-object p3, p0, Lcom/alibaba/alimei/sqlite/SQLiteView;->from:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public getColumns()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sqlite/SQLiteViewColumn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/alimei/sqlite/SQLiteView;->columns:Ljava/util/List;

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alibaba/alimei/sqlite/SQLiteView;->from:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupBy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alibaba/alimei/sqlite/SQLiteView;->groupBy:Ljava/lang/String;

    return-object v0
.end method

.method public getHaving()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alibaba/alimei/sqlite/SQLiteView;->having:Ljava/lang/String;

    return-object v0
.end method

.method public getLimit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alibaba/alimei/sqlite/SQLiteView;->limit:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderBy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alibaba/alimei/sqlite/SQLiteView;->orderBy:Ljava/lang/String;

    return-object v0
.end method

.method public getViewName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/alimei/sqlite/SQLiteView;->viewName:Ljava/lang/String;

    return-object v0
.end method

.method public getViewType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alibaba/alimei/sqlite/SQLiteView;->viewType:Ljava/lang/String;

    return-object v0
.end method

.method public getWhere()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alibaba/alimei/sqlite/SQLiteView;->where:Ljava/lang/String;

    return-object v0
.end method

.method public isDistinct()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/alibaba/alimei/sqlite/SQLiteView;->distinct:Z

    return v0
.end method

.method public setColumns(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sqlite/SQLiteViewColumn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "columns":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sqlite/SQLiteViewColumn;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/sqlite/SQLiteView;->columns:Ljava/util/List;

    .line 58
    return-void
.end method

.method public setDistinct(Z)V
    .locals 0
    .param p1, "distinct"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/alibaba/alimei/sqlite/SQLiteView;->distinct:Z

    .line 82
    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0
    .param p1, "from"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/alibaba/alimei/sqlite/SQLiteView;->from:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setGroupBy(Ljava/lang/String;)V
    .locals 0
    .param p1, "groupBy"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/alibaba/alimei/sqlite/SQLiteView;->groupBy:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setHaving(Ljava/lang/String;)V
    .locals 0
    .param p1, "having"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/alibaba/alimei/sqlite/SQLiteView;->having:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setLimit(Ljava/lang/String;)V
    .locals 0
    .param p1, "limit"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/alibaba/alimei/sqlite/SQLiteView;->limit:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setOrderBy(Ljava/lang/String;)V
    .locals 0
    .param p1, "orderBy"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/alibaba/alimei/sqlite/SQLiteView;->orderBy:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setViewName(Ljava/lang/String;)V
    .locals 0
    .param p1, "viewName"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/alibaba/alimei/sqlite/SQLiteView;->viewName:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setViewType(Ljava/lang/String;)V
    .locals 0
    .param p1, "viewType"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/alibaba/alimei/sqlite/SQLiteView;->viewType:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setWhere(Ljava/lang/String;)V
    .locals 0
    .param p1, "where"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/alibaba/alimei/sqlite/SQLiteView;->where:Ljava/lang/String;

    .line 90
    return-void
.end method
