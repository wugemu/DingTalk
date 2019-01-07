.class final Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$d;
.super Ljava/lang/Object;
.source "EditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:I

.field c:I

.field d:I

.field final synthetic e:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1460
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$d;->e:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1461
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$d;->a:Ljava/lang/Object;

    .line 1463
    iput v1, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$d;->b:I

    .line 1466
    iput v1, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$d;->c:I

    .line 1469
    iput v1, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$d;->d:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;

    .prologue
    .line 1460
    invoke-direct {p0, p1}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$d;-><init>(Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1498
    iget v0, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$d;->b:I

    iget v1, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$d;->c:I

    iget v2, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$d;->d:I

    add-int/2addr v1, v2

    if-ne v0, v1, :cond_5

    .line 1500
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$d;->e:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->a(Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;Z)Z

    .line 1501
    iget v0, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$d;->d:I

    if-nez v0, :cond_6

    .line 1504
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$d;->e:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;

    .line 2242
    iget-object v0, v2, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->a:Lorg/json/JSONObject;

    const-string/jumbo v1, "editor"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 2243
    if-eqz v3, :cond_4

    .line 2247
    const-string/jumbo v0, "value"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2248
    invoke-static {v0}, Lldz;->a(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v4

    .line 2249
    const-string/jumbo v0, "img"

    invoke-virtual {v4, v0}, Lorg/jsoup/nodes/Document;->g(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v0

    .line 2250
    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lleh;

    .line 2251
    if-eqz v0, :cond_0

    .line 2255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3065
    iget-object v6, v0, Lleh;->c:Lleq;

    .line 4037
    iget-object v6, v6, Lleq;->b:Ljava/lang/String;

    .line 2255
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, "src"

    invoke-virtual {v0, v6}, Lleh;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, "android-uri"

    invoke-virtual {v0, v6}, Lleh;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2256
    const-string/jumbo v1, "android-uri"

    invoke-virtual {v0, v1}, Lleh;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2257
    invoke-static {v1}, Lhcs;->d(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2258
    iget-object v6, v2, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->d:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$e;

    .line 2259
    if-eqz v1, :cond_1

    iget-object v6, v1, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$e;->b:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2260
    const-string/jumbo v6, "src"

    iget-object v1, v1, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$e;->b:Ljava/lang/String;

    invoke-virtual {v0, v6, v1}, Lleh;->a(Ljava/lang/String;Ljava/lang/String;)Lleh;

    .line 2265
    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4065
    iget-object v6, v0, Lleh;->c:Lleq;

    .line 5037
    iget-object v6, v6, Lleq;->b:Ljava/lang/String;

    .line 2265
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, "src"

    invoke-virtual {v0, v6}, Lleh;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2263
    :cond_2
    const-string/jumbo v6, "src"

    invoke-virtual {v0, v6, v1}, Lleh;->a(Ljava/lang/String;Ljava/lang/String;)Lleh;

    goto :goto_1

    .line 2269
    :cond_3
    :try_start_0
    const-string/jumbo v0, "value"

    invoke-virtual {v4}, Lorg/jsoup/nodes/Document;->b()Lleh;

    move-result-object v1

    invoke-virtual {v1}, Lleh;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1505
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$d;->e:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->f(Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;)V

    .line 1518
    :cond_5
    :goto_3
    return-void

    .line 2270
    :catch_0
    move-exception v0

    .line 2271
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 1508
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$d;->e:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->g(Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;)V

    .line 1510
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$d;->e:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;

    iget-object v0, v0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->e:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$d$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$d$1;-><init>(Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3
.end method
