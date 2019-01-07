.class final Lfdp$3;
.super Ljava/lang/Object;
.source "CommentPresenter.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfdp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfdp;


# direct methods
.method constructor <init>(Lfdp;)V
    .locals 0
    .param p1, "this$0"    # Lfdp;

    .prologue
    .line 275
    iput-object p1, p0, Lfdp$3;->a:Lfdp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 8
    .param p1, "s"    # Landroid/text/Editable;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/16 v4, 0x3e8

    .line 288
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, "content":Ljava/lang/String;
    iget-object v3, p0, Lfdp$3;->a:Lfdp;

    .line 1072
    iput-object v0, v3, Lfdp;->j:Ljava/lang/String;

    .line 291
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 292
    .local v2, "len":I
    iget-object v3, p0, Lfdp$3;->a:Lfdp;

    .line 2072
    iget v3, v3, Lfdp;->i:I

    .line 292
    if-le v2, v3, :cond_0

    .line 293
    iget-object v3, p0, Lfdp$3;->a:Lfdp;

    .line 3072
    iput v2, v3, Lfdp;->i:I

    .line 302
    :cond_0
    iget-object v3, p0, Lfdp$3;->a:Lfdp;

    .line 4072
    iput v2, v3, Lfdp;->i:I

    .line 304
    if-le v2, v4, :cond_1

    .line 305
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 306
    iget-object v3, p0, Lfdp$3;->a:Lfdp;

    .line 5072
    iget-object v3, v3, Lfdp;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .line 306
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v1

    .line 307
    .local v1, "editText":Landroid/widget/EditText;
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 308
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 309
    iget-object v3, p0, Lfdp$3;->a:Lfdp;

    .line 6072
    iput v4, v3, Lfdp;->i:I

    .line 312
    .end local v1    # "editText":Landroid/widget/EditText;
    :cond_1
    iget-object v3, p0, Lfdp$3;->a:Lfdp;

    .line 7072
    iget-object v3, v3, Lfdp;->e:Ljava/lang/String;

    .line 312
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 313
    iget-object v3, p0, Lfdp$3;->a:Lfdp;

    .line 8072
    iput-object v0, v3, Lfdp;->e:Ljava/lang/String;

    .line 314
    iget-object v3, p0, Lfdp$3;->a:Lfdp;

    .line 9396
    iget-object v4, v3, Lfdp;->f:Landroid/os/Handler;

    if-nez v4, :cond_2

    .line 9397
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, v3, Lfdp;->f:Landroid/os/Handler;

    .line 9401
    :cond_2
    iget-object v4, v3, Lfdp;->f:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 9404
    iget-object v4, v3, Lfdp;->f:Landroid/os/Handler;

    new-instance v5, Lfdp$7;

    invoke-direct {v5, v3}, Lfdp$7;-><init>(Lfdp;)V

    iput-object v5, v3, Lfdp;->g:Ljava/lang/Runnable;

    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 316
    :cond_3
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 279
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 284
    return-void
.end method
