.class public Lcom/taobao/windmill/rt/app/AbstractAppInstance$a;
.super Ljava/lang/Object;
.source "AbstractAppInstance.java"

# interfaces
.implements Ljrz$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/windmill/rt/app/AbstractAppInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/windmill/rt/app/AbstractAppInstance;


# direct methods
.method protected constructor <init>(Lcom/taobao/windmill/rt/app/AbstractAppInstance;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/windmill/rt/app/AbstractAppInstance;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/taobao/windmill/rt/app/AbstractAppInstance$a;->a:Lcom/taobao/windmill/rt/app/AbstractAppInstance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 278
    iget-object v1, p0, Lcom/taobao/windmill/rt/app/AbstractAppInstance$a;->a:Lcom/taobao/windmill/rt/app/AbstractAppInstance;

    invoke-virtual {v1}, Lcom/taobao/windmill/rt/app/AbstractAppInstance;->h()Ljrl;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 279
    iget-object v1, p0, Lcom/taobao/windmill/rt/app/AbstractAppInstance$a;->a:Lcom/taobao/windmill/rt/app/AbstractAppInstance;

    invoke-virtual {v1}, Lcom/taobao/windmill/rt/app/AbstractAppInstance;->h()Ljrl;

    move-result-object v1

    invoke-interface {v1}, Ljrl;->a()V

    .line 282
    :cond_0
    iget-object v1, p0, Lcom/taobao/windmill/rt/app/AbstractAppInstance$a;->a:Lcom/taobao/windmill/rt/app/AbstractAppInstance;

    invoke-virtual {v1}, Lcom/taobao/windmill/rt/app/AbstractAppInstance;->g()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 283
    iget-object v1, p0, Lcom/taobao/windmill/rt/app/AbstractAppInstance$a;->a:Lcom/taobao/windmill/rt/app/AbstractAppInstance;

    invoke-virtual {v1}, Lcom/taobao/windmill/rt/app/AbstractAppInstance;->g()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljry;

    .line 284
    .local v0, "renderer":Ljry;
    invoke-interface {v0}, Ljry;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 285
    invoke-interface {v0}, Ljry;->h()Ljrl;

    move-result-object v2

    invoke-interface {v2}, Ljrl;->a()V

    goto :goto_0

    .line 289
    .end local v0    # "renderer":Ljry;
    :cond_2
    return-void
.end method

.method public final a(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 356
    iget-object v1, p0, Lcom/taobao/windmill/rt/app/AbstractAppInstance$a;->a:Lcom/taobao/windmill/rt/app/AbstractAppInstance;

    invoke-virtual {v1}, Lcom/taobao/windmill/rt/app/AbstractAppInstance;->h()Ljrl;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 357
    iget-object v1, p0, Lcom/taobao/windmill/rt/app/AbstractAppInstance$a;->a:Lcom/taobao/windmill/rt/app/AbstractAppInstance;

    invoke-virtual {v1}, Lcom/taobao/windmill/rt/app/AbstractAppInstance;->h()Ljrl;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Ljrl;->a(IILandroid/content/Intent;)V

    .line 360
    :cond_0
    iget-object v1, p0, Lcom/taobao/windmill/rt/app/AbstractAppInstance$a;->a:Lcom/taobao/windmill/rt/app/AbstractAppInstance;

    invoke-virtual {v1}, Lcom/taobao/windmill/rt/app/AbstractAppInstance;->g()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 361
    iget-object v1, p0, Lcom/taobao/windmill/rt/app/AbstractAppInstance$a;->a:Lcom/taobao/windmill/rt/app/AbstractAppInstance;

    invoke-virtual {v1}, Lcom/taobao/windmill/rt/app/AbstractAppInstance;->g()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljry;

    .line 362
    .local v0, "renderer":Ljry;
    invoke-interface {v0}, Ljry;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 363
    invoke-interface {v0}, Ljry;->h()Ljrl;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Ljrl;->a(IILandroid/content/Intent;)V

    goto :goto_0

    .line 368
    .end local v0    # "renderer":Ljry;
    :cond_2
    iget-object v1, p0, Lcom/taobao/windmill/rt/app/AbstractAppInstance$a;->a:Lcom/taobao/windmill/rt/app/AbstractAppInstance;

    iget-object v1, v1, Lcom/taobao/windmill/rt/app/AbstractAppInstance;->b:Landroid/content/Context;

    if-eqz v1, :cond_3

    .line 369
    const-string/jumbo v1, "windmill.ACTION_ON_ACTIVITY_RESULT_FILTER"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 370
    const-string/jumbo v1, "windmill.ACTION_request_code"

    invoke-virtual {p3, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 371
    const-string/jumbo v1, "windmill.ACTION_result_code"

    invoke-virtual {p3, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 372
    const-string/jumbo v1, "windmill.ACTION_result_uri"

    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 373
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 374
    iget-object v1, p0, Lcom/taobao/windmill/rt/app/AbstractAppInstance$a;->a:Lcom/taobao/windmill/rt/app/AbstractAppInstance;

    iget-object v1, v1, Lcom/taobao/windmill/rt/app/AbstractAppInstance;->b:Landroid/content/Context;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, p3}, Ldq;->a(Landroid/content/Intent;)Z

    .line 376
    :cond_3
    return-void
.end method

.method public a(I[Ljava/lang/String;[I)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 380
    iget-object v1, p0, Lcom/taobao/windmill/rt/app/AbstractAppInstance$a;->a:Lcom/taobao/windmill/rt/app/AbstractAppInstance;

    invoke-virtual {v1}, Lcom/taobao/windmill/rt/app/AbstractAppInstance;->h()Ljrl;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 381
    iget-object v1, p0, Lcom/taobao/windmill/rt/app/AbstractAppInstance$a;->a:Lcom/taobao/windmill/rt/app/AbstractAppInstance;

    invoke-virtual {v1}, Lcom/taobao/windmill/rt/app/AbstractAppInstance;->h()Ljrl;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Ljrl;->a(I[Ljava/lang/String;[I)V

    .line 384
    :cond_0
    iget-object v1, p0, Lcom/taobao/windmill/rt/app/AbstractAppInstance$a;->a:Lcom/taobao/windmill/rt/app/AbstractAppInstance;

    invoke-virtual {v1}, Lcom/taobao/windmill/rt/app/AbstractAppInstance;->g()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 385
    iget-object v1, p0, Lcom/taobao/windmill/rt/app/AbstractAppInstance$a;->a:Lcom/taobao/windmill/rt/app/AbstractAppInstance;

    invoke-virtual {v1}, Lcom/taobao/windmill/rt/app/AbstractAppInstance;->g()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljry;

    .line 386
    .local v0, "renderer":Ljry;
    invoke-interface {v0}, Ljry;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 387
    invoke-interface {v0}, Ljry;->h()Ljrl;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Ljrl;->a(I[Ljava/lang/String;[I)V

    goto :goto_0

    .line 391
    .end local v0    # "renderer":Ljry;
    :cond_2
    return-void
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 293
    iget-object v1, p0, Lcom/taobao/windmill/rt/app/AbstractAppInstance$a;->a:Lcom/taobao/windmill/rt/app/AbstractAppInstance;

    invoke-virtual {v1}, Lcom/taobao/windmill/rt/app/AbstractAppInstance;->h()Ljrl;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 294
    iget-object v1, p0, Lcom/taobao/windmill/rt/app/AbstractAppInstance$a;->a:Lcom/taobao/windmill/rt/app/AbstractAppInstance;

    invoke-virtual {v1}, Lcom/taobao/windmill/rt/app/AbstractAppInstance;->h()Ljrl;

    move-result-object v1

    invoke-interface {v1}, Ljrl;->b()V

    .line 297
    :cond_0
    iget-object v1, p0, Lcom/taobao/windmill/rt/app/AbstractAppInstance$a;->a:Lcom/taobao/windmill/rt/app/AbstractAppInstance;

    invoke-virtual {v1}, Lcom/taobao/windmill/rt/app/AbstractAppInstance;->g()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 298
    iget-object v1, p0, Lcom/taobao/windmill/rt/app/AbstractAppInstance$a;->a:Lcom/taobao/windmill/rt/app/AbstractAppInstance;

    invoke-virtual {v1}, Lcom/taobao/windmill/rt/app/AbstractAppInstance;->g()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljry;

    .line 299
    .local v0, "renderer":Ljry;
    invoke-interface {v0}, Ljry;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 300
    invoke-interface {v0}, Ljry;->h()Ljrl;

    move-result-object v2

    invoke-interface {v2}, Ljrl;->b()V

    goto :goto_0

    .line 304
    .end local v0    # "renderer":Ljry;
    :cond_2
    return-void
.end method

.method public final c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 308
    iget-object v1, p0, Lcom/taobao/windmill/rt/app/AbstractAppInstance$a;->a:Lcom/taobao/windmill/rt/app/AbstractAppInstance;

    invoke-virtual {v1}, Lcom/taobao/windmill/rt/app/AbstractAppInstance;->h()Ljrl;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 309
    iget-object v1, p0, Lcom/taobao/windmill/rt/app/AbstractAppInstance$a;->a:Lcom/taobao/windmill/rt/app/AbstractAppInstance;

    invoke-virtual {v1}, Lcom/taobao/windmill/rt/app/AbstractAppInstance;->h()Ljrl;

    move-result-object v1

    invoke-interface {v1}, Ljrl;->c()V

    .line 312
    :cond_0
    iget-object v1, p0, Lcom/taobao/windmill/rt/app/AbstractAppInstance$a;->a:Lcom/taobao/windmill/rt/app/AbstractAppInstance;

    invoke-virtual {v1}, Lcom/taobao/windmill/rt/app/AbstractAppInstance;->g()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 313
    iget-object v1, p0, Lcom/taobao/windmill/rt/app/AbstractAppInstance$a;->a:Lcom/taobao/windmill/rt/app/AbstractAppInstance;

    invoke-virtual {v1}, Lcom/taobao/windmill/rt/app/AbstractAppInstance;->g()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljry;

    .line 314
    .local v0, "renderer":Ljry;
    invoke-interface {v0}, Ljry;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 315
    invoke-interface {v0}, Ljry;->h()Ljrl;

    move-result-object v2

    invoke-interface {v2}, Ljrl;->c()V

    goto :goto_0

    .line 319
    .end local v0    # "renderer":Ljry;
    :cond_2
    return-void
.end method

.method public final d()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 323
    iget-object v1, p0, Lcom/taobao/windmill/rt/app/AbstractAppInstance$a;->a:Lcom/taobao/windmill/rt/app/AbstractAppInstance;

    invoke-virtual {v1}, Lcom/taobao/windmill/rt/app/AbstractAppInstance;->h()Ljrl;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 324
    iget-object v1, p0, Lcom/taobao/windmill/rt/app/AbstractAppInstance$a;->a:Lcom/taobao/windmill/rt/app/AbstractAppInstance;

    invoke-virtual {v1}, Lcom/taobao/windmill/rt/app/AbstractAppInstance;->h()Ljrl;

    move-result-object v1

    invoke-interface {v1}, Ljrl;->d()V

    .line 327
    :cond_0
    iget-object v1, p0, Lcom/taobao/windmill/rt/app/AbstractAppInstance$a;->a:Lcom/taobao/windmill/rt/app/AbstractAppInstance;

    invoke-virtual {v1}, Lcom/taobao/windmill/rt/app/AbstractAppInstance;->g()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 328
    iget-object v1, p0, Lcom/taobao/windmill/rt/app/AbstractAppInstance$a;->a:Lcom/taobao/windmill/rt/app/AbstractAppInstance;

    invoke-virtual {v1}, Lcom/taobao/windmill/rt/app/AbstractAppInstance;->g()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljry;

    .line 329
    .local v0, "renderer":Ljry;
    invoke-interface {v0}, Ljry;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 330
    invoke-interface {v0}, Ljry;->h()Ljrl;

    move-result-object v2

    invoke-interface {v2}, Ljrl;->d()V

    goto :goto_0

    .line 334
    .end local v0    # "renderer":Ljry;
    :cond_2
    return-void
.end method

.method public final e()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 338
    iget-object v1, p0, Lcom/taobao/windmill/rt/app/AbstractAppInstance$a;->a:Lcom/taobao/windmill/rt/app/AbstractAppInstance;

    invoke-virtual {v1}, Lcom/taobao/windmill/rt/app/AbstractAppInstance;->h()Ljrl;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 339
    iget-object v1, p0, Lcom/taobao/windmill/rt/app/AbstractAppInstance$a;->a:Lcom/taobao/windmill/rt/app/AbstractAppInstance;

    invoke-virtual {v1}, Lcom/taobao/windmill/rt/app/AbstractAppInstance;->h()Ljrl;

    move-result-object v1

    invoke-interface {v1}, Ljrl;->e()V

    .line 342
    :cond_0
    iget-object v1, p0, Lcom/taobao/windmill/rt/app/AbstractAppInstance$a;->a:Lcom/taobao/windmill/rt/app/AbstractAppInstance;

    invoke-virtual {v1}, Lcom/taobao/windmill/rt/app/AbstractAppInstance;->g()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 343
    iget-object v1, p0, Lcom/taobao/windmill/rt/app/AbstractAppInstance$a;->a:Lcom/taobao/windmill/rt/app/AbstractAppInstance;

    invoke-virtual {v1}, Lcom/taobao/windmill/rt/app/AbstractAppInstance;->g()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljry;

    .line 344
    .local v0, "renderer":Ljry;
    invoke-interface {v0}, Ljry;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 345
    invoke-interface {v0}, Ljry;->h()Ljrl;

    move-result-object v2

    invoke-interface {v2}, Ljrl;->e()V

    goto :goto_0

    .line 350
    .end local v0    # "renderer":Ljry;
    :cond_2
    iget-object v1, p0, Lcom/taobao/windmill/rt/app/AbstractAppInstance$a;->a:Lcom/taobao/windmill/rt/app/AbstractAppInstance;

    iput-object v3, v1, Lcom/taobao/windmill/rt/app/AbstractAppInstance;->d:Ljse;

    .line 351
    iget-object v1, p0, Lcom/taobao/windmill/rt/app/AbstractAppInstance$a;->a:Lcom/taobao/windmill/rt/app/AbstractAppInstance;

    iput-object v3, v1, Lcom/taobao/windmill/rt/app/AbstractAppInstance;->b:Landroid/content/Context;

    .line 352
    return-void
.end method
