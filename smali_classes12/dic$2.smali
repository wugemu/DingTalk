.class final Ldic$2;
.super Ldpr;
.source "GifEmotionPresenterImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldic;


# direct methods
.method constructor <init>(Ldic;)V
    .locals 0
    .param p1, "this$0"    # Ldic;

    .prologue
    .line 265
    iput-object p1, p0, Ldic$2;->a:Ldic;

    invoke-direct {p0}, Ldpr;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 268
    iget-object v0, p0, Ldic$2;->a:Ldic;

    .line 1037
    invoke-virtual {v0}, Ldic;->g()V

    .line 269
    iget-object v0, p0, Ldic$2;->a:Ldic;

    .line 2037
    iget-object v0, v0, Ldic;->a:Ldib$b;

    .line 269
    iget-object v1, p0, Ldic$2;->a:Ldic;

    .line 3037
    iget-boolean v1, v1, Ldic;->d:Z

    .line 269
    invoke-interface {v0, v1}, Ldib$b;->b(Z)V

    .line 270
    iget-object v0, p0, Ldic$2;->a:Ldic;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ldic;->a(Ldic;Z)V

    .line 271
    iget-object v0, p0, Ldic$2;->a:Ldic;

    .line 4037
    invoke-virtual {v0}, Ldic;->h()V

    .line 272
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 276
    iget-object v0, p0, Ldic$2;->a:Ldic;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ldic;->a(Ldic;Z)V

    .line 277
    return-void
.end method

.method public final c()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 283
    iget-object v0, p0, Ldic$2;->a:Ldic;

    .line 5037
    iget-wide v0, v0, Ldic;->f:J

    .line 283
    iget-object v2, p0, Ldic$2;->a:Ldic;

    .line 6037
    iget-object v2, v2, Ldic;->b:Ldpy;

    .line 6631
    iget-wide v2, v2, Ldpy;->h:J

    .line 283
    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 284
    iget-object v0, p0, Ldic$2;->a:Ldic;

    iget-object v1, p0, Ldic$2;->a:Ldic;

    .line 7037
    iget-object v1, v1, Ldic;->b:Ldpy;

    .line 7631
    iget-wide v2, v1, Ldpy;->h:J

    .line 8037
    iput-wide v2, v0, Ldic;->f:J

    .line 285
    iget-object v0, p0, Ldic$2;->a:Ldic;

    .line 9037
    const/4 v1, 0x0

    iput-boolean v1, v0, Ldic;->d:Z

    .line 286
    iget-object v0, p0, Ldic$2;->a:Ldic;

    .line 10037
    iget-object v0, v0, Ldic;->a:Ldib$b;

    .line 286
    iget-object v1, p0, Ldic$2;->a:Ldic;

    .line 11037
    iget-boolean v1, v1, Ldic;->d:Z

    .line 286
    invoke-interface {v0, v1}, Ldib$b;->b(Z)V

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    iget-object v0, p0, Ldic$2;->a:Ldic;

    .line 12037
    iget-object v0, v0, Ldic;->a:Ldib$b;

    .line 288
    invoke-interface {v0}, Ldib$b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Ldic$2;->a:Ldic;

    .line 13037
    invoke-virtual {v0}, Ldic;->g()V

    .line 290
    iget-object v0, p0, Ldic$2;->a:Ldic;

    .line 14037
    iget-object v0, v0, Ldic;->a:Ldib$b;

    .line 290
    iget-object v1, p0, Ldic$2;->a:Ldic;

    .line 15037
    iget-boolean v1, v1, Ldic;->d:Z

    .line 290
    invoke-interface {v0, v1}, Ldib$b;->b(Z)V

    goto :goto_0
.end method

.method public final d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 297
    iget-object v0, p0, Ldic$2;->a:Ldic;

    .line 16037
    iget-object v0, v0, Ldic;->a:Ldib$b;

    .line 297
    invoke-interface {v0}, Ldib$b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Ldic$2;->a:Ldic;

    .line 17037
    invoke-virtual {v0}, Ldic;->g()V

    .line 300
    iget-object v0, p0, Ldic$2;->a:Ldic;

    .line 18037
    iget-object v0, v0, Ldic;->a:Ldib$b;

    .line 300
    iget-object v1, p0, Ldic$2;->a:Ldic;

    .line 19037
    iget-boolean v1, v1, Ldic;->d:Z

    .line 300
    invoke-interface {v0, v1}, Ldib$b;->b(Z)V

    .line 302
    :cond_0
    return-void
.end method

.method public final e()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 306
    iget-object v1, p0, Ldic$2;->a:Ldic;

    .line 20037
    iget-object v1, v1, Ldic;->e:Ldtc;

    .line 306
    if-eqz v1, :cond_1

    .line 307
    invoke-static {}, Ldia;->a()Ldia;

    iget-object v1, p0, Ldic$2;->a:Ldic;

    .line 21037
    iget-object v1, v1, Ldic;->e:Ldtc;

    .line 307
    iget-wide v2, v1, Ldtc;->c:J

    invoke-static {v2, v3}, Ldia;->a(J)V

    .line 308
    iget-object v1, p0, Ldic$2;->a:Ldic;

    .line 22037
    iget-object v1, v1, Ldic;->c:Ljava/util/List;

    .line 308
    if-eqz v1, :cond_1

    .line 309
    iget-object v1, p0, Ldic$2;->a:Ldic;

    .line 23037
    iget-object v1, v1, Ldic;->c:Ljava/util/List;

    .line 309
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;

    .line 310
    .local v0, "dataObject":Lcom/alibaba/android/dingtalkim/models/TopicDataObject;
    if-eqz v0, :cond_0

    iget-wide v2, v0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->topicId:J

    iget-object v4, p0, Ldic$2;->a:Ldic;

    .line 24037
    iget-object v4, v4, Ldic;->e:Ldtc;

    .line 310
    iget-wide v4, v4, Ldtc;->a:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 312
    iget-object v1, p0, Ldic$2;->a:Ldic;

    .line 25037
    iget-object v1, v1, Ldic;->a:Ldib$b;

    .line 312
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ldib$b;->a(Z)V

    .line 313
    iget-object v1, p0, Ldic$2;->a:Ldic;

    .line 26037
    iget-object v1, v1, Ldic;->a:Ldib$b;

    .line 313
    iget-object v2, p0, Ldic$2;->a:Ldic;

    .line 27037
    iget-object v2, v2, Ldic;->e:Ldtc;

    .line 313
    invoke-interface {v1, v2}, Ldib$b;->a(Ldtc;)V

    .line 319
    .end local v0    # "dataObject":Lcom/alibaba/android/dingtalkim/models/TopicDataObject;
    :cond_1
    return-void
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Ldic$2;->a:Ldic;

    .line 28037
    invoke-virtual {v0}, Ldic;->h()V

    .line 324
    return-void
.end method
