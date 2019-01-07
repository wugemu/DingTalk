.class public final Lcom/alibaba/android/search/fragment/AllSearchFragment$b;
.super Ljava/lang/Object;
.source "AllSearchFragment.java"

# interfaces
.implements Lenx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/fragment/AllSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/fragment/AllSearchFragment;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/search/fragment/AllSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/fragment/AllSearchFragment;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$b;->a:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$b;->a:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->f()V

    .line 365
    return-void
.end method

.method public final a(Lcom/alibaba/android/search/consts/SubPager;Z)V
    .locals 0
    .param p1, "which"    # Lcom/alibaba/android/search/consts/SubPager;
    .param p2, "visiable"    # Z

    .prologue
    .line 241
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/android/search/fragment/AllSearchFragment$b;->b(Lcom/alibaba/android/search/consts/SubPager;Z)V

    .line 242
    return-void
.end method

.method public final b(Lcom/alibaba/android/search/consts/SubPager;Z)V
    .locals 7
    .param p1, "which"    # Lcom/alibaba/android/search/consts/SubPager;
    .param p2, "visiable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 246
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v4

    sget v5, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    if-eq v4, v5, :cond_0

    .line 247
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "[Render] visibility "

    aput-object v5, v4, v2

    const/4 v5, 0x1

    .line 248
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, ", "

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 247
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    .line 1050
    const-string/jumbo v6, "search"

    invoke-static {v6, v4, v5}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    :cond_0
    sget-object v4, Lcom/alibaba/android/search/fragment/AllSearchFragment$3;->a:[I

    invoke-virtual {p1}, Lcom/alibaba/android/search/consts/SubPager;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 360
    :cond_1
    :goto_0
    return-void

    .line 253
    :pswitch_0
    iget-object v4, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$b;->a:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-static {v4}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->b(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 254
    iget-object v4, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$b;->a:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    iget-object v4, v4, Lcom/alibaba/android/search/fragment/AllSearchFragment;->I:Landroid/view/View;

    iget-object v5, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$b;->a:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-static {v5}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->b(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 255
    .local v0, "contactView":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 256
    if-eqz p2, :cond_2

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    .line 261
    .end local v0    # "contactView":Landroid/view/View;
    :pswitch_1
    if-eqz p2, :cond_3

    .line 262
    iget-object v3, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$b;->a:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-static {v3}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->c(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 264
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$b;->a:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->c(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 268
    :pswitch_2
    if-eqz p2, :cond_4

    .line 269
    iget-object v3, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$b;->a:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-static {v3}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->d(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 271
    :cond_4
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$b;->a:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->d(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 275
    :pswitch_3
    if-eqz p2, :cond_5

    .line 276
    iget-object v3, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$b;->a:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-static {v3}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->e(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 278
    :cond_5
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$b;->a:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->e(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 282
    :pswitch_4
    if-eqz p2, :cond_6

    .line 283
    iget-object v3, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$b;->a:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-static {v3}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->f(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 285
    :cond_6
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$b;->a:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->f(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 289
    :pswitch_5
    iget-object v4, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$b;->a:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-static {v4}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->g(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Lcom/alibaba/android/search/fragment/GroupSearchFragment;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 290
    iget-object v4, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$b;->a:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    iget-object v4, v4, Lcom/alibaba/android/search/fragment/AllSearchFragment;->I:Landroid/view/View;

    iget-object v5, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$b;->a:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-static {v5}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->g(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Lcom/alibaba/android/search/fragment/GroupSearchFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/android/search/fragment/GroupSearchFragment;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 291
    .local v1, "groupView":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 292
    if-eqz p2, :cond_7

    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_7
    move v2, v3

    goto :goto_2

    .line 297
    .end local v1    # "groupView":Landroid/view/View;
    :pswitch_6
    if-eqz p2, :cond_8

    .line 298
    iget-object v3, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$b;->a:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-static {v3}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->h(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 300
    :cond_8
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$b;->a:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->h(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 304
    :pswitch_7
    if-eqz p2, :cond_9

    .line 305
    iget-object v3, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$b;->a:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-static {v3}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->i(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 307
    :cond_9
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$b;->a:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->i(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 311
    :pswitch_8
    if-eqz p2, :cond_a

    .line 312
    iget-object v3, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$b;->a:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-static {v3}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->j(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 314
    :cond_a
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$b;->a:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->j(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 318
    :pswitch_9
    if-eqz p2, :cond_b

    .line 319
    iget-object v3, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$b;->a:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-static {v3}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->k(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 321
    :cond_b
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$b;->a:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->k(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 325
    :pswitch_a
    if-eqz p2, :cond_c

    .line 326
    iget-object v3, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$b;->a:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-static {v3}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->l(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 328
    :cond_c
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$b;->a:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->l(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 332
    :pswitch_b
    if-eqz p2, :cond_d

    .line 333
    iget-object v3, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$b;->a:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-static {v3}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->m(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 335
    :cond_d
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$b;->a:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->m(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 339
    :pswitch_c
    if-eqz p2, :cond_e

    .line 340
    iget-object v3, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$b;->a:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-static {v3}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->n(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 342
    :cond_e
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$b;->a:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->n(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 346
    :pswitch_d
    if-eqz p2, :cond_f

    .line 347
    iget-object v3, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$b;->a:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-static {v3}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->o(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 349
    :cond_f
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$b;->a:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->o(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 353
    :pswitch_e
    if-eqz p2, :cond_10

    .line 354
    iget-object v3, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$b;->a:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-static {v3}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->p(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 356
    :cond_10
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$b;->a:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->p(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 251
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method
