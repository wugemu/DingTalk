.class public Lcom/alibaba/android/user/entry/LocalContactEntry;
.super Lcom/alibaba/bee/impl/table/BaseTableEntry;
.source "LocalContactEntry.java"


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
    name = "tb_local_contact"
.end annotation


# static fields
.field public static final NAME_CID:Ljava/lang/String; = "cid"

.field public static final NAME_COMPANY:Ljava/lang/String; = "company"

.field public static final NAME_ISACTIVE:Ljava/lang/String; = "isactive"

.field public static final NAME_IS_UPLOAD:Ljava/lang/String; = "isupload"

.field public static final NAME_JOB_TITLE:Ljava/lang/String; = "title"

.field public static final NAME_MODIFYTIME:Ljava/lang/String; = "modifyTime"

.field public static final NAME_NAME:Ljava/lang/String; = "name"

.field public static final NAME_PHONECODE:Ljava/lang/String; = "phonecode"

.field public static final NAME_PHONENUMBER:Ljava/lang/String; = "phonenumber"

.field public static final NAME_PHONE_UNITE:Ljava/lang/String; = "phoneunite"

.field public static final NAME_PINYIN:Ljava/lang/String; = "pinyin"

.field public static final NAME_RELATION:Ljava/lang/String; = "relation"

.field public static final NAME_TAG:Ljava/lang/String; = "tag"

.field public static final NAME_UID:Ljava/lang/String; = "uid"

.field public static final TABLE_NAME:Ljava/lang/String; = "tb_local_contact"


# instance fields
.field public cid:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "cid"
        nullable = false
        sort = 0x1
        uniqueIndexName = "idx_tb_local_contact_cid:1"
    .end annotation
.end field

.field public company:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "company"
        nullable = true
        sort = 0xd
    .end annotation
.end field

.field public isActive:Z
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "isactive"
        sort = 0xc
    .end annotation
.end field

.field public isUpload:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = "N"
        name = "isupload"
        sort = 0x9
    .end annotation
.end field

.field public jobTitle:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "title"
        nullable = true
        sort = 0xe
    .end annotation
.end field

.field public modifyTime:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "modifyTime"
        nullable = false
        sort = 0x8
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "name"
        sort = 0x3
    .end annotation
.end field

.field public phoneCode:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "phonecode"
        sort = 0x6
    .end annotation
.end field

.field public phoneNumber:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "phonenumber"
        sort = 0x5
    .end annotation
.end field

.field public pinyin:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "pinyin"
        sort = 0x4
    .end annotation
.end field

.field public relation:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "relation"
        sort = 0x7
    .end annotation
.end field

.field public tag:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "tag"
        sort = 0xa
    .end annotation
.end field

.field public uid:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "uid"
        sort = 0x2
    .end annotation
.end field

.field public uniteNumber:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "phoneunite"
        sort = 0xb
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/alibaba/bee/impl/table/BaseTableEntry;-><init>()V

    return-void
.end method

.method public static fromDBEntry(Lcom/alibaba/android/user/entry/LocalContactEntry;)Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    .locals 4
    .param p0, "entry"    # Lcom/alibaba/android/user/entry/LocalContactEntry;

    .prologue
    .line 97
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;-><init>()V

    .line 98
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    iget-object v1, p0, Lcom/alibaba/android/user/entry/LocalContactEntry;->cid:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->cid:Ljava/lang/String;

    .line 99
    iget-wide v2, p0, Lcom/alibaba/android/user/entry/LocalContactEntry;->uid:J

    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    .line 100
    iget-object v1, p0, Lcom/alibaba/android/user/entry/LocalContactEntry;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->name:Ljava/lang/String;

    .line 101
    iget-object v1, p0, Lcom/alibaba/android/user/entry/LocalContactEntry;->pinyin:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->pinyin:Ljava/lang/String;

    .line 102
    iget-object v1, p0, Lcom/alibaba/android/user/entry/LocalContactEntry;->phoneCode:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->phoneCode:Ljava/lang/String;

    .line 103
    iget-object v1, p0, Lcom/alibaba/android/user/entry/LocalContactEntry;->phoneNumber:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->phoneNumber:Ljava/lang/String;

    .line 104
    iget-object v1, p0, Lcom/alibaba/android/user/entry/LocalContactEntry;->relation:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->relation:Ljava/lang/String;

    .line 105
    iget-object v1, p0, Lcom/alibaba/android/user/entry/LocalContactEntry;->isUpload:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->isUpload:Ljava/lang/String;

    .line 106
    iget v1, p0, Lcom/alibaba/android/user/entry/LocalContactEntry;->tag:I

    iput v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->tag:I

    .line 107
    iget-object v1, p0, Lcom/alibaba/android/user/entry/LocalContactEntry;->uniteNumber:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->unitePhone:Ljava/lang/String;

    .line 108
    iget-boolean v1, p0, Lcom/alibaba/android/user/entry/LocalContactEntry;->isActive:Z

    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->isActive:Z

    .line 109
    iget-object v1, p0, Lcom/alibaba/android/user/entry/LocalContactEntry;->company:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->company:Ljava/lang/String;

    .line 110
    iget-object v1, p0, Lcom/alibaba/android/user/entry/LocalContactEntry;->jobTitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->jobTitle:Ljava/lang/String;

    .line 111
    return-object v0
.end method

