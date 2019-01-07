.class public Lcom/alibaba/android/search/recommend/syn/datasource/entry/UserRecommendEntry;
.super Lcom/alibaba/bee/impl/table/BaseTableEntry;
.source "UserRecommendEntry.java"


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
    name = "tb_user_intimacy"
.end annotation


# static fields
.field public static final TABLE_NAME:Ljava/lang/String; = "tb_user_intimacy"


# instance fields
.field public avatar:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = ""
        name = "avatar"
        sort = 0x9
    .end annotation
.end field

.field public depName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = ""
        name = "depName"
        sort = 0x8
    .end annotation
.end field

.field public empName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = ""
        name = "empName"
        sort = 0x6
    .end annotation
.end field

.field public mobile:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = ""
        name = "mobile"
        sort = 0xb
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

.field public nick:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = ""
        name = "nick"
        sort = 0x4
    .end annotation
.end field

.field public orgId:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = "0"
        name = "orgId"
        sort = 0x5
    .end annotation
.end field

.field public orgName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = ""
        name = "orgName"
        sort = 0x7
    .end annotation
.end field

.field public score:D
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "score"
        sort = 0x2
    .end annotation
.end field

.field public uid:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "uid"
        nullable = false
        sort = 0x1
        uniqueIndexName = "idx_user_intimacy_uid:1"
    .end annotation
.end field

.field public version:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = "0"
        name = "ver"
        sort = 0xa
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/alibaba/bee/impl/table/BaseTableEntry;-><init>()V

    .line 64
    return-void
.end method

.method public static fromMap(Ljava/util/Map;)Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;"
        }
    .end annotation

    .prologue
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v6, 0x0

    .line 80
    if-nez p0, :cond_0

    .line 81
    const/4 v2, 0x0

    .line 111
    :goto_0
    return-object v2

    .line 84
    :cond_0
    new-instance v2, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    invoke-direct {v2}, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;-><init>()V

    .line 86
    .local v2, "userIntimacyPushObject":Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;
    const-string/jumbo v3, "uid"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 87
    const-string/jumbo v3, "uid"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1109
    invoke-static {v3, v6, v7}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 87
    iput-wide v4, v2, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->uid:J

    .line 90
    :cond_1
    const-string/jumbo v3, "nick"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->nick:Ljava/lang/String;

    .line 92
    const-string/jumbo v3, "avatar"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 93
    .local v1, "mediaId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v1}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 95
    :try_start_0
    invoke-static {v1}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->avatar:Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_1
    const-string/jumbo v3, "orgId"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2109
    invoke-static {v3, v6, v7}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 103
    iput-wide v4, v2, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->orgId:J

    .line 104
    const-string/jumbo v3, "empName"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->empName:Ljava/lang/String;

    .line 105
    const-string/jumbo v3, "orgName"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->orgName:Ljava/lang/String;

    .line 106
    const-string/jumbo v3, "depName"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->depName:Ljava/lang/String;

    .line 107
    const-string/jumbo v3, "score"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcoc;->b(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, v2, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->score:D

    .line 108
    const-string/jumbo v3, "modifyTime"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3109
    invoke-static {v3, v6, v7}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 108
    iput-wide v4, v2, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->modifidTime:J

    .line 109
    const-string/jumbo v3, "ver"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4109
    invoke-static {v3, v6, v7}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 109
    iput-wide v4, v2, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->version:J

    .line 110
    const-string/jumbo v3, "mobile"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->mobile:Ljava/lang/String;

    goto/16 :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_1

    .line 100
    .end local v0    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    :cond_2
    iput-object v1, v2, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->avatar:Ljava/lang/String;

    goto :goto_1
.end method
