.class public Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;
.super Lcom/alibaba/bee/impl/table/BaseTableEntry;
.source "SearchAssureEntry.java"


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
    name = "tb_search_assure"
.end annotation


# static fields
.field public static final TABLE_NAME:Ljava/lang/String; = "tb_search_assure"


# instance fields
.field public clickAtMills:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "clickAtMills"
        sort = 0x5
    .end annotation
.end field

.field public clickTimes:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "clickTimes"
        sort = 0x4
    .end annotation
.end field

.field public desc:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "desc"
        sort = 0x9
    .end annotation
.end field

.field public desc2:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "desc2"
        sort = 0xa
    .end annotation
.end field

.field public evictAtMills:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "evictAtMills"
        sort = 0x6
    .end annotation
.end field

.field public extra:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "extra"
        sort = 0xb
    .end annotation
.end field

.field public keyword:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "keyword"
        sort = 0x1
        uniqueIndexName = "idx_search_assure:1"
    .end annotation
.end field

.field public searchId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "searchId"
        sort = 0x2
        uniqueIndexName = "idx_search_assure:2"
    .end annotation
.end field

.field public tag:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "tag"
        sort = 0x7
    .end annotation
.end field

.field public tag2:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "tag2"
        sort = 0xc
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "title"
        sort = 0x3
    .end annotation
.end field

.field public type:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "type"
        sort = 0x8
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/alibaba/bee/impl/table/BaseTableEntry;-><init>()V

    .line 59
    return-void
.end method

.method public static removeRedTagAndPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 122
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    .end local p0    # "str":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "str":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "\\[.*?\\]"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "</?red>"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static toDBEntry(Lcom/alibaba/android/search/assure/model/AssureModel;)Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;
    .locals 8
    .param p0, "assureModel"    # Lcom/alibaba/android/search/assure/model/AssureModel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 77
    if-nez p0, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-object v2

    .line 81
    :cond_1
    invoke-static {}, Lcom/alibaba/android/search/assure/model/AssureModel;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 82
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_0

    .line 86
    new-instance v2, Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;

    invoke-direct {v2}, Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;-><init>()V

    .line 87
    .local v2, "entry":Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;
    invoke-virtual {p0}, Lcom/alibaba/android/search/assure/model/AssureModel;->getKeyWord()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;->keyword:Ljava/lang/String;

    .line 88
    invoke-virtual {p0}, Lcom/alibaba/android/search/assure/model/AssureModel;->getSearchId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;->searchId:Ljava/lang/String;

    .line 89
    invoke-virtual {p0}, Lcom/alibaba/android/search/assure/model/AssureModel;->getTitle()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;->title:Ljava/lang/String;

    .line 91
    iget-object v5, v2, Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;->title:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 93
    const/4 v4, 0x0

    .line 94
    .local v4, "useRaw":Z
    invoke-virtual {p0}, Lcom/alibaba/android/search/assure/model/AssureModel;->getBaseModel()Lcom/alibaba/android/search/model/BaseModel;

    move-result-object v0

    .line 95
    .local v0, "baseModel":Lcom/alibaba/android/search/model/BaseModel;
    instance-of v5, v0, Lcom/alibaba/android/search/model/GroupModel;

    if-eqz v5, :cond_2

    move-object v3, v0

    .line 96
    check-cast v3, Lcom/alibaba/android/search/model/GroupModel;

    .line 97
    .local v3, "groupModel":Lcom/alibaba/android/search/model/GroupModel;
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v5

    invoke-virtual {v3}, Lcom/alibaba/android/search/model/GroupModel;->getDingtalkConversation()Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 98
    invoke-virtual {v3}, Lcom/alibaba/android/search/model/GroupModel;->getDingtalkConversation()Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/android/search/utils/SearchUtils;->b(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;->title:Ljava/lang/String;

    .line 99
    const/4 v4, 0x1

    .line 103
    .end local v3    # "groupModel":Lcom/alibaba/android/search/model/GroupModel;
    :cond_2
    if-nez v4, :cond_3

    .line 105
    iget-object v5, v2, Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;->title:Ljava/lang/String;

    invoke-static {v5}, Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;->removeRedTagAndPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;->title:Ljava/lang/String;

    .line 109
    .end local v0    # "baseModel":Lcom/alibaba/android/search/model/BaseModel;
    .end local v4    # "useRaw":Z
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/android/search/assure/model/AssureModel;->getClickTimes()I

    move-result v5

    iput v5, v2, Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;->clickTimes:I

    .line 110
    invoke-virtual {p0}, Lcom/alibaba/android/search/assure/model/AssureModel;->getClickAtMills()J

    move-result-wide v6

    iput-wide v6, v2, Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;->clickAtMills:J

    .line 111
    invoke-virtual {p0}, Lcom/alibaba/android/search/assure/model/AssureModel;->getEvictAtMills()J

    move-result-wide v6

    iput-wide v6, v2, Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;->evictAtMills:J

    .line 112
    invoke-virtual {p0}, Lcom/alibaba/android/search/assure/model/AssureModel;->getDesc()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;->desc:Ljava/lang/String;

    .line 113
    invoke-virtual {p0}, Lcom/alibaba/android/search/assure/model/AssureModel;->getDesc2()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;->desc2:Ljava/lang/String;

    .line 114
    invoke-virtual {p0}, Lcom/alibaba/android/search/assure/model/AssureModel;->getType()Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;->getCode()I

    move-result v5

    iput v5, v2, Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;->type:I

    .line 115
    invoke-virtual {p0}, Lcom/alibaba/android/search/assure/model/AssureModel;->getTag()J

    move-result-wide v6

    long-to-int v5, v6

    iput v5, v2, Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;->tag:I

    .line 116
    invoke-virtual {p0}, Lcom/alibaba/android/search/assure/model/AssureModel;->getTag()J

    move-result-wide v6

    iput-wide v6, v2, Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;->tag2:J

    goto/16 :goto_0
.end method


# virtual methods
.method public toAssureModel()Lcom/alibaba/android/search/assure/model/AssureModel;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 130
    invoke-static {p0}, Lenk;->a(Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;)Lcom/alibaba/android/search/assure/model/AssureModel;

    move-result-object v0

    .line 131
    .local v0, "assureModel":Lcom/alibaba/android/search/assure/model/AssureModel;
    invoke-virtual {v0}, Lcom/alibaba/android/search/assure/model/AssureModel;->parseBaseModel()V

    .line 133
    invoke-virtual {v0}, Lcom/alibaba/android/search/assure/model/AssureModel;->getBaseModel()Lcom/alibaba/android/search/model/BaseModel;

    move-result-object v1

    .line 134
    .local v1, "baseModel":Lcom/alibaba/android/search/model/BaseModel;
    if-eqz v1, :cond_0

    .line 135
    iget-object v2, p0, Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;->keyword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/search/model/BaseModel;->setKeyword(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v1, v0}, Lcom/alibaba/android/search/model/BaseModel;->setAssureModel(Lcom/alibaba/android/search/assure/model/AssureModel;)V

    .line 139
    :cond_0
    invoke-virtual {v0, p0}, Lcom/alibaba/android/search/assure/model/AssureModel;->setAssureEntry(Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;)V

    .line 141
    return-object v0
.end method
