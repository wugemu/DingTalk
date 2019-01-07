.class final Lcom/alibaba/android/ding/widget/DingTabLayoutView$5;
.super Ljava/lang/Object;
.source "DingTabLayoutView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/widget/DingTabLayoutView;->a(ZZLjava/lang/CharSequence;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/CharSequence;

.field final synthetic c:Z

.field final synthetic d:Lcom/alibaba/android/ding/widget/DingTabLayoutView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/widget/DingTabLayoutView;ZLjava/lang/CharSequence;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView$5;->d:Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    iput-boolean p2, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView$5;->a:Z

    iput-object p3, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView$5;->b:Ljava/lang/CharSequence;

    iput-boolean p4, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView$5;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 337
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView$5;->d:Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView$5;->d:Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lbjo;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 338
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView$5;->d:Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    invoke-static {v2}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->e(Lcom/alibaba/android/ding/widget/DingTabLayoutView;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 339
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView$5;->d:Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    invoke-static {v2}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->a(Lcom/alibaba/android/ding/widget/DingTabLayoutView;)Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->setVisibility(I)V

    .line 340
    iget-boolean v2, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView$5;->a:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView$5;->b:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    .line 341
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView$5;->d:Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    invoke-static {v2}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->a(Lcom/alibaba/android/ding/widget/DingTabLayoutView;)Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView$5;->b:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->setText(Ljava/lang/CharSequence;)V

    .line 343
    :cond_0
    iget-boolean v2, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView$5;->c:Z

    if-eqz v2, :cond_1

    .line 344
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView$5;->d:Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    invoke-static {v2}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->a(Lcom/alibaba/android/ding/widget/DingTabLayoutView;)Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 345
    .local v0, "sequence":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 346
    check-cast v1, Landroid/text/Spannable;

    .line 347
    .local v1, "spanText":Landroid/text/Spannable;
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 350
    .end local v0    # "sequence":Ljava/lang/CharSequence;
    .end local v1    # "spanText":Landroid/text/Spannable;
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView$5;->d:Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    invoke-static {v2}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->c(Lcom/alibaba/android/ding/widget/DingTabLayoutView;)Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->a()V

    .line 351
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView$5;->d:Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->e()V

    .line 352
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView$5;->d:Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->b()V

    .line 353
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView$5;->d:Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    invoke-static {v2}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->f(Lcom/alibaba/android/ding/widget/DingTabLayoutView;)V

    .line 354
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView$5;->d:Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    invoke-static {v2}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->b(Lcom/alibaba/android/ding/widget/DingTabLayoutView;)Lcom/alibaba/android/ding/widget/DingTabLayoutView$a;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 355
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView$5;->d:Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    invoke-static {v2}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->b(Lcom/alibaba/android/ding/widget/DingTabLayoutView;)Lcom/alibaba/android/ding/widget/DingTabLayoutView$a;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/android/ding/widget/DingTabLayoutView$a;->d()V

    .line 358
    :cond_2
    return-void
.end method
