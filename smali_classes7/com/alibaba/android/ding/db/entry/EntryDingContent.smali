.class public Lcom/alibaba/android/ding/db/entry/EntryDingContent;
.super Lcom/alibaba/bee/impl/table/BaseTableEntry;
.source "EntryDingContent.java"


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
    name = "tbdingcontent"
.end annotation


# static fields
.field public static final ALL_COLUMNS:[Ljava/lang/String;

.field private static final KEY_CID:Ljava/lang/String; = "cid"

.field public static final NAME_AUTH_CODE:Ljava/lang/String; = "authCode"

.field public static final NAME_AUTH_MEDIA_ID:Ljava/lang/String; = "authMediaId"

.field public static final NAME_CONTENT_TYPE:Ljava/lang/String; = "contentType"

.field public static final NAME_EXTENSION_ONE:Ljava/lang/String; = "extension_1"

.field public static final NAME_EXTENSION_TWO:Ljava/lang/String; = "extension_2"

.field public static final NAME_MESSAGETYPE:Ljava/lang/String; = "msgType"

.field public static final NAME_MESSAGE_CONTENT:Ljava/lang/String; = "content"

.field public static final NAME_MSG_CREATED_AT:Ljava/lang/String; = "msgCreatedAt"

.field public static final NAME_REFERENCE_CID:Ljava/lang/String; = "referenceCId"

.field public static final NAME_REFERENCE_ID:Ljava/lang/String; = "referenceId"

.field public static final TABLE_NAME:Ljava/lang/String; = "tbdingcontent"


# instance fields
.field public authCode:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "authCode"
        sort = 0xb
    .end annotation
.end field

.field public authMediaId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "authMediaId"
        sort = 0xa
    .end annotation
.end field

.field public content:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "content"
        sort = 0x7
    .end annotation
.end field

.field public contentType:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "contentType"
        nullable = false
        sort = 0x6
    .end annotation
.end field

.field public dingId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "dingId"
        nullable = false
        sort = 0x1
        uniqueIndexName = "idx_tbdinglist_dingId:1"
    .end annotation
.end field

.field public extension_1:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "extension_1"
        sort = 0x8
    .end annotation
.end field

.field public extension_2:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "extension_2"
        sort = 0x9
    .end annotation
.end field

.field public msgCreatedAt:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "msgCreatedAt"
        nullable = false
        sort = 0x5
    .end annotation
.end field

.field public msgType:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "msgType"
        nullable = false
        sort = 0x2
    .end annotation
.end field

.field public referenceCId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "referenceCId"
        sort = 0x4
    .end annotation
.end field

.field public referenceId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "referenceId"
        sort = 0x3
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "msgType"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "referenceId"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "referenceCId"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "msgCreatedAt"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "contentType"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "content"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "extension_1"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "extension_2"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "authMediaId"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "authCode"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/ding/db/entry/EntryDingContent;->ALL_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/alibaba/bee/impl/table/BaseTableEntry;-><init>()V

    return-void
.end method

.method public static fromEntryDingContent(Lcom/alibaba/android/ding/db/entry/EntryDingContent;Ljava/util/Map;)Lcom/alibaba/android/ding/base/objects/ObjectDingContent;
    .locals 3
    .param p0, "content"    # Lcom/alibaba/android/ding/db/entry/EntryDingContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/ding/db/entry/EntryDingContent;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/android/ding/base/objects/ObjectDingContent;"
        }
    .end annotation

    .prologue
    .line 176
    .local p1, "dingExtension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 177
    .local v0, "ret":Lcom/alibaba/android/ding/base/objects/ObjectDingContent;
    if-eqz p0, :cond_0

    .line 178
    sget-object v1, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;->Audio:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;->getValue()I

    move-result v1

    iget v2, p0, Lcom/alibaba/android/ding/db/entry/EntryDingContent;->contentType:I

    if-ne v1, v2, :cond_1

    .line 179
    invoke-virtual {p0, p1}, Lcom/alibaba/android/ding/db/entry/EntryDingContent;->toContentAudio(Ljava/util/Map;)Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;

    move-result-object v0

    .line 184
    :cond_0
    :goto_0
    return-object v0

    .line 180
    :cond_1
    sget-object v1, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;->Text:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;->getValue()I

    move-result v1

    iget v2, p0, Lcom/alibaba/android/ding/db/entry/EntryDingContent;->contentType:I

    if-ne v1, v2, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/alibaba/android/ding/db/entry/EntryDingContent;->toContentText()Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;

    move-result-object v0

    goto :goto_0
