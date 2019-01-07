.class public Lcom/alibaba/android/user/entry/CommonContactEntry;
.super Lcom/alibaba/bee/impl/table/BaseTableEntry;
.source "CommonContactEntry.java"


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
    name = "tb_common_contact"
.end annotation


# static fields
.field public static final NAME_CHAT_COUNT:Ljava/lang/String; = "chatCount"

.field public static final NAME_COUNT:Ljava/lang/String; = "count"

.field public static final NAME_DING_COUNT:Ljava/lang/String; = "dingCount"

.field public static final NAME_ISACTIVE:Ljava/lang/String; = "isActive"

.field public static final NAME_MODIFYTIME:Ljava/lang/String; = "modifyTime"

.field public static final NAME_ORG_EMAIL:Ljava/lang/String; = "orgEmail"

.field public static final NAME_ORG_NAME:Ljava/lang/String; = "orgName"

.field public static final NAME_ORG_TITLE:Ljava/lang/String; = "orgTitle"

.field public static final NAME_REFRESHTIME:Ljava/lang/String; = "refreshTime"

.field public static final NAME_SEARCH_COUNT:Ljava/lang/String; = "searchCount"

.field public static final NAME_SEARCH_MODIFYTIME:Ljava/lang/String; = "searchModifyTime"

.field public static final NAME_TELE_COUNT_:Ljava/lang/String; = "teleCount"

.field public static final NAME_UID:Ljava/lang/String; = "uid"

.field public static final TABLE_NAME:Ljava/lang/String; = "tb_common_contact"


# instance fields
.field public chatCount:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = "0"
        name = "chatCount"
        nullable = false
        sort = 0x6
    .end annotation
.end field

.field public count:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "count"
        sort = 0x4
    .end annotation
.end field

.field public dingCount:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = "0"
        name = "dingCount"
        nullable = false
        sort = 0x7
    .end annotation
.end field

.field public isActive:Z
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "isActive"
        sort = 0xb
    .end annotation
.end field

.field public modifyTime:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "modifyTime"
        nullable = false
        sort = 0x5
    .end annotation
.end field

.field public orgEmail:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = ""
        name = "orgEmail"
        sort = 0xa
    .end annotation
.end field

.field public orgName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "orgName"
        sort = 0x3
    .end annotation
.end field

.field public orgTitle:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "orgTitle"
        sort = 0x2
    .end annotation
.end field

.field public refreshTime:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = "0"
        name = "refreshTime"
        nullable = false
        sort = 0x9
    .end annotation
.end field

.field public searchCount:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = "0"
        name = "searchCount"
        nullable = false
        sort = 0xd
    .end annotation
.end field

.field public searchModifyTime:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = "0"
        name = "searchModifyTime"
        nullable = false
        sort = 0xc
    .end annotation
.end field

.field public teleCount:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = "0"
        name = "teleCount"
        nullable = false
        sort = 0x8
    .end annotation
.end field

.field public uid:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "uid"
        nullable = false
        sort = 0x1
        uniqueIndexName = "idx_tb_common_contact_uid:1"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 19
    invoke-direct {p0}, Lcom/alibaba/bee/impl/table/BaseTableEntry;-><init>()V

    .line 54
    iput-wide v0, p0, Lcom/alibaba/android/user/entry/CommonContactEntry;->chatCount:J

    .line 57
    iput-wide v0, p0, Lcom/alibaba/android/user/entry/CommonContactEntry;->dingCount:J

    .line 60
    iput-wide v0, p0, Lcom/alibaba/android/user/entry/CommonContactEntry;->teleCount:J

    .line 63
    iput-wide v0, p0, Lcom/alibaba/android/user/entry/CommonContactEntry;->refreshTime:J

    return-void
.end method

