.class public Lcom/alibaba/android/search/model/DingSearchResultModel;
.super Ljava/lang/Object;
.source "DingSearchResultModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/search/model/DingSearchResultModel$a;,
        Lcom/alibaba/android/search/model/DingSearchResultModel$Type;
    }
.end annotation


# static fields
.field private static final h:Ljava/lang/String;


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:Ljava/lang/String;

.field public d:J

.field public e:Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;

.field public f:Lcom/alibaba/android/search/model/DingSearchResultModel$Type;

.field public g:I

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/alibaba/android/search/model/DingSearchResultModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/search/model/DingSearchResultModel;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;)V
    .locals 8
    .param p2, "DingSearchResultType"    # Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-boolean v5, p0, Lcom/alibaba/android/search/model/DingSearchResultModel;->k:Z

    .line 85
    iput-object p2, p0, Lcom/alibaba/android/search/model/DingSearchResultModel;->e:Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;

    .line 86
    iget-object v0, p0, Lcom/alibaba/android/search/model/DingSearchResultModel;->e:Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;

    sget-object v1, Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;->SENDER:Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;

    if-ne v0, v1, :cond_8

    .line 1176
    const-string/jumbo v0, "uid"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/search/model/DingSearchResultModel;->b:J

    .line 1177
    const-string/jumbo v0, "nick"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/search/model/DingSearchResultModel;->i:Ljava/lang/String;

    .line 1178
    const-string/jumbo v0, "alias"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/search/model/DingSearchResultModel;->j:Ljava/lang/String;

    .line 1179
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/android/search/model/DingSearchResultModel;->b:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->b(Ljava/lang/String;)I

    move-result v0

    .line 1180
    iput v0, p0, Lcom/alibaba/android/search/model/DingSearchResultModel;->g:I

    .line 1181
    if-gtz v0, :cond_1

    .line 1182
    iput-boolean v4, p0, Lcom/alibaba/android/search/model/DingSearchResultModel;->k:Z

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 1183
    :cond_1
    if-ne v0, v5, :cond_7

    .line 1184
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    iget-wide v2, p0, Lcom/alibaba/android/search/model/DingSearchResultModel;->b:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v4}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a(Ljava/util/List;II)Ljava/util/List;

    move-result-object v1

    .line 1185
    if-eqz v1, :cond_2

    .line 1186
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1187
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1188
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1189
    :cond_2
    iput-boolean v4, p0, Lcom/alibaba/android/search/model/DingSearchResultModel;->k:Z

    goto :goto_0

    .line 1191
    :cond_3
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 1192
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/search/model/DingSearchResultModel;->a:Ljava/lang/String;

    .line 1193
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v1

    .line 1194
    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->getContentType()Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;->Text:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;

    if-ne v2, v3, :cond_6

    .line 1195
    check-cast v1, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;

    .line 1196
    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;->getTextContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1197
    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;->getTextContent()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/search/model/DingSearchResultModel;->c:Ljava/lang/String;

    .line 1205
    :cond_4
    :goto_1
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->O()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/search/model/DingSearchResultModel;->d:J

    .line 1206
    sget-object v0, Lcom/alibaba/android/search/model/DingSearchResultModel$Type;->DING:Lcom/alibaba/android/search/model/DingSearchResultModel$Type;

    iput-object v0, p0, Lcom/alibaba/android/search/model/DingSearchResultModel;->f:Lcom/alibaba/android/search/model/DingSearchResultModel$Type;

    goto :goto_0

    .line 1200
    :cond_5
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lemt$g;->dt_search_result_type_attachment:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/search/model/DingSearchResultModel;->c:Ljava/lang/String;

    goto :goto_1

    .line 1202
    :cond_6
    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->getContentType()Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;->Audio:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;

    if-ne v1, v2, :cond_4

    .line 1203
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lemt$g;->dt_search_result_type_audio:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/search/model/DingSearchResultModel;->c:Ljava/lang/String;

    goto :goto_1

    .line 1209
    :cond_7
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lemt$g;->dt_search_sender_dings_count_fmt:I

    new-array v3, v5, [Ljava/lang/Object;

    .line 1210
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    .line 1209
    invoke-virtual {v1, v2, v3}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/model/DingSearchResultModel;->c:Ljava/lang/String;

    .line 1211
    iput-wide v6, p0, Lcom/alibaba/android/search/model/DingSearchResultModel;->d:J

    .line 1212
    sget-object v0, Lcom/alibaba/android/search/model/DingSearchResultModel$Type;->NUM:Lcom/alibaba/android/search/model/DingSearchResultModel$Type;

    iput-object v0, p0, Lcom/alibaba/android/search/model/DingSearchResultModel;->f:Lcom/alibaba/android/search/model/DingSearchResultModel$Type;

    goto/16 :goto_0

    .line 88
    :cond_8
    iget-object v0, p0, Lcom/alibaba/android/search/model/DingSearchResultModel;->e:Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;

    sget-object v1, Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;->BODY:Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;

    if-ne v0, v1, :cond_9

    .line 1217
    const-string/jumbo v0, "dingId"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/search/model/DingSearchResultModel;->a:Ljava/lang/String;

    .line 1218
    const-string/jumbo v0, "senderId"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2109
    invoke-static {v0, v6, v7}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1218
    iput-wide v0, p0, Lcom/alibaba/android/search/model/DingSearchResultModel;->b:J

    .line 1219
    const-string/jumbo v0, "nick"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/search/model/DingSearchResultModel;->i:Ljava/lang/String;

    .line 1220
    const-string/jumbo v0, "alias"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/search/model/DingSearchResultModel;->j:Ljava/lang/String;

    .line 1221
    const-string/jumbo v0, "content"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/search/model/DingSearchResultModel;->c:Ljava/lang/String;

    .line 1222
    const-string/jumbo v0, "dingCreatedAt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3109
    invoke-static {v0, v6, v7}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1222
    iput-wide v0, p0, Lcom/alibaba/android/search/model/DingSearchResultModel;->d:J

    .line 1223
    sget-object v0, Lcom/alibaba/android/search/model/DingSearchResultModel$Type;->DING:Lcom/alibaba/android/search/model/DingSearchResultModel$Type;

    iput-object v0, p0, Lcom/alibaba/android/search/model/DingSearchResultModel;->f:Lcom/alibaba/android/search/model/DingSearchResultModel$Type;

    goto/16 :goto_0

    .line 90
    :cond_9
    iget-object v0, p0, Lcom/alibaba/android/search/model/DingSearchResultModel;->e:Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;

    sget-object v1, Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;->ATTACHMENT:Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;

    if-ne v0, v1, :cond_0

    .line 3227
    const-string/jumbo v0, "dingId"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/search/model/DingSearchResultModel;->a:Ljava/lang/String;

    .line 3228
    const-string/jumbo v0, "senderId"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/search/model/DingSearchResultModel;->b:J

    .line 3229
    const-string/jumbo v0, "nick"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/search/model/DingSearchResultModel;->i:Ljava/lang/String;

    .line 3230
    const-string/jumbo v0, "alias"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/search/model/DingSearchResultModel;->j:Ljava/lang/String;

    .line 3231
    const-string/jumbo v0, "dingAttachments"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/search/model/DingSearchResultModel;->c:Ljava/lang/String;

    .line 3232
    sget-object v0, Lcom/alibaba/android/search/model/DingSearchResultModel$Type;->DING:Lcom/alibaba/android/search/model/DingSearchResultModel$Type;

    iput-object v0, p0, Lcom/alibaba/android/search/model/DingSearchResultModel;->f:Lcom/alibaba/android/search/model/DingSearchResultModel$Type;

    goto/16 :goto_0
.end method

.method public static a(Ljava/util/List;Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;ILcom/alibaba/wukong/Callback;)V
    .locals 2
    .param p1, "dingSearchResultType"    # Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;
    .param p2, "maxSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;",
            "I",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/DingSearchResultModel;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "data":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .local p3, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/android/search/model/DingSearchResultModel;>;>;"
    sget-object v0, Lcom/alibaba/android/search/model/DingSearchResultModel;->h:Ljava/lang/String;

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/search/model/DingSearchResultModel$1;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/alibaba/android/search/model/DingSearchResultModel$1;-><init>(Ljava/util/List;Lcom/alibaba/wukong/Callback;Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;I)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 82
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/search/model/DingSearchResultModel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/model/DingSearchResultModel;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/alibaba/android/search/model/DingSearchResultModel;->k:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/search/model/DingSearchResultModel;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/search/model/DingSearchResultModel;

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/alibaba/android/search/model/DingSearchResultModel;->d:J

    return-wide v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/alibaba/android/search/model/DingSearchResultModel;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/alibaba/android/search/model/DingSearchResultModel;->j:Ljava/lang/String;

    .line 155
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/model/DingSearchResultModel;->i:Ljava/lang/String;

    goto :goto_0
.end method
