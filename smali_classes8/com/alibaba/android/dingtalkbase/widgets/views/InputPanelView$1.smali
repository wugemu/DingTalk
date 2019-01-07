.class final Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$1;
.super Ljava/lang/Object;
.source "InputPanelView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 6
    .param p1, "editText"    # Landroid/text/Editable;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 240
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->c(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 241
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->d(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->d(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 242
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->e(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 243
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->a(ZZ)Z

    .line 244
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->f(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 245
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->f(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->setText(Ljava/lang/CharSequence;)V

    .line 267
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$a;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 268
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$a;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$a;->a(Landroid/text/Editable;)V

    .line 270
    :cond_1
    return-void

    :cond_2
    move v2, v4

    .line 241
    goto :goto_0

    .line 247
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->g(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->h(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)Landroid/widget/LinearLayout;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 248
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->h(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 251
    :cond_4
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->d(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 253
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->e(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 254
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 255
    .local v0, "currentTime":J
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->i(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)J

    move-result-wide v2

    sub-long v2, v0, v2

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->j(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_5

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->k(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)J

    move-result-wide v2

    sub-long v2, v0, v2

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->l(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_5

    .line 256
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-static {v2, v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;J)J

    .line 257
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->n(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->m(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 258
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->n(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->m(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)Ljava/lang/Runnable;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->j(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 260
    :cond_5
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-static {v2, v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;J)J

    .line 261
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->n(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->m(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 263
    .end local v0    # "currentTime":J
    :cond_6
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->g(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->h(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)Landroid/widget/LinearLayout;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 264
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->h(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 225
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$a;

    move-result-object v0

    invoke-interface {v0, p1, p2, p4}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$a;->a(Ljava/lang/CharSequence;II)V

    .line 228
    :cond_0
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 232
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->b(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)V

    .line 233
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$a;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$a;->a(Ljava/lang/CharSequence;III)V

    .line 236
    :cond_0
    return-void
.end method
