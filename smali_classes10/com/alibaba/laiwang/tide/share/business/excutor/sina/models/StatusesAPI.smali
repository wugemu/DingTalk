.class public Lcom/alibaba/laiwang/tide/share/business/excutor/sina/models/StatusesAPI;
.super Lcom/alibaba/laiwang/tide/share/business/excutor/sina/models/AbsOpenAPI;
.source "StatusesAPI.java"


# static fields
.field private static final API_BASE_URL:Ljava/lang/String; = "https://api.weibo.com/2/statuses"

.field public static final AUTHOR_FILTER_ALL:I = 0x0

.field public static final AUTHOR_FILTER_ATTENTIONS:I = 0x1

.field public static final AUTHOR_FILTER_STRANGER:I = 0x2

.field public static final FEATURE_ALL:I = 0x0

.field public static final FEATURE_MUSICE:I = 0x4

.field public static final FEATURE_ORIGINAL:I = 0x1

.field public static final FEATURE_PICTURE:I = 0x2

.field public static final FEATURE_VIDEO:I = 0x3

.field private static final READ_API_FRIENDS_TIMELINE:I = 0x0

.field private static final READ_API_MENTIONS:I = 0x1

.field public static final SRC_FILTER_ALL:I = 0x0

.field public static final SRC_FILTER_WEIBO:I = 0x1

.field public static final SRC_FILTER_WEIQUN:I = 0x2

.field public static final TYPE_FILTER_ALL:I = 0x0

.field public static final TYPE_FILTER_ORIGAL:I = 0x1

.field private static final WRITE_API_REPOST:I = 0x3

.field private static final WRITE_API_UPDATE:I = 0x2

.field private static final WRITE_API_UPLOAD:I = 0x4

.field private static final WRITE_API_UPLOAD_URL_TEXT:I = 0x5

.field private static final sAPIList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 59
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 61
    sput-object v0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/models/StatusesAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const-string/jumbo v2, "https://api.weibo.com/2/statuses/friends_timeline.json"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 62
    sget-object v0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/models/StatusesAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const-string/jumbo v2, "https://api.weibo.com/2/statuses/mentions.json"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 63
    sget-object v0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/models/StatusesAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v1, 0x3

    const-string/jumbo v2, "https://api.weibo.com/2/statuses/repost.json"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 64
    sget-object v0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/models/StatusesAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-string/jumbo v2, "https://api.weibo.com/2/statuses/update.json"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 65
    sget-object v0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/models/StatusesAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v1, 0x4

    const-string/jumbo v2, "https://api.weibo.com/2/statuses/upload.json"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 66
    sget-object v0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/models/StatusesAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v1, 0x5

    const-string/jumbo v2, "https://api.weibo.com/2/statuses/upload_url_text.json"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljgy;)V
    .locals 0
    .param p1, "accessToken"    # Ljgy;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/models/AbsOpenAPI;-><init>(Ljgy;)V

    .line 76
    return-void
.end method

.method private buildMentionsParams(JJIIIIIZ)Ljhf;
    .locals 3
    .param p1, "since_id"    # J
    .param p3, "max_id"    # J
    .param p5, "count"    # I
    .param p6, "page"    # I
    .param p7, "authorType"    # I
    .param p8, "sourceType"    # I
    .param p9, "filterType"    # I
    .param p10, "trim_user"    # Z

    .prologue
    .line 258
    new-instance v0, Ljhf;

    invoke-direct {v0}, Ljhf;-><init>()V

    .line 259
    .local v0, "params":Ljhf;
    const-string/jumbo v1, "since_id"

    invoke-virtual {v0, v1, p1, p2}, Ljhf;->a(Ljava/lang/String;J)V

    .line 260
    const-string/jumbo v1, "max_id"

    invoke-virtual {v0, v1, p3, p4}, Ljhf;->a(Ljava/lang/String;J)V

    .line 261
    const-string/jumbo v1, "count"

    invoke-virtual {v0, v1, p5}, Ljhf;->a(Ljava/lang/String;I)V

    .line 262
    const-string/jumbo v1, "page"

    invoke-virtual {v0, v1, p6}, Ljhf;->a(Ljava/lang/String;I)V

    .line 263
    const-string/jumbo v1, "filter_by_author"

    invoke-virtual {v0, v1, p7}, Ljhf;->a(Ljava/lang/String;I)V

    .line 264
    const-string/jumbo v1, "filter_by_source"

    invoke-virtual {v0, v1, p8}, Ljhf;->a(Ljava/lang/String;I)V

    .line 265
    const-string/jumbo v1, "filter_by_type"

    invoke-virtual {v0, v1, p9}, Ljhf;->a(Ljava/lang/String;I)V

    .line 266
    const-string/jumbo v2, "trim_user"

    if-eqz p10, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Ljhf;->a(Ljava/lang/String;I)V

    .line 268
    return-object v0

    .line 266
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private buildTimeLineParamsBase(JJIIZZI)Ljhf;
    .locals 5
    .param p1, "since_id"    # J
    .param p3, "max_id"    # J
    .param p5, "count"    # I
    .param p6, "page"    # I
    .param p7, "base_app"    # Z
    .param p8, "trim_user"    # Z
    .param p9, "featureType"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 232
    new-instance v0, Ljhf;

    invoke-direct {v0}, Ljhf;-><init>()V

    .line 233
    .local v0, "params":Ljhf;
    const-string/jumbo v1, "since_id"

    invoke-virtual {v0, v1, p1, p2}, Ljhf;->a(Ljava/lang/String;J)V

    .line 234
    const-string/jumbo v1, "max_id"

    invoke-virtual {v0, v1, p3, p4}, Ljhf;->a(Ljava/lang/String;J)V

    .line 235
    const-string/jumbo v1, "count"

    invoke-virtual {v0, v1, p5}, Ljhf;->a(Ljava/lang/String;I)V

    .line 236
    const-string/jumbo v1, "page"

    invoke-virtual {v0, v1, p6}, Ljhf;->a(Ljava/lang/String;I)V

    .line 237
    const-string/jumbo v4, "base_app"

    if-eqz p7, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v4, v1}, Ljhf;->a(Ljava/lang/String;I)V

    .line 238
    const-string/jumbo v1, "trim_user"

    if-eqz p8, :cond_1

    :goto_1
    invoke-virtual {v0, v1, v2}, Ljhf;->a(Ljava/lang/String;I)V

    .line 239
    const-string/jumbo v1, "feature"

    invoke-virtual {v0, v1, p9}, Ljhf;->a(Ljava/lang/String;I)V

    .line 240
    return-object v0

    :cond_0
    move v1, v3

    .line 237
    goto :goto_0

    :cond_1
    move v2, v3

    .line 238
    goto :goto_1
