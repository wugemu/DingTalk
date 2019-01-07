.class final Lboy$5;
.super Ljava/lang/Object;
.source "CommentPresenter.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lboy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lboy;


# direct methods
.method constructor <init>(Lboy;)V
    .locals 0
    .param p1, "this$0"    # Lboy;

    .prologue
    .line 297
    iput-object p1, p0, Lboy$5;->a:Lboy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 9
    .param p1, "s"    # Landroid/text/Editable;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v8, 0x0

    const-wide/16 v4, -0x1

    const/16 v7, 0x3e8

    .line 310
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "content":Ljava/lang/String;
    iget-object v3, p0, Lboy$5;->a:Lboy;

    .line 1063
    iput-object v0, v3, Lboy;->j:Ljava/lang/String;

    .line 313
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 314
    .local v2, "len":I
    iget-object v3, p0, Lboy$5;->a:Lboy;

    .line 2063
    iget v3, v3, Lboy;->i:I

    .line 314
    if-le v2, v3, :cond_4

    .line 315
    iget-object v3, p0, Lboy$5;->a:Lboy;

    .line 3063
    iput v2, v3, Lboy;->i:I

    .line 317
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x40

    if-ne v3, v6, :cond_4

    .line 318
    iget-object v6, p0, Lboy$5;->a:Lboy;

    .line 5396
    iget-object v3, v6, Lboy;->k:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    if-nez v3, :cond_3

    .line 4415
    :cond_0
    :goto_0
    iget-object v3, v6, Lboy;->m:Lboz;

    if-nez v3, :cond_1

    .line 4416
    new-instance v3, Lboz;

    iget-object v7, v6, Lboy;->a:Landroid/app/Activity;

    const-string/jumbo v8, "CIRCLE_COMMENT_PRESENTER_CHOOSE_MEMBER"

    invoke-direct {v3, v7, v4, v5, v8}, Lboz;-><init>(Landroid/app/Activity;JLjava/lang/String;)V

    iput-object v3, v6, Lboy;->m:Lboz;

    .line 4418
    :cond_1
    iget-object v3, v6, Lboy;->m:Lboz;

    .line 6057
    iput-wide v4, v3, Lboz;->b:J

    .line 4419
    iget-object v4, v6, Lboy;->m:Lboz;

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v3

    new-instance v5, Lboy$9;

    invoke-direct {v5, v6}, Lboy$9;-><init>(Lboy;)V

    const-class v7, Lcov;

    iget-object v8, v6, Lboy;->a:Landroid/app/Activity;

    invoke-interface {v3, v5, v7, v8}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcov;

    invoke-virtual {v4, v3}, Lboz;->a(Lcov;)V

    .line 4425
    const/4 v3, 0x1

    iput-boolean v3, v6, Lboy;->n:Z

    .line 337
    :cond_2
    :goto_1
    return-void

    .line 5400
    :cond_3
    iget-object v3, v6, Lboy;->k:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->scope:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNScopeObject;

    .line 5401
    if-eqz v3, :cond_0

    .line 5404
    iget-object v3, v3, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNScopeObject;->orgRanges:Ljava/util/List;

    .line 5405
    invoke-static {v3}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 5409
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_0

    .line 323
    :cond_4
    iget-object v3, p0, Lboy$5;->a:Lboy;

    .line 6063
    iput v2, v3, Lboy;->i:I

    .line 325
    if-le v2, v7, :cond_5

    .line 326
    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 327
    iget-object v3, p0, Lboy$5;->a:Lboy;

    .line 7063
    iget-object v3, v3, Lboy;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .line 327
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v1

    .line 328
    .local v1, "editText":Landroid/widget/EditText;
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 329
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 330
    iget-object v3, p0, Lboy$5;->a:Lboy;

    .line 8063
    iput v7, v3, Lboy;->i:I

    .line 333
    .end local v1    # "editText":Landroid/widget/EditText;
    :cond_5
    iget-object v3, p0, Lboy$5;->a:Lboy;

    .line 9063
    iget-object v3, v3, Lboy;->e:Ljava/lang/String;

    .line 333
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 334
    iget-object v3, p0, Lboy$5;->a:Lboy;

    .line 10063
    iput-object v0, v3, Lboy;->e:Ljava/lang/String;

    .line 335
    iget-object v3, p0, Lboy$5;->a:Lboy;

    .line 11429
    iget-object v4, v3, Lboy;->f:Landroid/os/Handler;

    if-nez v4, :cond_6

    .line 11430
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, v3, Lboy;->f:Landroid/os/Handler;

    .line 11434
    :cond_6
    iget-object v4, v3, Lboy;->f:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 11437
    iget-object v4, v3, Lboy;->f:Landroid/os/Handler;

    new-instance v5, Lboy$10;

    invoke-direct {v5, v3}, Lboy$10;-><init>(Lboy;)V

    iput-object v5, v3, Lboy;->g:Ljava/lang/Runnable;

    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 301
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 306
    return-void
.end method
