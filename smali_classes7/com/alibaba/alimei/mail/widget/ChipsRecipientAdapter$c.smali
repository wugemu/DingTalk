.class final Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$c;
.super Ljava/lang/Object;
.source "ChipsRecipientAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;


# direct methods
.method private constructor <init>(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$c;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    .prologue
    .line 298
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$c;-><init>(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 302
    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$c;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    invoke-virtual {v2}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$c;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->a(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, "currentKeyword":Ljava/lang/String;
    sget-object v2, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->a:Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "search task run:"

    aput-object v3, v2, v6

    const/4 v3, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", search key = "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object v0, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    .line 310
    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$c;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->b(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)Ljava/util/Map;

    move-result-object v3

    monitor-enter v3

    .line 312
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$c;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->b(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 313
    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$c;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->c(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 315
    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$c;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->d(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 316
    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$c;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->e(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 317
    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$c;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->f(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 318
    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$c;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->g(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 319
    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$c;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->h(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 320
    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$c;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->i(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 321
    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$c;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->j(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 322
    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$c;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->k(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 323
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$c;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    iget-object v2, v2, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->o:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 327
    .local v1, "msg":Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 328
    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$c;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    iget-object v2, v2, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->o:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 330
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 334
    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$c;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->l(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 335
    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$c;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    invoke-static {v2, v0}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->a(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;Ljava/lang/String;)V

    .line 337
    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$c;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    invoke-static {v2, v0}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->b(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;Ljava/lang/String;)V

    .line 339
    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$c;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    invoke-static {v2, v0}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->c(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;Ljava/lang/String;)V

    .line 341
    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$c;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    invoke-static {v2, v0}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->d(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;Ljava/lang/String;)V

    .line 343
    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$c;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    invoke-static {v2, v0}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->e(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;Ljava/lang/String;)V

    .line 345
    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$c;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    invoke-static {v2, v0}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->f(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 323
    .end local v1    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 347
    .restart local v1    # "msg":Landroid/os/Message;
    :cond_2
    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$c;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    invoke-static {v2, v0}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->e(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;Ljava/lang/String;)V

    .line 349
    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$c;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    invoke-static {v2, v0}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->b(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;Ljava/lang/String;)V

    .line 351
    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$c;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    invoke-static {v2, v0}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->g(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;Ljava/lang/String;)V

    .line 353
    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$c;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    invoke-static {v2, v0}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->h(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;Ljava/lang/String;)V

    .line 355
    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$c;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    invoke-static {v2, v0}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->d(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