.end method

.method private buildUpdateParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljhf;
    .locals 2
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "lat"    # Ljava/lang/String;
    .param p3, "lon"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 245
    new-instance v0, Ljhf;

    invoke-direct {v0}, Ljhf;-><init>()V

    .line 246
    .local v0, "params":Ljhf;
    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1, p1}, Ljhf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 248
    const-string/jumbo v1, "long"

    invoke-virtual {v0, v1, p3}, Ljhf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 251
    const-string/jumbo v1, "lat"

    invoke-virtual {v0, v1, p2}, Ljhf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :cond_1
    return-object v0
.end method


# virtual methods
.method public friendsTimeline(JJIIZIZLjhe;)V
    .locals 13
    .param p1, "since_id"    # J
    .param p3, "max_id"    # J
    .param p5, "count"    # I
    .param p6, "page"    # I
    .param p7, "base_app"    # Z
    .param p8, "featureType"    # I
    .param p9, "trim_user"    # Z
    .param p10, "listener"    # Ljhe;

    .prologue
    .line 97
    move-object v3, p0

    move-wide v4, p1

    move-wide/from16 v6, p3

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p9

    move/from16 v12, p8

    .line 98
    invoke-direct/range {v3 .. v12}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/models/StatusesAPI;->buildTimeLineParamsBase(JJIIZZI)Ljhf;

    move-result-object v2

    .line 99
    .local v2, "params":Ljhf;
    sget-object v3, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/models/StatusesAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "GET"

    move-object/from16 v0, p10

    invoke-virtual {p0, v3, v2, v4, v0}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/models/StatusesAPI;->requestAsync(Ljava/lang/String;Ljhf;Ljava/lang/String;Ljhe;)V

    .line 100
    return-void
.end method

.method public friendsTimelineSync(JJIIZIZ)Ljava/lang/String;
    .locals 11
    .param p1, "since_id"    # J
    .param p3, "max_id"    # J
    .param p5, "count"    # I
    .param p6, "page"    # I
    .param p7, "base_app"    # Z
    .param p8, "featureType"    # I
    .param p9, "trim_user"    # Z

    .prologue
    .line 182
    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p9

    move/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/models/StatusesAPI;->buildTimeLineParamsBase(JJIIZZI)Ljhf;

    move-result-object v0

    .line 184
    .local v0, "params":Ljhf;
    sget-object v1, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/models/StatusesAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "GET"

    invoke-virtual {p0, v1, v0, v2}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/models/StatusesAPI;->requestSync(Ljava/lang/String;Ljhf;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public mentions(JJIIIIIZLjhe;)V
    .locals 3
    .param p1, "since_id"    # J
    .param p3, "max_id"    # J
    .param p5, "count"    # I
    .param p6, "page"    # I
    .param p7, "authorType"    # I
    .param p8, "sourceType"    # I
    .param p9, "filterType"    # I
    .param p10, "trim_user"    # Z
    .param p11, "listener"    # Ljhe;

    .prologue
    .line 125
    invoke-direct/range {p0 .. p10}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/models/StatusesAPI;->buildMentionsParams(JJIIIIIZ)Ljhf;

    move-result-object v0

    .line 126
    .local v0, "params":Ljhf;
    sget-object v1, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/models/StatusesAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p11}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/models/StatusesAPI;->requestAsync(Ljava/lang/String;Ljhf;Ljava/lang/String;Ljhe;)V

    .line 127
    return-void
