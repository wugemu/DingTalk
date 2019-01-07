.class final Lcom/alibaba/android/dingtalkim/session/SessionPresenter$14;
.super Liak;
.source "SessionPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/session/SessionPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .prologue
    .line 1196
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$14;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    invoke-direct {p0}, Liak;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/wukong/im/category/CategoryObject;)V
    .locals 9
    .param p1, "categoryObject"    # Lcom/alibaba/wukong/im/category/CategoryObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v8, 0x1

    .line 1199
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$14;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 2116
    iget-boolean v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->i:Z

    .line 1199
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$14;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 3116
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 1199
    invoke-interface {v0}, Ldyy$b;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4351
    :cond_0
    :goto_0
    return-void

    .line 1203
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$14;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 4335
    if-eqz p1, :cond_0

    iget-object v0, v2, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 4338
    iget-object v0, v2, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->f:Ljava/util/Map;

    iget-wide v4, p1, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/category/CategoryObject;

    .line 4339
    if-eqz v0, :cond_2

    .line 4340
    iget-object v1, p1, Lcom/alibaba/wukong/im/category/CategoryObject;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/im/category/CategoryObject;->title:Ljava/lang/String;

    .line 4342
    :cond_2
    iget-object v0, v2, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/category/CategoryObject;

    .line 4343
    if-eqz v0, :cond_3

    iget-wide v4, v0, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    iget-wide v6, p1, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    .line 4344
    iget-object v1, p1, Lcom/alibaba/wukong/im/category/CategoryObject;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/im/category/CategoryObject;->title:Ljava/lang/String;

    .line 4348
    :cond_4
    iget-wide v0, p1, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 4349
    iget-object v1, v2, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->n:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 4350
    invoke-virtual {v2, p1}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->b(Lcom/alibaba/wukong/im/category/CategoryObject;)V

    goto :goto_0

    .line 4354
    :cond_5
    iget-object v1, v2, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->n:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 4355
    iget-object v1, v2, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4356
    iget-object v1, v2, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    iget-object v3, v2, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 4357
    iget-object v1, p1, Lcom/alibaba/wukong/im/category/CategoryObject;->title:Ljava/lang/String;

    if-nez v1, :cond_7

    const-string/jumbo v1, ""

    :goto_1
    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->categoryTitle:Ljava/lang/String;

    .line 4359
    :cond_6
    if-eqz v0, :cond_0

    .line 4360
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "notifyToDataChange: category title change id:"

    aput-object v4, v1, v3

    iget-wide v4, p1, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v8

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldza;->a(Ljava/lang/String;)V

    .line 4361
    iget-object v1, v2, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    invoke-interface {v1, v0, v8}, Ldyy$b;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;I)V

    goto/16 :goto_0

    .line 4357
    :cond_7
    iget-object v1, p1, Lcom/alibaba/wukong/im/category/CategoryObject;->title:Ljava/lang/String;

    goto :goto_1
.end method

.method public final a(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1251
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$14;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 15116
    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 1251
    invoke-interface {v5}, Ldyy$b;->d()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1286
    :cond_0
    :goto_0
    return-void

    .line 1260
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1261
    .local v4, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$14;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->m()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1262
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$14;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    invoke-virtual {v5, v4}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->c(Ljava/util/List;)V

    .line 1263
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$14;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    const/4 v6, 0x5

    invoke-static {v5, v4, v6}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;Ljava/util/List;I)V

    .line 1264
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$14;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 16116
    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    .line 1264
    invoke-static {v5, v4}, Ldza;->a(Ljava/util/List;Ljava/util/List;)V

    .line 1265
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$14;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 17116
    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->r:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$a;

    .line 1265
    invoke-virtual {v5, v4}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$a;->b(Ljava/util/List;)V

    goto :goto_0

    .line 1267
    :cond_2
    const/4 v2, 0x0

    .line 1268
    .local v2, "change":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/im/Conversation;

    .line 1269
    .local v3, "conversation":Lcom/alibaba/wukong/im/Conversation;
    if-eqz v3, :cond_3

    .line 1272
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$14;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 18116
    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->n:Ljava/util/HashMap;

    .line 1272
    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1273
    const/4 v2, 0x1

    .line 1282
    .end local v3    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    :cond_4
    :goto_1
    if-eqz v2, :cond_0

    .line 1283
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$14;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 19116
    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 1283
    invoke-interface {v5}, Ldyy$b;->o()V

    goto :goto_0

    .line 18137
    .restart local v3    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    :cond_5
    const/4 v6, 0x0

    invoke-static {v3, v6}, Ldza;->a(Lcom/alibaba/wukong/im/Conversation;Z)J

    move-result-wide v0

    .line 1277
    .local v0, "categoryType":J
    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->getCategoryId()J

    move-result-wide v6

    cmp-long v6, v0, v6

    if-nez v6, :cond_3

    .line 1278
    const/4 v2, 0x1

    .line 1279
    goto :goto_1
