.class public final Lbbp$85;
.super Ljava/lang/Object;
.source "DingDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/Callback;

.field final synthetic b:Lbbp;


# direct methods
.method public constructor <init>(Lbbp;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 776
    iput-object p1, p0, Lbbp$85;->b:Lbbp;

    iput-object p2, p0, Lbbp$85;->a:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 779
    iget-object v0, p0, Lbbp$85;->b:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v1

    iget-object v2, p0, Lbbp$85;->a:Lcom/alibaba/wukong/Callback;

    .line 2243
    invoke-static {}, Lbju;->u()Z

    move-result v0

    .line 2244
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "[DingDataCenter] confirmAllCommentReminds isRedDotOpen="

    aput-object v4, v3, v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v3}, Lbkd;->a([Ljava/lang/String;)V

    .line 2245
    if-eqz v0, :cond_0

    .line 2254
    iget-object v0, v1, Lbbo;->h:Lbbk;

    new-instance v3, Lbbo$70;

    invoke-direct {v3, v1, v2}, Lbbo$70;-><init>(Lbbo;Lcom/alibaba/wukong/Callback;)V

    invoke-virtual {v0, v3}, Lbbk;->a(Lcma;)V

    .line 2246
    :goto_0
    return-void

    .line 2297
    :cond_0
    iget-object v0, v1, Lbbo;->g:Lbgq;

    invoke-interface {v0}, Lbgq;->o_()Ljava/util/List;

    move-result-object v0

    .line 2298
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 2299
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 2300
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbeq;

    .line 2301
    if-eqz v0, :cond_1

    .line 3096
    iget-wide v6, v0, Lbeq;->a:J

    .line 2304
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2306
    :cond_2
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 2307
    if-eqz v0, :cond_3

    .line 2310
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lbbo;->a(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v0

    .line 2311
    invoke-virtual {v1, v0}, Lbbo;->c(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    goto :goto_2

    .line 2313
    :cond_4
    iget-object v0, v1, Lbbo;->g:Lbgq;

    invoke-interface {v0}, Lbgq;->a()I

    .line 2314
    invoke-virtual {v1}, Lbbo;->c()V

    .line 2315
    invoke-virtual {v1}, Lbbo;->b()V

    .line 2318
    :cond_5
    new-array v0, v8, [Ljava/lang/String;

    const-string/jumbo v3, "[DingDataCenter] confirmAllCommentRemindsByLocal  readAllComment success."

    aput-object v3, v0, v5

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 2319
    const/4 v0, 0x0

    invoke-virtual {v1, v2, v0}, Lbbo;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    goto :goto_0
.end method