.end method

.method public mentionsSync(JJIIIIIZ)Ljava/lang/String;
    .locals 3
    .param p1, "since_id"    # J
    .param p3, "max_id"    # J
    .param p5, "count"    # I
    .param p6, "page"    # I
    .param p7, "authorType"    # I
    .param p8, "sourceType"    # I
    .param p9, "filterType"    # I
    .param p10, "trim_user"    # Z

    .prologue
    .line 198
    invoke-direct/range {p0 .. p10}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/models/StatusesAPI;->buildMentionsParams(JJIIIIIZ)Ljhf;

    move-result-object v0

    .line 199
    .local v0, "params":Ljhf;
    sget-object v1, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/models/StatusesAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "GET"

    invoke-virtual {p0, v1, v0, v2}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/models/StatusesAPI;->requestSync(Ljava/lang/String;Ljhf;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljhe;)V
    .locals 3
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "lat"    # Ljava/lang/String;
    .param p3, "lon"    # Ljava/lang/String;
    .param p4, "listener"    # Ljhe;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 138
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/models/StatusesAPI;->buildUpdateParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljhf;

    move-result-object v0

    .line 139
    .local v0, "params":Ljhf;
    sget-object v1, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/models/StatusesAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "POST"

    invoke-virtual {p0, v1, v0, v2, p4}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/models/StatusesAPI;->requestAsync(Ljava/lang/String;Ljhf;Ljava/lang/String;Ljhe;)V

    .line 140
    return-void
.end method

.method public updateSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "lat"    # Ljava/lang/String;
    .param p3, "lon"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 206
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/models/StatusesAPI;->buildUpdateParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljhf;

    move-result-object v0

    .line 207
    .local v0, "params":Ljhf;
    sget-object v1, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/models/StatusesAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "POST"

    invoke-virtual {p0, v1, v0, v2}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/models/StatusesAPI;->requestSync(Ljava/lang/String;Ljhf;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public upload(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljhe;)V
    .locals 3
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "lat"    # Ljava/lang/String;
    .param p4, "lon"    # Ljava/lang/String;
    .param p5, "listener"    # Ljhe;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 152
    invoke-direct {p0, p1, p3, p4}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/models/StatusesAPI;->buildUpdateParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljhf;

    move-result-object v0

    .line 153
    .local v0, "params":Ljhf;
    const-string/jumbo v1, "pic"

    invoke-virtual {v0, v1, p2}, Ljhf;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 154
    sget-object v1, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/models/StatusesAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "POST"

    invoke-virtual {p0, v1, v0, v2, p5}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/models/StatusesAPI;->requestAsync(Ljava/lang/String;Ljhf;Ljava/lang/String;Ljhe;)V

    .line 155
    return-void
.end method

.method public uploadSync(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "lat"    # Ljava/lang/String;
    .param p4, "lon"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 214
    invoke-direct {p0, p1, p3, p4}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/models/StatusesAPI;->buildUpdateParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljhf;

    move-result-object v0

    .line 215
    .local v0, "params":Ljhf;
    const-string/jumbo v1, "pic"

    invoke-virtual {v0, v1, p2}, Ljhf;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 216
    sget-object v1, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/models/StatusesAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "POST"

    invoke-virtual {p0, v1, v0, v2}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/models/StatusesAPI;->requestSync(Ljava/lang/String;Ljhf;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public uploadUrlText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljhe;)V
    .locals 3
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "imageUrl"    # Ljava/lang/String;
    .param p3, "pic_id"    # Ljava/lang/String;
    .param p4, "lat"    # Ljava/lang/String;
    .param p5, "lon"    # Ljava/lang/String;
    .param p6, "listener"    # Ljhe;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 171
    invoke-direct {p0, p1, p4, p5}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/models/StatusesAPI;->buildUpdateParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljhf;

    move-result-object v0

    .line 172
    .local v0, "params":Ljhf;
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p2}, Ljhf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string/jumbo v1, "pic_id"

    invoke-virtual {v0, v1, p3}, Ljhf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    sget-object v1, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/models/StatusesAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "POST"

    invoke-virtual {p0, v1, v0, v2, p6}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/models/StatusesAPI;->requestAsync(Ljava/lang/String;Ljhf;Ljava/lang/String;Ljhe;)V

    .line 175
    return-void
.end method

.method public uploadUrlTextSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "imageUrl"    # Ljava/lang/String;
    .param p3, "pic_id"    # Ljava/lang/String;
    .param p4, "lat"    # Ljava/lang/String;
    .param p5, "lon"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 223
    invoke-direct {p0, p1, p4, p5}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/models/StatusesAPI;->buildUpdateParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljhf;

    move-result-object v0

    .line 224
    .local v0, "params":Ljhf;
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p2}, Ljhf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string/jumbo v1, "pic_id"

    invoke-virtual {v0, v1, p3}, Ljhf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    sget-object v1, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/models/StatusesAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "POST"

    invoke-virtual {p0, v1, v0, v2}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/models/StatusesAPI;->requestSync(Ljava/lang/String;Ljhf;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