.method public static fromDBEntry(Lcom/alibaba/android/user/entry/CommonContactEntry;)Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;
    .locals 4
    .param p0, "entry"    # Lcom/alibaba/android/user/entry/CommonContactEntry;

    .prologue
    .line 79
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;-><init>()V

    .line 80
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;
    iget-wide v2, p0, Lcom/alibaba/android/user/entry/CommonContactEntry;->uid:J

    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->uid:J

    .line 81
    iget-object v1, p0, Lcom/alibaba/android/user/entry/CommonContactEntry;->orgName:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->orgName:Ljava/lang/String;

    .line 82
    iget-object v1, p0, Lcom/alibaba/android/user/entry/CommonContactEntry;->orgTitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->orgTitle:Ljava/lang/String;

    .line 83
    iget-wide v2, p0, Lcom/alibaba/android/user/entry/CommonContactEntry;->modifyTime:J

    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->modifyTime:J

    .line 84
    iget-wide v2, p0, Lcom/alibaba/android/user/entry/CommonContactEntry;->refreshTime:J

    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->refreshTime:J

    .line 85
    iget-object v1, p0, Lcom/alibaba/android/user/entry/CommonContactEntry;->orgEmail:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->orgEmail:Ljava/lang/String;

    .line 86
    iget-boolean v1, p0, Lcom/alibaba/android/user/entry/CommonContactEntry;->isActive:Z

    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->isActive:Z

    .line 87
    return-object v0
.end method

.method public static fromMap(Ljava/util/Map;)Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;-><init>()V

    .line 92
    .local v2, "object":Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;
    const-string/jumbo v3, "orgName"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->orgName:Ljava/lang/String;

    .line 93
    const-string/jumbo v3, "orgTitle"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->orgTitle:Ljava/lang/String;

    .line 94
    const-string/jumbo v3, "uid"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 95
    const-string/jumbo v3, "uid"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->uid:J

    .line 97
    :cond_0
    const-string/jumbo v3, "iconMediaId"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 98
    .local v1, "mediaId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v1}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 100
    :try_start_0
    invoke-static {v1}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->avatarMediaId:Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    const-string/jumbo v3, "nick"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->nick:Ljava/lang/String;

    .line 108
    const-string/jumbo v3, "nickpinyin"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->nickPinyin:Ljava/lang/String;

    .line 109
    const-string/jumbo v3, "alias"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->alias:Ljava/lang/String;

    .line 110
    const-string/jumbo v3, "aliaspinyin"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->aliasPinyin:Ljava/lang/String;

    .line 111
    const-string/jumbo v3, "mobile"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->mobile:Ljava/lang/String;

    .line 112
    const-string/jumbo v3, "1"

    const-string/jumbo v4, "data_complete"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->isDataComplete:Z

    .line 113
    const-string/jumbo v3, "nickAlpha"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->nickPinyin:Ljava/lang/String;

    .line 114
    const-string/jumbo v3, "email"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->email:Ljava/lang/String;

    .line 115
    const-string/jumbo v3, "dingtaklId"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->dingTalkId:Ljava/lang/String;

    .line 116
    const-string/jumbo v3, "isActive"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 117
    const-string/jumbo v3, "isActive"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->isActive:Z

    .line 119
    :cond_1
    return-object v2

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto/16 :goto_0

    .line 105
    .end local v0    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    :cond_2
    iput-object v1, v2, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->avatarMediaId:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public static toDBEntry(Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;)Lcom/alibaba/android/user/entry/CommonContactEntry;
    .locals 4
    .param p0, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;

    .prologue
    .line 123
    new-instance v0, Lcom/alibaba/android/user/entry/CommonContactEntry;

    invoke-direct {v0}, Lcom/alibaba/android/user/entry/CommonContactEntry;-><init>()V

    .line 124
    .local v0, "entry":Lcom/alibaba/android/user/entry/CommonContactEntry;
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->uid:J

    iput-wide v2, v0, Lcom/alibaba/android/user/entry/CommonContactEntry;->uid:J

    .line 125
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->orgName:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/entry/CommonContactEntry;->orgName:Ljava/lang/String;

    .line 126
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->orgTitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/entry/CommonContactEntry;->orgTitle:Ljava/lang/String;

    .line 127
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->modifyTime:J

    iput-wide v2, v0, Lcom/alibaba/android/user/entry/CommonContactEntry;->modifyTime:J

    .line 128
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->refreshTime:J

    iput-wide v2, v0, Lcom/alibaba/android/user/entry/CommonContactEntry;->refreshTime:J

    .line 129
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->orgEmail:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/entry/CommonContactEntry;->orgEmail:Ljava/lang/String;

    .line 130
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->isActive:Z

    iput-boolean v1, v0, Lcom/alibaba/android/user/entry/CommonContactEntry;->isActive:Z

    .line 131
    return-object v0
.end method
