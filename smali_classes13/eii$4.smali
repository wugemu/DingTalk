.class final Leii$4;
.super Ljava/lang/Object;
.source "ConfigEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leii;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Leii;


# direct methods
.method constructor <init>(Leii;Z)V
    .locals 0
    .param p1, "this$0"    # Leii;

    .prologue
    .line 289
    iput-object p1, p0, Leii$4;->b:Leii;

    iput-boolean p2, p0, Leii$4;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v6, 0x0

    .line 293
    iget-object v5, p0, Leii$4;->b:Leii;

    invoke-static {v5}, Leii;->c(Leii;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 312
    :goto_0
    return-void

    .line 297
    :cond_0
    iget-object v5, p0, Leii$4;->b:Leii;

    invoke-static {v5}, Leii;->c(Leii;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 298
    .local v1, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 299
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 300
    .local v0, "key":Ljava/lang/String;
    iget-object v5, p0, Leii$4;->b:Leii;

    invoke-static {v5, v0}, Leii;->a(Leii;Ljava/lang/String;)J

    move-result-wide v2

    .line 302
    .local v2, "saveTopicVersion":J
    cmp-long v5, v2, v6

    if-lez v5, :cond_2

    iget-boolean v5, p0, Leii$4;->a:Z

    if-eqz v5, :cond_1

    .line 303
    :cond_2
    new-instance v4, Lejx;

    invoke-direct {v4}, Lejx;-><init>()V

    .line 304
    .local v4, "topicModel":Lejx;
    iput-object v0, v4, Lejx;->b:Ljava/lang/String;

    .line 305
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v4, Lejx;->a:Ljava/lang/Long;

    .line 306
    iget-object v5, p0, Leii$4;->b:Leii;

    invoke-static {v5}, Leii;->d(Leii;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 309
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "saveTopicVersion":J
    .end local v4    # "topicModel":Lejx;
    :cond_3
    const-string/jumbo v5, "ConfigEngine"

    const-string/jumbo v6, "ConfigEngine"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "loginUpdateTopic fouse="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v10, p0, Leii$4;->a:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "topicList size="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Leii$4;->b:Leii;

    .line 310
    invoke-static {v10}, Leii;->d(Leii;)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 309
    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v5, p0, Leii$4;->b:Leii;

    invoke-static {v5}, Leii;->e(Leii;)V

    goto/16 :goto_0
.end method