.method public static fromMap(Ljava/util/Map;)Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;-><init>()V

    .line 115
    .local v2, "object":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    if-eqz p0, :cond_2

    .line 117
    :try_start_0
    const-string/jumbo v4, "cid"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->cid:Ljava/lang/String;

    .line 118
    const-string/jumbo v4, "uid"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 119
    const-string/jumbo v4, "uid"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    .line 121
    :cond_0
    const-string/jumbo v4, "name"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->name:Ljava/lang/String;

    .line 122
    const-string/jumbo v4, "pinyin"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->pinyin:Ljava/lang/String;

    .line 123
    const-string/jumbo v4, "phonecode"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->phoneCode:Ljava/lang/String;

    .line 124
    const-string/jumbo v4, "phonenumber"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->phoneNumber:Ljava/lang/String;

    .line 125
    const-string/jumbo v4, "relation"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->relation:Ljava/lang/String;

    .line 126
    const-string/jumbo v4, "isupload"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->isUpload:Ljava/lang/String;

    .line 127
    const-string/jumbo v4, "phoneunite"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->unitePhone:Ljava/lang/String;

    .line 128
    const-string/jumbo v4, "company"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->company:Ljava/lang/String;

    .line 129
    const-string/jumbo v4, "title"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->jobTitle:Ljava/lang/String;

    .line 130
    const-string/jumbo v4, "tag"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 131
    .local v3, "tagStr":Ljava/lang/String;
    invoke-static {v3}, Lcoc;->d(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 132
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->tag:I

    .line 134
    :cond_1
    const-string/jumbo v4, "isactive"

    invoke-interface {p0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 135
    const-string/jumbo v4, "isactive"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->isActive:Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 143
    .end local v3    # "tagStr":Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v2

    .line 137
    :catch_0
    move-exception v1

    .line 138
    .local v1, "npe":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 139
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 140
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method public static toDBEntry(Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;)Lcom/alibaba/android/user/entry/LocalContactEntry;
    .locals 4
    .param p0, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    .prologue
    .line 146
    new-instance v0, Lcom/alibaba/android/user/entry/LocalContactEntry;

    invoke-direct {v0}, Lcom/alibaba/android/user/entry/LocalContactEntry;-><init>()V

    .line 147
    .local v0, "entry":Lcom/alibaba/android/user/entry/LocalContactEntry;
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->cid:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/entry/LocalContactEntry;->cid:Ljava/lang/String;

    .line 148
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    iput-wide v2, v0, Lcom/alibaba/android/user/entry/LocalContactEntry;->uid:J

    .line 149
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/entry/LocalContactEntry;->name:Ljava/lang/String;

    .line 150
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->pinyin:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/entry/LocalContactEntry;->pinyin:Ljava/lang/String;

    .line 151
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->phoneCode:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/entry/LocalContactEntry;->phoneCode:Ljava/lang/String;

    .line 152
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->phoneNumber:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/entry/LocalContactEntry;->phoneNumber:Ljava/lang/String;

    .line 153
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->relation:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/entry/LocalContactEntry;->relation:Ljava/lang/String;

    .line 154
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->isUpload:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/entry/LocalContactEntry;->isUpload:Ljava/lang/String;

    .line 155
    iget v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->tag:I

    iput v1, v0, Lcom/alibaba/android/user/entry/LocalContactEntry;->tag:I

    .line 156
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->unitePhone:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/entry/LocalContactEntry;->uniteNumber:Ljava/lang/String;

    .line 157
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->isActive:Z

    iput-boolean v1, v0, Lcom/alibaba/android/user/entry/LocalContactEntry;->isActive:Z

    .line 158
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->company:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/entry/LocalContactEntry;->company:Ljava/lang/String;

    .line 159
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->jobTitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/entry/LocalContactEntry;->jobTitle:Ljava/lang/String;

    .line 160
    return-object v0
.end method


# virtual methods
.method public reset()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lcom/alibaba/android/user/entry/LocalContactEntry;->cid:Ljava/lang/String;

    .line 81
    iput-wide v2, p0, Lcom/alibaba/android/user/entry/LocalContactEntry;->uid:J

    .line 82
    iput-object v0, p0, Lcom/alibaba/android/user/entry/LocalContactEntry;->name:Ljava/lang/String;

    .line 83
    iput-object v0, p0, Lcom/alibaba/android/user/entry/LocalContactEntry;->pinyin:Ljava/lang/String;

    .line 84
    iput-object v0, p0, Lcom/alibaba/android/user/entry/LocalContactEntry;->phoneNumber:Ljava/lang/String;

    .line 85
    iput-object v0, p0, Lcom/alibaba/android/user/entry/LocalContactEntry;->phoneCode:Ljava/lang/String;

    .line 86
    iput-object v0, p0, Lcom/alibaba/android/user/entry/LocalContactEntry;->relation:Ljava/lang/String;

    .line 87
    iput-wide v2, p0, Lcom/alibaba/android/user/entry/LocalContactEntry;->modifyTime:J

    .line 88
    iput-object v0, p0, Lcom/alibaba/android/user/entry/LocalContactEntry;->isUpload:Ljava/lang/String;

    .line 89
    iput v1, p0, Lcom/alibaba/android/user/entry/LocalContactEntry;->tag:I

    .line 90
    iput-object v0, p0, Lcom/alibaba/android/user/entry/LocalContactEntry;->uniteNumber:Ljava/lang/String;

    .line 91
    iput-boolean v1, p0, Lcom/alibaba/android/user/entry/LocalContactEntry;->isActive:Z

    .line 92
    iput-object v0, p0, Lcom/alibaba/android/user/entry/LocalContactEntry;->company:Ljava/lang/String;

    .line 93
    iput-object v0, p0, Lcom/alibaba/android/user/entry/LocalContactEntry;->jobTitle:Ljava/lang/String;

    .line 94
    return-void
.end method
