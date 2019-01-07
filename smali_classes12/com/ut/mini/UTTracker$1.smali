.class Lcom/ut/mini/UTTracker$1;
.super Ljava/lang/Object;
.source "UTTracker.java"

# interfaces
.implements Lcom/ut/mini/module/plugin/IUTPluginForEachDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ut/mini/UTTracker;

.field final synthetic val$lArg1:Ljava/lang/String;

.field final synthetic val$lArg2:Ljava/lang/String;

.field final synthetic val$lArg3:Ljava/lang/String;

.field final synthetic val$lEventID:I

.field final synthetic val$lLogMap:Ljava/util/Map;

.field final synthetic val$lPageName:Ljava/lang/String;

.field final synthetic val$pluginLogMap:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/ut/mini/UTTracker;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/ut/mini/UTTracker$1;->this$0:Lcom/ut/mini/UTTracker;

    iput p2, p0, Lcom/ut/mini/UTTracker$1;->val$lEventID:I

    iput-object p3, p0, Lcom/ut/mini/UTTracker$1;->val$lPageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/ut/mini/UTTracker$1;->val$lArg1:Ljava/lang/String;

    iput-object p5, p0, Lcom/ut/mini/UTTracker$1;->val$lArg2:Ljava/lang/String;

    iput-object p6, p0, Lcom/ut/mini/UTTracker$1;->val$lArg3:Ljava/lang/String;

    iput-object p7, p0, Lcom/ut/mini/UTTracker$1;->val$pluginLogMap:Ljava/util/Map;

    iput-object p8, p0, Lcom/ut/mini/UTTracker$1;->val$lLogMap:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPluginForEach(Lcom/ut/mini/module/plugin/UTPlugin;)V
    .locals 12
    .param p1, "aPlugin"    # Lcom/ut/mini/module/plugin/UTPlugin;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 248
    invoke-virtual {p1}, Lcom/ut/mini/module/plugin/UTPlugin;->getAttentionEventIds()[I

    move-result-object v0

    iget v1, p0, Lcom/ut/mini/UTTracker$1;->val$lEventID:I

    invoke-static {v0, v1}, Lcom/ut/mini/module/plugin/UTPlugin;->isEventIDInRange([II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 249
    iget-object v1, p0, Lcom/ut/mini/UTTracker$1;->val$lPageName:Ljava/lang/String;

    iget v2, p0, Lcom/ut/mini/UTTracker$1;->val$lEventID:I

    iget-object v3, p0, Lcom/ut/mini/UTTracker$1;->val$lArg1:Ljava/lang/String;

    iget-object v4, p0, Lcom/ut/mini/UTTracker$1;->val$lArg2:Ljava/lang/String;

    iget-object v5, p0, Lcom/ut/mini/UTTracker$1;->val$lArg3:Ljava/lang/String;

    iget-object v6, p0, Lcom/ut/mini/UTTracker$1;->val$pluginLogMap:Ljava/util/Map;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/ut/mini/module/plugin/UTPlugin;->onEventDispatch(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v9

    .line 251
    .local v9, "lPluginArgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v9, :cond_4

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 252
    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 253
    .local v8, "lKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const-string/jumbo v11, ""

    .line 255
    .local v11, "utparamcnt":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 256
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 257
    .local v7, "lKey":Ljava/lang/String;
    invoke-static {}, Lcom/ut/mini/UTTracker;->access$000()Ljava/util/List;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    invoke-interface {v9, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    :cond_1
    const-string/jumbo v0, "utparam-cnt"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "utparamcnt":Ljava/lang/String;
    check-cast v11, Ljava/lang/String;

    .restart local v11    # "utparamcnt":Ljava/lang/String;
    goto :goto_0

    .line 264
    .end local v7    # "lKey":Ljava/lang/String;
    :cond_2
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 265
    iget-object v0, p0, Lcom/ut/mini/UTTracker$1;->val$lLogMap:Ljava/util/Map;

    const-string/jumbo v1, "utparam-cnt"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 266
    .local v10, "targetUtParam":Ljava/lang/String;
    const-string/jumbo v0, "utparam-cnt"

    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v1

    invoke-virtual {v1, v11, v10}, Lcom/ut/mini/UTPageHitHelper;->refreshUtParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    .end local v10    # "targetUtParam":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/ut/mini/UTTracker$1;->val$lLogMap:Ljava/util/Map;

    invoke-interface {v0, v9}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 272
    .end local v8    # "lKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v9    # "lPluginArgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "utparamcnt":Ljava/lang/String;
    :cond_4
    return-void
.end method
