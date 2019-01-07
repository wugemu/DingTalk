.class final Laun$3;
.super Ljava/lang/Object;
.source "CalendarDrawerContainer.java"

# interfaces
.implements Laus;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laun;


# direct methods
.method constructor <init>(Laun;)V
    .locals 0
    .param p1, "this$0"    # Laun;

    .prologue
    .line 318
    iput-object p1, p0, Laun$3;->a:Laun;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lava;Z)V
    .locals 5
    .param p1, "itemSetting"    # Lava;
    .param p2, "isSelected"    # Z

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 321
    if-nez p1, :cond_1

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 1060
    :cond_1
    iget-object v0, p1, Lava;->g:Lcom/alibaba/android/calendar/setting/object/FolderType;

    .line 326
    .local v0, "folderType":Lcom/alibaba/android/calendar/setting/object/FolderType;
    sget-object v1, Laun$27;->a:[I

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/setting/object/FolderType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 329
    :pswitch_0
    invoke-static {}, Latf;->a()Latf;

    move-result-object v1

    .line 2040
    iget-object v2, p1, Lava;->a:Ljava/lang/String;

    .line 2233
    iget-object v3, v1, Latf;->a:Latf$b;

    new-instance v4, Latf$38;

    invoke-direct {v4, v1, v2, p2}, Latf$38;-><init>(Latf;Ljava/lang/String;Z)V

    invoke-virtual {v3, v4}, Latf$b;->execute(Ljava/lang/Runnable;)V

    .line 330
    iget-object v1, p0, Laun$3;->a:Laun;

    .line 3486
    if-eqz p1, :cond_0

    .line 3489
    iget-object v1, v1, Laun;->u:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lauz;

    .line 3490
    instance-of v3, v1, Lauy;

    if-eqz v3, :cond_2

    .line 3491
    check-cast v1, Lauy;

    .line 4052
    iget-object v1, v1, Lauy;->f:Ljava/util/List;

    .line 3493
    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 3494
    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 3497
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 3500
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lava;

    .line 5048
    iput-boolean p2, v1, Lava;->d:Z

    goto :goto_1

    .line 335
    :pswitch_1
    invoke-static {}, Lavq;->p()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 336
    invoke-static {}, Latf;->a()Latf;

    move-result-object v1

    .line 6040
    iget-object v2, p1, Lava;->a:Ljava/lang/String;

    .line 6574
    iget-object v3, v1, Latf;->a:Latf$b;

    new-instance v4, Latf$29;

    invoke-direct {v4, v1, v2, p2}, Latf$29;-><init>(Latf;Ljava/lang/String;Z)V

    invoke-virtual {v3, v4}, Latf$b;->execute(Ljava/lang/Runnable;)V

    .line 341
    :goto_2
    iget-object v1, p0, Laun$3;->a:Laun;

    .line 7077
    iget-object v1, v1, Laun;->a:Landroid/app/Activity;

    .line 341
    invoke-static {v1}, Lavh;->a(Landroid/app/Activity;)V

    .line 342
    iget-object v1, p0, Laun$3;->a:Laun;

    .line 8472
    if-eqz p1, :cond_0

    .line 8475
    iget-object v1, v1, Laun;->v:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lauz;

    .line 8476
    instance-of v3, v1, Lava;

    if-eqz v3, :cond_3

    .line 8477
    check-cast v1, Lava;

    .line 9040
    iget-object v3, v1, Lava;->a:Ljava/lang/String;

    .line 10040
    iget-object v4, p1, Lava;->a:Ljava/lang/String;

    .line 8478
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 10048
    iput-boolean p2, v1, Lava;->d:Z

    goto :goto_3

    .line 338
    :cond_4
    invoke-static {}, Lauo;->a()Lauo;

    invoke-static {p2}, Lauo;->a(Z)V

    goto :goto_2

    .line 346
    :pswitch_2
    if-eqz p2, :cond_7

    .line 347
    invoke-static {}, Lauo;->a()Lauo;

    move-result-object v1

    .line 11040
    iget-object v2, p1, Lava;->a:Ljava/lang/String;

    .line 11093
    iget-object v3, v1, Lauo;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 11097
    iget-object v3, v1, Lauo;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11098
    invoke-virtual {v1}, Lauo;->e()V

    .line 351
    :cond_5
    :goto_4
    invoke-static {}, Lavh;->b()V

    .line 353
    iget-object v1, p0, Laun$3;->a:Laun;

    .line 13446
    if-eqz p1, :cond_0

    .line 13449
    iget-object v1, v1, Laun;->t:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lauz;

    .line 13450
    instance-of v3, v1, Lava;

    if-eqz v3, :cond_6

    .line 13451
    check-cast v1, Lava;

    .line 14040
    iget-object v3, v1, Lava;->a:Ljava/lang/String;

    .line 15040
    iget-object v4, p1, Lava;->a:Ljava/lang/String;

    .line 13452
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 15048
    iput-boolean p2, v1, Lava;->d:Z

    goto :goto_5

    .line 349
    :cond_7
    invoke-static {}, Lauo;->a()Lauo;

    move-result-object v1

    .line 12040
    iget-object v2, p1, Lava;->a:Ljava/lang/String;

    .line 12102
    iget-object v3, v1, Lauo;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 12106
    iget-object v3, v1, Lauo;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 12107
    invoke-virtual {v1}, Lauo;->e()V

    goto :goto_4

    .line 326
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
