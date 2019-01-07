.class public Lcom/alibaba/android/search/datasource/entry/FunctionEntry;
.super Lcom/alibaba/bee/impl/table/BaseTableEntry;
.source "FunctionEntry.java"


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
    name = "tbfunction"
.end annotation


# static fields
.field public static final TABLE_NAME:Ljava/lang/String; = "tbfunction"


# instance fields
.field public avatar_media:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "avatar_media"
        sort = 0x4
    .end annotation
.end field

.field public desc:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "desc"
        sort = 0x3
    .end annotation
.end field

.field public id:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "funid"
        sort = 0x1
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "name"
        sort = 0x2
    .end annotation
.end field

.field public url:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "url"
        sort = 0x5
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alibaba/bee/impl/table/BaseTableEntry;-><init>()V

    .line 30
    return-void
.end method

.method public static toDBEntry(Lcom/alibaba/android/search/model/FunctionModel;)Lcom/alibaba/android/search/datasource/entry/FunctionEntry;
    .locals 2
    .param p0, "functionModel"    # Lcom/alibaba/android/search/model/FunctionModel;

    .prologue
    .line 40
    if-nez p0, :cond_0

    .line 41
    const/4 v0, 0x0

    .line 51
    :goto_0
    return-object v0

    .line 44
    :cond_0
    new-instance v0, Lcom/alibaba/android/search/datasource/entry/FunctionEntry;

    invoke-direct {v0}, Lcom/alibaba/android/search/datasource/entry/FunctionEntry;-><init>()V

    .line 45
    .local v0, "entry":Lcom/alibaba/android/search/datasource/entry/FunctionEntry;
    invoke-virtual {p0}, Lcom/alibaba/android/search/model/FunctionModel;->getFunctionId()I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/search/datasource/entry/FunctionEntry;->id:I

    .line 46
    invoke-virtual {p0}, Lcom/alibaba/android/search/model/FunctionModel;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/search/datasource/entry/FunctionEntry;->name:Ljava/lang/String;

    .line 47
    invoke-virtual {p0}, Lcom/alibaba/android/search/model/FunctionModel;->getDesc()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/search/datasource/entry/FunctionEntry;->desc:Ljava/lang/String;

    .line 48
    invoke-virtual {p0}, Lcom/alibaba/android/search/model/FunctionModel;->getMediaId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/search/datasource/entry/FunctionEntry;->avatar_media:Ljava/lang/String;

    .line 49
    invoke-virtual {p0}, Lcom/alibaba/android/search/model/FunctionModel;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/search/datasource/entry/FunctionEntry;->url:Ljava/lang/String;

    goto :goto_0
.end method
