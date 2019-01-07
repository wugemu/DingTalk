.class final Lhrc$4;
.super Ljava/lang/Object;
.source "EAppExceptionTipsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhrc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhim;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Liyv;


# direct methods
.method constructor <init>(Lhim;Landroid/content/Context;Liyv;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lhrc$4;->a:Lhim;

    iput-object p2, p0, Lhrc$4;->b:Landroid/content/Context;

    iput-object p3, p0, Lhrc$4;->c:Liyv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/16 v7, 0x22

    const/4 v1, 0x0

    .line 264
    const/4 v0, 0x0

    .line 265
    .local v0, "tipsView":Landroid/view/View;
    iget-object v2, p0, Lhrc$4;->a:Lhim;

    iget-object v2, v2, Lhim;->h:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 273
    :goto_0
    iget-object v1, p0, Lhrc$4;->c:Liyv;

    if-eqz v1, :cond_0

    .line 274
    iget-object v1, p0, Lhrc$4;->c:Liyv;

    invoke-interface {v1, v0}, Liyv;->onSuccess(Ljava/lang/Object;)V

    .line 276
    :cond_0
    return-void

    .line 267
    :pswitch_0
    iget-object v2, p0, Lhrc$4;->b:Landroid/content/Context;

    iget-object v3, p0, Lhrc$4;->a:Lhim;

    .line 1288
    if-eqz v2, :cond_1

    if-nez v3, :cond_3

    :cond_1
    move-object v0, v1

    .line 268
    :cond_2
    :goto_1
    goto :goto_0

    .line 1291
    :cond_3
    iget-object v1, v3, Lhim;->f:Ljava/util/Map;

    invoke-static {v2, v1}, Lhrc;->a(Landroid/content/Context;Ljava/util/Map;)Landroid/view/View;

    move-result-object v0

    .line 1292
    .end local v0    # "tipsView":Landroid/view/View;
    iget-object v1, v3, Lhim;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1293
    sget v1, Lhdn$h;->tips_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1294
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1295
    iget-object v5, v3, Lhim;->f:Ljava/util/Map;

    invoke-static {v5}, Lhdo;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    .line 1296
    sget v6, Lhdn$k;->dt_microapp_warn_contact_customer_service:I

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1297
    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1298
    invoke-virtual {v4, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1300
    new-instance v6, Lhrc$5;

    invoke-direct {v6, v2, v3}, Lhrc$5;-><init>(Landroid/content/Context;Lhim;)V

    .line 1306
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v4, v6, v2, v3, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1308
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const-string/jumbo v3, "#38adff"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 1309
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-virtual {v4, v2, v3, v5, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1311
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1312
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_1

    .line 270
    .restart local v0    # "tipsView":Landroid/view/View;
    :pswitch_1
    iget-object v2, p0, Lhrc$4;->b:Landroid/content/Context;

    iget-object v3, p0, Lhrc$4;->a:Lhim;

    .line 2343
    if-eqz v2, :cond_4

    if-nez v3, :cond_5

    :cond_4
    move-object v0, v1

    .line 270
    :goto_2
    goto :goto_0

    .line 2346
    :cond_5
    sget v4, Lhdn$i;->app_error_tips_layout:I

    invoke-static {v2, v4, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2347
    .end local v0    # "tipsView":Landroid/view/View;
    if-nez v0, :cond_6

    move-object v0, v1

    .line 2348
    goto :goto_2

    .line 2350
    :cond_6
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2351
    iget-object v1, v3, Lhim;->f:Ljava/util/Map;

    if-eqz v1, :cond_7

    .line 2352
    sget v1, Lhdn$h;->error_desc:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2353
    iget-object v4, v3, Lhim;->f:Ljava/util/Map;

    invoke-static {v4}, Lhdo;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    .line 2354
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2356
    :cond_7
    sget v1, Lhdn$h;->user_confirm_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2357
    iget-object v4, v3, Lhim;->g:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2358
    sget v4, Lhdn$k;->dt_common_i_know:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2363
    :goto_3
    sget v1, Lhdn$h;->user_confirm_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v4, Lhrc$7;

    invoke-direct {v4, v0, v3, v2}, Lhrc$7;-><init>(Landroid/view/View;Lhim;Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 2360
    :cond_8
    sget v4, Lhdn$k;->dt_microapp_warn_contact_provider:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 265
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
