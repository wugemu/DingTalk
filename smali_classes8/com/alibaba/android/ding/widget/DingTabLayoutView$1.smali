.class final Lcom/alibaba/android/ding/widget/DingTabLayoutView$1;
.super Ljava/lang/Object;
.source "DingTabLayoutView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/widget/DingTabLayoutView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/widget/DingTabLayoutView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/widget/DingTabLayoutView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView$1;->a:Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "editable"    # Landroid/text/Editable;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v2, 0x3e8

    .line 254
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 255
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView$1;->a:Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Laxp$i;->ding_text_num_limit:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 256
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-interface {p1, v2, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 257
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView$1;->a:Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->a(Lcom/alibaba/android/ding/widget/DingTabLayoutView;)Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->setTextKeepState(Ljava/lang/CharSequence;)V

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView$1;->a:Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->b(Lcom/alibaba/android/ding/widget/DingTabLayoutView;)Lcom/alibaba/android/ding/widget/DingTabLayoutView$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView$1;->a:Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->b(Lcom/alibaba/android/ding/widget/DingTabLayoutView;)Lcom/alibaba/android/ding/widget/DingTabLayoutView$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/android/ding/widget/DingTabLayoutView$a;->a()V

    .line 262
    :cond_1
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 246
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 250
    return-void
.end method
