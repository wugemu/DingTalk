.class public final Lenz;
.super Leny;
.source "SearchMoreMiniApp.java"


# static fields
.field private static final h:[Ljava/lang/String;

.field private static final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private f:Ljava/lang/String;

.field private g:Landroid/content/Context;

.field private i:Lcom/alibaba/android/search/SearchGroupType;

.field private k:Leny$a;

.field private l:Leny$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 199
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "blurInput"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "getKeyword"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "focusInput"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "getMyOpenId"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "searchDing"

    aput-object v2, v0, v1

    .line 209
    sput-object v0, Lenz;->h:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lenz;->j:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/android/search/SearchGroupType;Leny$a;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # Lcom/alibaba/android/search/SearchGroupType;
    .param p3, "listener"    # Leny$a;

    .prologue
    .line 42
    const-string/jumbo v2, "2018102561862136"

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3}, Leny;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    new-instance v2, Lenz$3;

    invoke-direct {v2, p0}, Lenz$3;-><init>(Lenz;)V

    iput-object v2, p0, Lenz;->l:Leny$a;

    .line 43
    iput-object p2, p0, Lenz;->i:Lcom/alibaba/android/search/SearchGroupType;

    .line 44
    iput-object p1, p0, Lenz;->g:Landroid/content/Context;

    .line 46
    iget-object v2, p0, Lenz;->l:Leny$a;

    iput-object v2, p0, Lenz;->e:Leny$a;

    .line 47
    iput-object p3, p0, Lenz;->k:Leny$a;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 50
    .local v0, "configMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string/jumbo v2, "searchEApp"

    sget-object v3, Lenz;->j:Ljava/util/List;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v2, p0, Lenz;->c:Lhlm;

    new-instance v3, Lenz$1;

    invoke-direct {v3, p0}, Lenz$1;-><init>(Lenz;)V

    invoke-interface {v2, v0, v3}, Lhlm;->a(Ljava/util/Map;Lhlk;)V

    .line 66
    const/4 v1, 0x0

    .line 67
    .local v1, "pageId":Ljava/lang/String;
    sget-object v2, Lenz$4;->a:[I

    iget-object v3, p0, Lenz;->i:Lcom/alibaba/android/search/SearchGroupType;

    invoke-virtual {v3}, Lcom/alibaba/android/search/SearchGroupType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 75
    :goto_0
    invoke-virtual {p0, v1}, Lenz;->a(Ljava/lang/String;)V

    .line 76
    return-void

    .line 69
    :pswitch_0
    const-string/jumbo v1, "pages/externalContact/index"

    .line 70
    goto :goto_0

    .line 72
    :pswitch_1
    const-string/jumbo v1, "pages/ding/index"

    goto :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lenz;)Leny$a;
    .locals 1
    .param p0, "x0"    # Lenz;

    .prologue
    .line 28
    iget-object v0, p0, Lenz;->k:Leny$a;

    return-object v0
.end method

.method static synthetic a(Lenz;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lenz;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lenz;->f:Ljava/lang/String;

    return-object v0
.end method

.method protected static a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "keyword"    # Ljava/lang/String;
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
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/BaseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    .local p0, "datas":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_2

    .line 163
    :cond_0
    const/4 v1, 0x0

    .line 176
    :cond_1
    return-object v1

    .line 166
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .local v1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1055
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v4, Leoc$a;->a:Leoc;

    .line 168
    sget-object v4, Lcom/alibaba/android/search/model/BaseModel$ModelType;->Ding:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    invoke-static {v4, v0, p1}, Leoc;->a(Lcom/alibaba/android/search/model/BaseModel$ModelType;Ljava/util/Map;Ljava/lang/String;)Lcom/alibaba/android/search/model/BaseModel;

    move-result-object v2

    .line 169
    .local v2, "dingModel":Lcom/alibaba/android/search/model/BaseModel;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/alibaba/android/search/model/BaseModel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 173
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic a(Lenz;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lhll;)V
    .locals 8
    .param p0, "x0"    # Lenz;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/alibaba/fastjson/JSONObject;
    .param p3, "x3"    # Lhll;

    .prologue
    const/4 v1, 0x0

    .line 28
    .line 1079
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1080
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    invoke-interface {p3, v0}, Lhll;->a(Lcom/alibaba/fastjson/JSONObject;)V

    .line 1086
    :cond_0
    :goto_0
    return-void

    .line 1083
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_1

    .line 1088
    iget-object v0, p0, Lenz;->l:Leny$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lenz;->l:Leny$a;

    invoke-interface {v0, p1, p2, p3}, Leny$a;->a(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lhll;)V

    goto :goto_0

    .line 1083
    :pswitch_0
    const-string/jumbo v2, "searchDing"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_1

    .line 1106
    :pswitch_1
    const-string/jumbo v0, "keyword"

    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1107
    const-string/jumbo v0, "offset"

    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1108
    const-string/jumbo v0, "size"

    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1109
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 1110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 1112
    new-instance v0, Lenz$2;

    move-object v1, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lenz$2;-><init>(Lenz;Ljava/lang/String;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Lhll;)V

    .line 1156
    invoke-static {v6, v7, v2, v0}, Lenu;->a(IILjava/lang/String;Lcca;)V

    .line 1157
    invoke-static {v6, v7, v2, v0}, Lenu;->d(IILjava/lang/String;Lcca;)V

    goto :goto_0

    .line 1083
    nop

    :pswitch_data_0
    .packed-switch -0x2a602d3a
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic b(Lenz;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lenz;

    .prologue
    .line 28
    iget-object v0, p0, Lenz;->f:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final b(Ljava/lang/String;)V
    .locals 4
    .param p1, "keyword"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 94
    iget-object v1, p0, Lenz;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 96
    .local v0, "object":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "keyword"

    if-nez p1, :cond_0

    const-string/jumbo p1, ""

    .end local p1    # "keyword":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v1, p0, Lenz;->c:Lhlm;

    const-string/jumbo v2, "searchEApp"

    const-string/jumbo v3, "callSearch"

    invoke-interface {v1, v2, v3, v0}, Lhlm;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 103
    .end local v0    # "object":Lcom/alibaba/fastjson/JSONObject;
    :goto_0
    return-void

    .line 101
    .restart local p1    # "keyword":Ljava/lang/String;
    :cond_1
    iput-object p1, p0, Lenz;->f:Ljava/lang/String;

    goto :goto_0
.end method
