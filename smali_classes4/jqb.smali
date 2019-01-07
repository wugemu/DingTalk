.class public final Ljqb;
.super Ljava/lang/Object;
.source "AppManager.java"


# static fields
.field private static f:Ljqb;


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/taobao/windmill/bundle/WMLActivity;",
            ">;>;"
        }
    .end annotation
.end field

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public e:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljqb;->a:Ljava/util/Map;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljqb;->b:Ljava/util/Map;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljqb;->c:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljqb;->d:Ljava/util/List;

    .line 39
    const/4 v0, 0x3

    iput v0, p0, Ljqb;->e:I

    .line 43
    return-void
.end method

.method public static a()Ljqb;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Ljqb;->f:Ljqb;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Ljqb;

    invoke-direct {v0}, Ljqb;-><init>()V

    sput-object v0, Ljqb;->f:Ljqb;

    .line 49
    :cond_0
    sget-object v0, Ljqb;->f:Ljqb;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Lcom/taobao/windmill/bundle/container/core/AppCodeModel;Z)I
    .locals 16
    .param p1, "proxyActivity"    # Landroid/app/Activity;
    .param p2, "appCode"    # Lcom/taobao/windmill/bundle/container/core/AppCodeModel;
    .param p3, "back"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 166
    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->appCode:Ljava/lang/String;

    .line 167
    .local v7, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Ljqb;->b:Ljava/util/Map;

    invoke-interface {v12, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_3

    .line 168
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v9, "proxyList":Ljava/util/List;, "Ljava/util/List<Landroid/app/Activity;>;"
    move-object/from16 v0, p1

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    move-object/from16 v0, p0

    iget-object v12, v0, Ljqb;->b:Ljava/util/Map;

    invoke-interface {v12, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .end local v9    # "proxyList":Ljava/util/List;, "Ljava/util/List<Landroid/app/Activity;>;"
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Ljqb;->a:Ljava/util/Map;

    invoke-interface {v12, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Ljqb;->a:Ljava/util/Map;

    invoke-interface {v12, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/ref/WeakReference;

    invoke-virtual {v12}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Ljqb;->a:Ljava/util/Map;

    .line 175
    invoke-interface {v12, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/ref/WeakReference;

    invoke-virtual {v12}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/taobao/windmill/bundle/WMLActivity;

    invoke-virtual {v12}, Lcom/taobao/windmill/bundle/WMLActivity;->isFinishing()Z

    move-result v12

    if-nez v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Ljqb;->a:Ljava/util/Map;

    .line 176
    invoke-interface {v12, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/ref/WeakReference;

    invoke-virtual {v12}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/taobao/windmill/bundle/WMLActivity;

    invoke-virtual {v12}, Lcom/taobao/windmill/bundle/WMLActivity;->isDestroyed()Z

    move-result v12

    if-nez v12, :cond_6

    .line 177
    move-object/from16 v0, p0

    iget-object v12, v0, Ljqb;->a:Ljava/util/Map;

    invoke-interface {v12, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/ref/WeakReference;

    invoke-virtual {v12}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/windmill/bundle/WMLActivity;

    .line 178
    .local v2, "aliveApp":Lcom/taobao/windmill/bundle/WMLActivity;
    const-string/jumbo v12, "activity"

    .line 179
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/ActivityManager;

    move-object v3, v12

    check-cast v3, Landroid/app/ActivityManager;

    .line 180
    .local v3, "am":Landroid/app/ActivityManager;
    const/4 v6, 0x0

    .line 181
    .local v6, "index":I
    if-nez p3, :cond_2

    .line 182
    invoke-virtual {v2}, Lcom/taobao/windmill/bundle/WMLActivity;->getRouter()Ljqr;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 183
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->startPath:Ljava/lang/String;

    .line 184
    .local v11, "url":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->query:Ljava/lang/String;

    .line 2253
    .local v10, "query":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 2254
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 2255
    invoke-virtual {v12}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 2256
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "&"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2258
    .end local v10    # "query":Ljava/lang/String;
    :cond_0
    invoke-virtual {v12}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v12

    invoke-virtual {v12, v10}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v12

    .line 2259
    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    .line 186
    :cond_1
    invoke-virtual {v2}, Lcom/taobao/windmill/bundle/WMLActivity;->getRouter()Ljqr;

    move-result-object v12

    sget-object v13, Lcom/taobao/windmill/bundle/container/router/AnimType;->NULL:Lcom/taobao/windmill/bundle/container/router/AnimType;

    .line 2302
    iget-object v14, v12, Ljqr;->b:Ljqp;

    const-string/jumbo v15, ""

    invoke-virtual {v14, v15}, Ljqp;->a(Ljava/lang/String;)V

    .line 2303
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v11, v14, v15}, Ljqr;->a(Lcom/taobao/windmill/bundle/container/router/AnimType;Ljava/lang/String;ZZ)Z

    .line 188
    invoke-virtual {v2}, Lcom/taobao/windmill/bundle/WMLActivity;->getRouter()Ljqr;

    move-result-object v12

    .line 2360
    iget-object v12, v12, Ljqr;->b:Ljqp;

    .line 3057
    iget-object v12, v12, Ljqp;->a:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 188
    add-int/lit8 v6, v12, -0x1

    .line 191
    .end local v11    # "url":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Lcom/taobao/windmill/bundle/WMLActivity;->getTaskId()I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    .line 192
    if-eqz p3, :cond_4

    .line 193
    sget v12, Ljrg$a;->wml_push_right_in:I

    sget v13, Ljrg$a;->wml_push_right_out:I

    invoke-virtual {v2, v12, v13}, Lcom/taobao/windmill/bundle/WMLActivity;->overridePendingTransition(II)V

    .line 205
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Ljqb;->d:Ljava/util/List;

    invoke-interface {v12, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 206
    move-object/from16 v0, p0

    iget-object v12, v0, Ljqb;->d:Ljava/util/List;

    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    .end local v2    # "aliveApp":Lcom/taobao/windmill/bundle/WMLActivity;
    .end local v3    # "am":Landroid/app/ActivityManager;
    .end local v6    # "index":I
    :goto_2
    return v6

    .line 172
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Ljqb;->b:Ljava/util/Map;

    invoke-interface {v12, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    move-object/from16 v0, p1

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 196
    .restart local v2    # "aliveApp":Lcom/taobao/windmill/bundle/WMLActivity;
    .restart local v3    # "am":Landroid/app/ActivityManager;
    .restart local v6    # "index":I
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getFrameTempType()Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;

    move-result-object v12

    sget-object v13, Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;->PriArea:Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;

    if-ne v12, v13, :cond_5

    .line 197
    sget v12, Ljrg$a;->wml_pri_enter_up_in:I

    sget v13, Ljrg$a;->wml_temp:I

    invoke-virtual {v2, v12, v13}, Lcom/taobao/windmill/bundle/WMLActivity;->overridePendingTransition(II)V

    goto :goto_1

    .line 200
    :cond_5
    sget v12, Ljrg$a;->wml_push_left_in:I

    sget v13, Ljrg$a;->wml_push_left_out:I

    invoke-virtual {v2, v12, v13}, Lcom/taobao/windmill/bundle/WMLActivity;->overridePendingTransition(II)V

    goto :goto_1

    .line 211
    .end local v2    # "aliveApp":Lcom/taobao/windmill/bundle/WMLActivity;
    .end local v3    # "am":Landroid/app/ActivityManager;
    .end local v6    # "index":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Ljqb;->c:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_8

    .line 212
    move-object/from16 v0, p0

    iget-object v12, v0, Ljqb;->c:Ljava/util/List;

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 213
    .local v1, "activity":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Ljqb;->d:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Ljqb;->e:I

    if-lt v12, v13, :cond_7

    .line 214
    move-object/from16 v0, p0

    iget-object v12, v0, Ljqb;->d:Ljava/util/List;

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 215
    .local v5, "dieName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Ljqb;->a:Ljava/util/Map;

    invoke-interface {v12, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/ref/WeakReference;

    invoke-virtual {v12}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    .line 216
    .local v4, "dieApp":Landroid/app/Activity;
    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    .line 217
    move-object/from16 v0, p0

    iget-object v12, v0, Ljqb;->c:Ljava/util/List;

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    move-object/from16 v0, p0

    iget-object v12, v0, Ljqb;->c:Ljava/util/List;

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "activity":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    check-cast v1, Ljava/lang/Class;

    .line 229
    .end local v4    # "dieApp":Landroid/app/Activity;
    .end local v5    # "dieName":Ljava/lang/String;
    .restart local v1    # "activity":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    :cond_7
    :goto_3
    new-instance v8, Landroid/content/Intent;

    move-object/from16 v0, p1

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 230
    .local v8, "newIntent":Landroid/content/Intent;
    const-string/jumbo v12, "appCode"

    move-object/from16 v0, p2

    invoke-virtual {v8, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 231
    const/high16 v12, 0x18000000

    invoke-virtual {v8, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 233
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 234
    if-eqz p3, :cond_9

    .line 235
    sget v12, Ljrg$a;->wml_push_right_in:I

    sget v13, Ljrg$a;->wml_push_right_out:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 247
    :goto_4
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 221
    .end local v1    # "activity":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    .end local v8    # "newIntent":Landroid/content/Intent;
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Ljqb;->d:Ljava/util/List;

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 222
    .restart local v5    # "dieName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Ljqb;->a:Ljava/util/Map;

    invoke-interface {v12, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/ref/WeakReference;

    invoke-virtual {v12}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    .line 223
    .restart local v4    # "dieApp":Landroid/app/Activity;
    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    .line 224
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 225
    .restart local v1    # "activity":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Ljqb;->c:Ljava/util/List;

    invoke-interface {v12, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 226
    move-object/from16 v0, p0

    iget-object v12, v0, Ljqb;->c:Ljava/util/List;

    invoke-interface {v12, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 238
    .end local v4    # "dieApp":Landroid/app/Activity;
    .end local v5    # "dieName":Ljava/lang/String;
    .restart local v8    # "newIntent":Landroid/content/Intent;
    :cond_9
    invoke-virtual/range {p2 .. p2}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getFrameTempType()Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;

    move-result-object v12

    sget-object v13, Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;->PriArea:Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;

    if-ne v12, v13, :cond_a

    .line 239
    sget v12, Ljrg$a;->wml_pri_enter_up_in:I

    sget v13, Ljrg$a;->wml_temp:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_4

    .line 242
    :cond_a
    sget v12, Ljrg$a;->wml_push_left_in:I

    sget v13, Ljrg$a;->wml_push_left_out:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_4
.end method

.method public final a(Landroid/app/Activity;Lcom/taobao/windmill/bundle/container/core/AppCodeModel;I)V
    .locals 5
    .param p1, "proxyActivity"    # Landroid/app/Activity;
    .param p2, "appCodeModel"    # Lcom/taobao/windmill/bundle/container/core/AppCodeModel;
    .param p3, "index"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 119
    iget-object v1, p2, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->appCode:Ljava/lang/String;

    .line 120
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Ljqb;->b:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 121
    iget-object v2, p0, Ljqb;->b:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 123
    :cond_0
    iget-object v2, p0, Ljqb;->a:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Ljqb;->a:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Ljqb;->a:Ljava/util/Map;

    .line 124
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/windmill/bundle/WMLActivity;

    invoke-virtual {v2}, Lcom/taobao/windmill/bundle/WMLActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Ljqb;->a:Ljava/util/Map;

    .line 125
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/windmill/bundle/WMLActivity;

    invoke-virtual {v2}, Lcom/taobao/windmill/bundle/WMLActivity;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 126
    iget-object v2, p0, Ljqb;->a:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/windmill/bundle/WMLActivity;

    .line 127
    .local v0, "aliveApp":Lcom/taobao/windmill/bundle/WMLActivity;
    invoke-virtual {v0}, Lcom/taobao/windmill/bundle/WMLActivity;->getRouter()Ljqr;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 128
    invoke-virtual {v0}, Lcom/taobao/windmill/bundle/WMLActivity;->getRouter()Ljqr;

    move-result-object v3

    sget-object v4, Lcom/taobao/windmill/bundle/container/router/AnimType;->NULL:Lcom/taobao/windmill/bundle/container/router/AnimType;

    add-int/lit8 v2, p3, -0x1

    if-gez v2, :cond_2

    const/4 v2, 0x0

    .line 1381
    :goto_0
    iget-object v3, v3, Ljqr;->a:Ljqo;

    invoke-virtual {v3, v4, v2}, Ljqo;->a(Lcom/taobao/windmill/bundle/container/router/AnimType;I)Z

    .line 131
    .end local v0    # "aliveApp":Lcom/taobao/windmill/bundle/WMLActivity;
    :cond_1
    return-void

    .line 128
    .restart local v0    # "aliveApp":Lcom/taobao/windmill/bundle/WMLActivity;
    :cond_2
    add-int/lit8 v2, p3, -0x1

    goto :goto_0
.end method
