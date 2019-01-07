.class public Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;
.super Landroid/widget/EditText;
.source "EmojiconEditText.java"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->a:I

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    invoke-direct {p0, p2}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->a(Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    invoke-direct {p0, p2}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->a(Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcig$l;->Emojicon:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 64
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcig$l;->Emojicon_emojiconSize:I

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->getLineHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->a:I

    .line 65
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 66
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->setText(Ljava/lang/CharSequence;)V

    .line 67
    return-void
.end method


# virtual methods
.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "lengthBefore"    # I
    .param p4, "lengthAfter"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->a:I

    invoke-static {v0, v1, v2}, Lcsy;->a(Landroid/content/Context;Landroid/text/Spannable;I)V

    .line 72
    return-void
.end method

.method public setEmojiconSize(I)V
    .locals 0
    .param p1, "pixels"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->a:I

    .line 79
    return-void
.end method
