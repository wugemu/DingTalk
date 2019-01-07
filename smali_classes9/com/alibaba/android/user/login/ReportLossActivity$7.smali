.class final Lcom/alibaba/android/user/login/ReportLossActivity$7;
.super Landroid/os/Handler;
.source "ReportLossActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/login/ReportLossActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/login/ReportLossActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/ReportLossActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/login/ReportLossActivity;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 273
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    .line 274
    .local v8, "data":Landroid/os/Bundle;
    const/4 v12, -0x1

    .line 275
    .local v12, "status":I
    if-eqz v8, :cond_0

    .line 276
    const-string/jumbo v1, "status"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 278
    :cond_0
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 372
    :cond_1
    :goto_0
    return-void

    .line 280
    :sswitch_0
    const/16 v1, 0x64

    if-ne v1, v12, :cond_2

    .line 281
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/ReportLossActivity;->j(Lcom/alibaba/android/user/login/ReportLossActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 282
    :cond_2
    const/16 v1, 0x65

    if-ne v1, v12, :cond_3

    .line 283
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    const-string/jumbo v2, "x1"

    invoke-virtual {v8, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v3, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Lcom/alibaba/android/user/login/ReportLossActivity;->e:I

    .line 284
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    const-string/jumbo v2, "y1"

    invoke-virtual {v8, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v3, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Lcom/alibaba/android/user/login/ReportLossActivity;->f:I

    .line 285
    const-string/jumbo v1, "x2"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    add-int v14, v1, v2

    .line 286
    .local v14, "x2":I
    const-string/jumbo v1, "y2"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    add-int v15, v1, v2

    .line 287
    .local v15, "y2":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    iget v2, v2, Lcom/alibaba/android/user/login/ReportLossActivity;->e:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    iget v3, v3, Lcom/alibaba/android/user/login/ReportLossActivity;->f:I

    invoke-static {v1, v2, v3, v14, v15}, Lcom/alibaba/android/user/login/ReportLossActivity;->a(Lcom/alibaba/android/user/login/ReportLossActivity;IIII)V

    goto/16 :goto_0

    .line 288
    .end local v14    # "x2":I
    .end local v15    # "y2":I
    :cond_3
    const/16 v1, 0x68

    if-ne v1, v12, :cond_4

    .line 290
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    iget v2, v1, Lcom/alibaba/android/user/login/ReportLossActivity;->e:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v3, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Lcom/alibaba/android/user/login/ReportLossActivity;->e:I

    .line 291
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    iget v2, v1, Lcom/alibaba/android/user/login/ReportLossActivity;->f:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v3, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Lcom/alibaba/android/user/login/ReportLossActivity;->f:I

    .line 292
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    iget v2, v2, Lcom/alibaba/android/user/login/ReportLossActivity;->e:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    iget v3, v3, Lcom/alibaba/android/user/login/ReportLossActivity;->f:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    .line 293
    invoke-static {v4}, Lcom/alibaba/android/user/login/ReportLossActivity;->k(Lcom/alibaba/android/user/login/ReportLossActivity;)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    invoke-static {v5}, Lcom/alibaba/android/user/login/ReportLossActivity;->l(Lcom/alibaba/android/user/login/ReportLossActivity;)I

    move-result v5

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {v5, v6}, Lcms;->c(Landroid/content/Context;F)I

    move-result v5

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {v5, v6}, Lcms;->c(Landroid/content/Context;F)I

    move-result v5

    .line 292
    invoke-static {v1, v2, v3, v4, v5}, Lcom/alibaba/android/user/login/ReportLossActivity;->a(Lcom/alibaba/android/user/login/ReportLossActivity;IIII)V

    .line 294
    const-string/jumbo v1, "token"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 295
    .local v13, "token":Ljava/lang/String;
    const-string/jumbo v1, "sig"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 296
    .local v11, "signature":Ljava/lang/String;
    const-string/jumbo v1, "sessionId"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 297
    .local v10, "sessionId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    new-instance v2, Lcfw;

    invoke-direct {v2}, Lcfw;-><init>()V

    invoke-static {v1, v2}, Lcom/alibaba/android/user/login/ReportLossActivity;->a(Lcom/alibaba/android/user/login/ReportLossActivity;Lcfw;)Lcfw;

    .line 298
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/ReportLossActivity;->d(Lcom/alibaba/android/user/login/ReportLossActivity;)Lcfw;

    move-result-object v1

    iput-object v10, v1, Lcfw;->d:Ljava/lang/String;

    .line 299
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/ReportLossActivity;->d(Lcom/alibaba/android/user/login/ReportLossActivity;)Lcfw;

    move-result-object v1

    iput-object v11, v1, Lcfw;->e:Ljava/lang/String;

    .line 300
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/ReportLossActivity;->d(Lcom/alibaba/android/user/login/ReportLossActivity;)Lcfw;

    move-result-object v1

    iput-object v13, v1, Lcfw;->c:Ljava/lang/String;

    .line 301
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/ReportLossActivity;->d(Lcom/alibaba/android/user/login/ReportLossActivity;)Lcfw;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcfw;->f:Ljava/lang/String;

    goto/16 :goto_0

    .line 303
    .end local v10    # "sessionId":Ljava/lang/String;
    .end local v11    # "signature":Ljava/lang/String;
    .end local v13    # "token":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/ReportLossActivity;->j(Lcom/alibaba/android/user/login/ReportLossActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 304
    const-string/jumbo v1, "errorCode"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 305
    .local v9, "errorCode":I
    const/16 v1, 0x4b7

    if-ne v1, v9, :cond_5

    .line 306
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    sget v3, Lezg$l;->network_error:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/user/login/ReportLossActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/ReportLossActivity;->m(Lcom/alibaba/android/user/login/ReportLossActivity;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 309
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/ReportLossActivity;->n(Lcom/alibaba/android/user/login/ReportLossActivity;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 313
    .end local v9    # "errorCode":I
    :sswitch_1
    const/16 v1, 0x64

    if-ne v1, v12, :cond_6

    .line 314
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/ReportLossActivity;->h(Lcom/alibaba/android/user/login/ReportLossActivity;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 316
    :cond_6
    const/16 v1, 0x66

    if-eq v1, v12, :cond_7

    const/16 v1, 0x68

    if-ne v1, v12, :cond_9

    .line 317
    :cond_7
    const-string/jumbo v1, "token"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 318
    .restart local v13    # "token":Ljava/lang/String;
    const-string/jumbo v1, "sig"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 319
    .restart local v11    # "signature":Ljava/lang/String;
    const-string/jumbo v1, "sessionId"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 320
    .restart local v10    # "sessionId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    new-instance v2, Lcfw;

    invoke-direct {v2}, Lcfw;-><init>()V

    invoke-static {v1, v2}, Lcom/alibaba/android/user/login/ReportLossActivity;->a(Lcom/alibaba/android/user/login/ReportLossActivity;Lcfw;)Lcfw;

    .line 321
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/ReportLossActivity;->d(Lcom/alibaba/android/user/login/ReportLossActivity;)Lcfw;

    move-result-object v1

    iput-object v10, v1, Lcfw;->d:Ljava/lang/String;

    .line 322
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/ReportLossActivity;->d(Lcom/alibaba/android/user/login/ReportLossActivity;)Lcfw;

    move-result-object v1

    iput-object v11, v1, Lcfw;->e:Ljava/lang/String;

    .line 323
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/ReportLossActivity;->d(Lcom/alibaba/android/user/login/ReportLossActivity;)Lcfw;

    move-result-object v1

    iput-object v13, v1, Lcfw;->c:Ljava/lang/String;

    .line 324
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/ReportLossActivity;->d(Lcom/alibaba/android/user/login/ReportLossActivity;)Lcfw;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcfw;->f:Ljava/lang/String;

    .line 327
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/ReportLossActivity;->o(Lcom/alibaba/android/user/login/ReportLossActivity;)V

    .line 328
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/ReportLossActivity;->b(Lcom/alibaba/android/user/login/ReportLossActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/ReportLossActivity;->c(Lcom/alibaba/android/user/login/ReportLossActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 329
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/ReportLossActivity;->e(Lcom/alibaba/android/user/login/ReportLossActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_0

    .line 331
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/ReportLossActivity;->e(Lcom/alibaba/android/user/login/ReportLossActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_0

    .line 333
    .end local v10    # "sessionId":Ljava/lang/String;
    .end local v11    # "signature":Ljava/lang/String;
    .end local v13    # "token":Ljava/lang/String;
    :cond_9
    const/16 v1, 0x67

    if-ne v1, v12, :cond_a

    .line 334
    sget v1, Lezg$l;->dt_user_report_loss_slide_too_fast:I

    invoke-static {v1}, Lcms;->a(I)V

    .line 335
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/ReportLossActivity;->p(Lcom/alibaba/android/user/login/ReportLossActivity;)V

    .line 336
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    const-string/jumbo v2, "x1"

    invoke-virtual {v8, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v3, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Lcom/alibaba/android/user/login/ReportLossActivity;->e:I

    .line 337
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    const-string/jumbo v2, "y1"

    invoke-virtual {v8, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v3, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Lcom/alibaba/android/user/login/ReportLossActivity;->f:I

    .line 338
    const-string/jumbo v1, "x2"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    add-int v14, v1, v2

    .line 339
    .restart local v14    # "x2":I
    const-string/jumbo v1, "y2"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    add-int v15, v1, v2

    .line 340
    .restart local v15    # "y2":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    iget v2, v2, Lcom/alibaba/android/user/login/ReportLossActivity;->e:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    iget v3, v3, Lcom/alibaba/android/user/login/ReportLossActivity;->f:I

    invoke-static {v1, v2, v3, v14, v15}, Lcom/alibaba/android/user/login/ReportLossActivity;->a(Lcom/alibaba/android/user/login/ReportLossActivity;IIII)V

    goto/16 :goto_0

    .line 343
    .end local v14    # "x2":I
    .end local v15    # "y2":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/ReportLossActivity;->j(Lcom/alibaba/android/user/login/ReportLossActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 344
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/ReportLossActivity;->r(Lcom/alibaba/android/user/login/ReportLossActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/login/ReportLossActivity;->q(Lcom/alibaba/android/user/login/ReportLossActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 345
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/ReportLossActivity;->r(Lcom/alibaba/android/user/login/ReportLossActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/login/ReportLossActivity;->f(Lcom/alibaba/android/user/login/ReportLossActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 346
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/ReportLossActivity;->r(Lcom/alibaba/android/user/login/ReportLossActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/login/ReportLossActivity;->h(Lcom/alibaba/android/user/login/ReportLossActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 347
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/ReportLossActivity;->p(Lcom/alibaba/android/user/login/ReportLossActivity;)V

    .line 348
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/ReportLossActivity;->m(Lcom/alibaba/android/user/login/ReportLossActivity;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 349
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/ReportLossActivity;->s(Lcom/alibaba/android/user/login/ReportLossActivity;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 350
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/ReportLossActivity;->n(Lcom/alibaba/android/user/login/ReportLossActivity;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 354
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/ReportLossActivity;->k(Lcom/alibaba/android/user/login/ReportLossActivity;)I

    move-result v1

    if-nez v1, :cond_b

    .line 355
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/login/ReportLossActivity;->m(Lcom/alibaba/android/user/login/ReportLossActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {v1, v2}, Lcom/alibaba/android/user/login/ReportLossActivity;->a(Lcom/alibaba/android/user/login/ReportLossActivity;I)I

    .line 357
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/ReportLossActivity;->e(Lcom/alibaba/android/user/login/ReportLossActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 358
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/ReportLossActivity;->n(Lcom/alibaba/android/user/login/ReportLossActivity;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 359
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/ReportLossActivity;->s(Lcom/alibaba/android/user/login/ReportLossActivity;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 360
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/ReportLossActivity;->i(Lcom/alibaba/android/user/login/ReportLossActivity;)Lcom/taobao/wireless/security/sdk/nocaptcha/INoCaptchaComponent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 361
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/ReportLossActivity;->i(Lcom/alibaba/android/user/login/ReportLossActivity;)Lcom/taobao/wireless/security/sdk/nocaptcha/INoCaptchaComponent;

    move-result-object v1

    invoke-static {}, Lcpy;->a()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/alibaba/android/user/login/ReportLossActivity;

    .line 362
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/login/ReportLossActivity;->k(Lcom/alibaba/android/user/login/ReportLossActivity;)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    invoke-static {v5}, Lcom/alibaba/android/user/login/ReportLossActivity;->l(Lcom/alibaba/android/user/login/ReportLossActivity;)I

    move-result v5

    sub-int/2addr v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    iget-object v7, v7, Lcom/alibaba/android/user/login/ReportLossActivity;->g:Landroid/os/Handler;

    .line 361
    invoke-interface/range {v1 .. v7}, Lcom/taobao/wireless/security/sdk/nocaptcha/INoCaptchaComponent;->initNoCaptcha(Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Handler;)V

    goto/16 :goto_0

    .line 367
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/alibaba/android/user/login/ReportLossActivity;->d:Z

    .line 368
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/user/login/ReportLossActivity$7;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/ReportLossActivity;->o(Lcom/alibaba/android/user/login/ReportLossActivity;)V

    goto/16 :goto_0

    .line 278
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x2710 -> :sswitch_2
        0x2711 -> :sswitch_3
    .end sparse-switch
.end method