.end method

.method public final b(Lcom/alibaba/wukong/im/category/CategoryObject;)V
    .locals 8
    .param p1, "categoryObject"    # Lcom/alibaba/wukong/im/category/CategoryObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1208
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$14;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 5116
    iget-boolean v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->i:Z

    .line 1208
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$14;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 6116
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 1208
    invoke-interface {v0}, Ldyy$b;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1213
    :cond_0
    :goto_0
    return-void

    .line 1211
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$14;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 7366
    if-eqz p1, :cond_0

    .line 7369
    iget-object v0, v1, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->f:Ljava/util/Map;

    iget-wide v2, p1, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7370
    iget-object v0, v1, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/category/CategoryObject;

    .line 7371
    if-eqz v0, :cond_2

    iget-wide v4, v0, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    iget-wide v6, p1, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    .line 7372
    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->e:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 7376
    :cond_3
    iget-wide v2, p1, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    invoke-static {v2, v3}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 7377
    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->n:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7380
    invoke-static {p1, v0}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a(Lcom/alibaba/wukong/im/category/CategoryObject;Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v2

    .line 7381
    iget-object v3, v1, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7382
    iget-object v3, v1, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7383
    iget-object v3, v1, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->r:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$a;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v3, v2}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$a;->a(Lcom/alibaba/wukong/im/Conversation;)V

    .line 7384
    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->n:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7385
    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    invoke-interface {v2, v0}, Ldyy$b;->c(Ljava/lang/String;)V

    .line 7386
    iget-object v0, v1, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    invoke-interface {v0}, Ldyy$b;->a()V

    .line 7387
    const-string/jumbo v0, "SessionPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "rm category "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p1, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8018
    const-string/jumbo v2, "im"

    invoke-static {v0, v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/category/CategoryObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1226
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/category/CategoryObject;>;"
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$14;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 11116
    iget-boolean v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->i:Z

    .line 1226
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$14;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 12116
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 1226
    invoke-interface {v0}, Ldyy$b;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1234
    :cond_0
    :goto_0
    return-void

    .line 1233
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$14;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;Ljava/util/List;)V

    goto :goto_0
.end method

.method public final c(Lcom/alibaba/wukong/im/category/CategoryObject;)V
    .locals 1
    .param p1, "categoryObject"    # Lcom/alibaba/wukong/im/category/CategoryObject;

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$14;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 8116
    iget-boolean v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->i:Z

    .line 1217
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$14;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 9116
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 1217
    invoke-interface {v0}, Ldyy$b;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1222
    :cond_0
    :goto_0
    return-void

    .line 1221
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$14;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 10116
    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->b(Lcom/alibaba/wukong/im/category/CategoryObject;)V

    goto :goto_0
.end method

.method public final c(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/category/CategoryObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1238
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/category/CategoryObject;>;"
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$14;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 13116
    iget-boolean v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->i:Z

    .line 1238
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$14;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 14116
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 1238
    invoke-interface {v0}, Ldyy$b;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1247
    :cond_0
    :goto_0
    return-void

    .line 1246
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$14;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;Ljava/util/List;)V

    goto :goto_0
.end method