.end method

.method private generateCIDOfJSON(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "cid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 188
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "{"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "cid"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ":\""

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "\"}"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseCIDFromJSON(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "json"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 195
    const/4 v0, 0x0

    .line 196
    .local v0, "cid":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 198
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 199
    .local v2, "o":Lorg/json/JSONObject;
    const-string/jumbo v3, "cid"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 204
    .end local v2    # "o":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v0

    .line 200
    :catch_0
    move-exception v1

    .line 201
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v3, "[EntryDingContent]parseCidFromJson failed"

    invoke-static {v3, v1}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private toContent(Lcom/alibaba/android/ding/base/objects/ObjectDingContent;Ljava/util/Map;)V
    .locals 4
    .param p1, "objectDingContent"    # Lcom/alibaba/android/ding/base/objects/ObjectDingContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/ding/base/objects/ObjectDingContent;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 148
    .local p2, "dingExtension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget v1, p0, Lcom/alibaba/android/ding/db/entry/EntryDingContent;->msgType:I

    invoke-static {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;->valueOf(I)Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;

    move-result-object v1

    iput-object v1, p1, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mType:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;

    .line 149
    iget-object v1, p0, Lcom/alibaba/android/ding/db/entry/EntryDingContent;->referenceId:Ljava/lang/String;

    iput-object v1, p1, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mReference:Ljava/lang/String;

    .line 150
    iget-wide v2, p0, Lcom/alibaba/android/ding/db/entry/EntryDingContent;->msgCreatedAt:J

    iput-wide v2, p1, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mMsgCreatedAt:J

    .line 151
    iget v1, p0, Lcom/alibaba/android/ding/db/entry/EntryDingContent;->contentType:I

    invoke-static {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;->valueOf(I)Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;

    move-result-object v1

    iput-object v1, p1, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mTypeContent:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;

    .line 152
    iget-object v1, p0, Lcom/alibaba/android/ding/db/entry/EntryDingContent;->content:Ljava/lang/String;

    iput-object v1, p1, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mMediaId:Ljava/lang/String;

    .line 153
    iget-object v1, p0, Lcom/alibaba/android/ding/db/entry/EntryDingContent;->authMediaId:Ljava/lang/String;

    iput-object v1, p1, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mAuthMediaId:Ljava/lang/String;

    .line 154
    iget-object v1, p0, Lcom/alibaba/android/ding/db/entry/EntryDingContent;->authCode:Ljava/lang/String;

    iput-object v1, p1, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mAuthCode:Ljava/lang/String;

    .line 155
    iget-object v1, p0, Lcom/alibaba/android/ding/db/entry/EntryDingContent;->referenceCId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/alibaba/android/ding/db/entry/EntryDingContent;->parseCIDFromJSON(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mReferenceCid:Ljava/lang/String;

    .line 156
    iget-object v1, p1, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mAuthMediaId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 157
    iget-object v1, p1, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mMediaId:Ljava/lang/String;

    invoke-static {v1, p2}, Layx;->b(Ljava/lang/String;Ljava/util/Map;)Layw;

    move-result-object v0

    .line 158
    .local v0, "authInfo":Layw;
    if-eqz v0, :cond_0

    .line 159
    iget-object v1, v0, Layw;->b:Ljava/lang/String;

    iput-object v1, p1, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mAuthMediaId:Ljava/lang/String;

    .line 160
    iget-object v1, p1, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mAuthCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, v0, Layw;->c:Ljava/lang/String;

    iput-object v1, p1, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mAuthCode:Ljava/lang/String;

    .line 165
    .end local v0    # "authInfo":Layw;
    :cond_0
    return-void
.end method


# virtual methods
.method public fromObjectDingContent(Lcom/alibaba/android/ding/base/objects/ObjectDingContent;)V
    .locals 2
    .param p1, "objectDingContent"    # Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 121
    iget-object v0, p1, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mType:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;->getValue()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/ding/db/entry/EntryDingContent;->msgType:I

    .line 122
    iget-object v0, p1, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mReference:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/ding/db/entry/EntryDingContent;->referenceId:Ljava/lang/String;

    .line 123
    iget-wide v0, p1, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mMsgCreatedAt:J

    iput-wide v0, p0, Lcom/alibaba/android/ding/db/entry/EntryDingContent;->msgCreatedAt:J

    .line 124
    iget-object v0, p1, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mTypeContent:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;->getValue()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/ding/db/entry/EntryDingContent;->contentType:I

    .line 125
    iget-object v0, p1, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mMediaId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/ding/db/entry/EntryDingContent;->content:Ljava/lang/String;

    .line 126
    iget-object v0, p1, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mReferenceCid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alibaba/android/ding/db/entry/EntryDingContent;->generateCIDOfJSON(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/db/entry/EntryDingContent;->referenceCId:Ljava/lang/String;

    .line 127
    instance-of v0, p1, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 128
    check-cast v0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;->getTextContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/db/entry/EntryDingContent;->content:Ljava/lang/String;

    .line 134
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->getAuthMediaId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/db/entry/EntryDingContent;->authMediaId:Ljava/lang/String;

    .line 135
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->getAuthCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/db/entry/EntryDingContent;->authCode:Ljava/lang/String;

    .line 136
    return-void

    .line 129
    :cond_1
    instance-of v0, p1, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 130
    check-cast v0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;

    iget-wide v0, v0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;->mDuration:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/db/entry/EntryDingContent;->extension_1:Ljava/lang/String;

    move-object v0, p1

    .line 131
    check-cast v0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;

    iget-object v0, v0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;->mAudioVolumns:Ljava/util/List;

    invoke-static {v0}, Lbjp;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/db/entry/EntryDingContent;->extension_2:Ljava/lang/String;

    goto :goto_0
.end method

.method public reset()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 107
    iput-object v2, p0, Lcom/alibaba/android/ding/db/entry/EntryDingContent;->dingId:Ljava/lang/String;

    .line 108
    iput v3, p0, Lcom/alibaba/android/ding/db/entry/EntryDingContent;->msgType:I

    .line 109
    iput-object v2, p0, Lcom/alibaba/android/ding/db/entry/EntryDingContent;->referenceId:Ljava/lang/String;

    .line 110
    iput-object v2, p0, Lcom/alibaba/android/ding/db/entry/EntryDingContent;->referenceCId:Ljava/lang/String;

    .line 111
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/ding/db/entry/EntryDingContent;->msgCreatedAt:J

    .line 112
    iput v3, p0, Lcom/alibaba/android/ding/db/entry/EntryDingContent;->contentType:I

    .line 113
    iput-object v2, p0, Lcom/alibaba/android/ding/db/entry/EntryDingContent;->content:Ljava/lang/String;

    .line 114
    iput-object v2, p0, Lcom/alibaba/android/ding/db/entry/EntryDingContent;->extension_1:Ljava/lang/String;

    .line 115
    iput-object v2, p0, Lcom/alibaba/android/ding/db/entry/EntryDingContent;->extension_2:Ljava/lang/String;

    .line 116
    iput-object v2, p0, Lcom/alibaba/android/ding/db/entry/EntryDingContent;->authMediaId:Ljava/lang/String;

    .line 117
    iput-object v2, p0, Lcom/alibaba/android/ding/db/entry/EntryDingContent;->authCode:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public toContentAudio(Ljava/util/Map;)Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 168
    .local p1, "dingExtension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;

    invoke-direct {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;-><init>()V

    .line 169
    .local v0, "contentAudio":Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;
    invoke-direct {p0, v0, p1}, Lcom/alibaba/android/ding/db/entry/EntryDingContent;->toContent(Lcom/alibaba/android/ding/base/objects/ObjectDingContent;Ljava/util/Map;)V

    .line 170
    iget-object v1, p0, Lcom/alibaba/android/ding/db/entry/EntryDingContent;->extension_1:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;->mDuration:J

    .line 171
    iget-object v1, p0, Lcom/alibaba/android/ding/db/entry/EntryDingContent;->extension_2:Ljava/lang/String;

    invoke-static {v1}, Lbjp;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;->mAudioVolumns:Ljava/util/List;

    .line 172
    return-object v0
.end method

.method public toContentText()Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 139
    new-instance v0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;

    invoke-direct {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;-><init>()V

    .line 140
    .local v0, "contentText":Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/ding/db/entry/EntryDingContent;->toContent(Lcom/alibaba/android/ding/base/objects/ObjectDingContent;Ljava/util/Map;)V

    .line 141
    iget-object v1, p0, Lcom/alibaba/android/ding/db/entry/EntryDingContent;->content:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/alibaba/android/ding/db/entry/EntryDingContent;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;->setTextContent(Ljava/lang/String;)V

    .line 144
    :cond_0
    return-object v0
.end method
