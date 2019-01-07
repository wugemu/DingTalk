.class public Lcom/alibaba/android/search/datasource/entry/CommonConversationEntry;
.super Lcom/alibaba/bee/impl/table/BaseTableEntry;
.source "CommonConversationEntry.java"


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
    name = "tb_common_conversation"
.end annotation


# static fields
.field public static final TABLE_NAME:Ljava/lang/String; = "tb_common_conversation"


# instance fields
.field public chatCount:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = "0"
        name = "chatCount"
        sort = 0x7
    .end annotation
.end field

.field public cid:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "cid"
        nullable = false
        sort = 0x1
        uniqueIndexName = "idx_convertab_cid:1"
    .end annotation
.end field

.field public count:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = "0"
        name = "count"
        sort = 0x4
    .end annotation
.end field

.field public modifyTime:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = "0"
        name = "modifyTime"
        nullable = false
        sort = 0x3
    .end annotation
.end field

.field public searchCount:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = "0"
        name = "searchCount"
        sort = 0x6
    .end annotation
.end field

.field public searchModifyTime:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = "0"
        name = "searchModifyTime"
        nullable = false
        sort = 0x5
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "title"
        sort = 0x2
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alibaba/bee/impl/table/BaseTableEntry;-><init>()V

    .line 61
    return-void
.end method

.method public static toDBEntry(Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/android/search/datasource/entry/CommonConversationEntry;
    .locals 2
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 73
    if-nez p0, :cond_0

    .line 74
    const/4 v0, 0x0

    .line 80
    :goto_0
    return-object v0

    .line 77
    :cond_0
    new-instance v0, Lcom/alibaba/android/search/datasource/entry/CommonConversationEntry;

    invoke-direct {v0}, Lcom/alibaba/android/search/datasource/entry/CommonConversationEntry;-><init>()V

    .line 78
    .local v0, "entry":Lcom/alibaba/android/search/datasource/entry/CommonConversationEntry;
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/search/datasource/entry/CommonConversationEntry;->cid:Ljava/lang/String;

    .line 79
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/search/datasource/entry/CommonConversationEntry;->title:Ljava/lang/String;

    goto :goto_0
.end method

.method public static toDBEntry(Ljava/util/Map;)Lcom/alibaba/android/search/datasource/entry/CommonConversationEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/android/search/datasource/entry/CommonConversationEntry;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "conversationMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 86
    const/4 v0, 0x0

    .line 92
    :goto_0
    return-object v0

    .line 89
    :cond_0
    new-instance v0, Lcom/alibaba/android/search/datasource/entry/CommonConversationEntry;

    invoke-direct {v0}, Lcom/alibaba/android/search/datasource/entry/CommonConversationEntry;-><init>()V

    .line 90
    .local v0, "entry":Lcom/alibaba/android/search/datasource/entry/CommonConversationEntry;
    const-string/jumbo v1, "cid"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/search/datasource/entry/CommonConversationEntry;->cid:Ljava/lang/String;

    .line 91
    const-string/jumbo v1, "title"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/search/datasource/entry/CommonConversationEntry;->title:Ljava/lang/String;

    goto :goto_0
.end method
