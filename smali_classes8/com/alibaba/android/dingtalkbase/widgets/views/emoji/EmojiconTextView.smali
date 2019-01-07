.class public Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconTextView;
.super Landroid/support/v7/widget/AppCompatTextView;
.source "EmojiconTextView.java"


# instance fields
.field private a:Z

.field protected c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconTextView;->a:Z

    .line 1038
    if-nez p2, :cond_0

    .line 1039
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconTextView;->getLineHeight()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconTextView;->c:I

    .line 1046
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconTextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    return-void

    .line 1041
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcig$l;->Emojicon:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1042
    sget v1, Lcig$l;->Emojicon_emojiconSize:I

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconTextView;->getLineHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconTextView;->c:I

    .line 1043
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method


# virtual methods
.method public setEmojiconSize(I)V
    .locals 0
    .param p1, "pixels"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconTextView;->c:I

    .line 71
    return-void
.end method

.method public setEmotionEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconTextView;->a:Z

    .line 78
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 51
    if-nez p1, :cond_0

    .line 52
    const/4 v2, 0x0

    invoke-super {p0, v2, p2}, Landroid/support/v7/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 64
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-boolean v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconTextView;->a:Z

    if-eqz v2, :cond_1

    .line 57
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconTextView;->getTextSize()F

    move-result v3

    invoke-static {v2, v3}, Lcms;->a(Landroid/content/Context;F)F

    move-result v1

    .line 58
    .local v1, "dpSize":F
    invoke-static {}, Lcok;->a()Lcok;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconTextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, p1, v1}, Lcok;->a(Landroid/content/Context;Ljava/lang/CharSequence;F)Landroid/text/SpannableString;

    move-result-object v0

    .line 62
    .end local v1    # "dpSize":F
    .local v0, "builder":Landroid/text/SpannableString;
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconTextView;->c:I

    invoke-static {v2, v0, v3}, Lcsy;->a(Landroid/content/Context;Landroid/text/Spannable;I)V

    .line 63
    invoke-super {p0, v0, p2}, Landroid/support/v7/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_0

    .line 60
    .end local v0    # "builder":Landroid/text/SpannableString;
    :cond_1
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .restart local v0    # "builder":Landroid/text/SpannableString;
    goto :goto_1
.end method
