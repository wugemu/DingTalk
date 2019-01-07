.class public Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView;
.super Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconTextView;
.source "LaiwangSpanFixTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView$a;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field private d:Landroid/view/View$OnClickListener;

.field private e:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconTextView;-><init>(Landroid/content/Context;)V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView;->b:Z

    .line 77
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView;->a()V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView;->b:Z

    .line 72
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView;->a()V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView;->b:Z

    .line 67
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView;->a()V

    .line 68
    return-void
.end method

.method private a(Landroid/text/SpannableStringBuilder;II)Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView$a;
    .locals 12
    .param p1, "builder"    # Landroid/text/SpannableStringBuilder;
    .param p2, "widthMeasureSpec"    # I
    .param p3, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v11, 0x0

    const/4 v8, 0x0

    .line 176
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    const-class v7, Ljava/lang/Object;

    invoke-virtual {p1, v8, v6, v7}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 177
    .local v3, "spans":[Ljava/lang/Object;
    new-instance v5, Ljava/util/ArrayList;

    array-length v6, v3

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 178
    .local v5, "spansWithSpacesBefore":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v4, Ljava/util/ArrayList;

    array-length v6, v3

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 180
    .local v4, "spansWithSpacesAfter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    array-length v9, v3

    move v7, v8

    :goto_0
    if-ge v7, v9, :cond_2

    aget-object v0, v3, v7

    .line 181
    .local v0, "span":Ljava/lang/Object;
    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 182
    .local v2, "spanStart":I
    add-int/lit8 v6, v2, -0x1

    invoke-static {p1, v6}, Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView;->a(Ljava/lang/CharSequence;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 183
    const-string/jumbo v6, " "

    invoke-virtual {p1, v2, v6}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 184
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_0
    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 188
    .local v1, "spanEnd":I
    invoke-static {p1, v1}, Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView;->a(Ljava/lang/CharSequence;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 189
    const-string/jumbo v6, " "

    invoke-virtual {p1, v1, v6}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 190
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    :cond_1
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView;->a(Ljava/lang/CharSequence;II)V

    .line 2042
    new-instance v6, Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView$a;

    const/4 v10, 0x1

    invoke-direct {v6, v10, v5, v4}, Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView$a;-><init>(ZLjava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    .end local v0    # "span":Ljava/lang/Object;
    .end local v1    # "spanEnd":I
    .end local v2    # "spanStart":I
    :goto_1
    return-object v6

    .line 180
    .restart local v0    # "span":Ljava/lang/Object;
    .restart local v1    # "spanEnd":I
    .restart local v2    # "spanStart":I
    :catch_0
    move-exception v6

    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_0

    .line 2046
    .end local v0    # "span":Ljava/lang/Object;
    .end local v1    # "spanEnd":I
    .end local v2    # "spanStart":I
    :cond_2
    new-instance v6, Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView$a;

    invoke-direct {v6, v8, v11, v11}, Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView$a;-><init>(ZLjava/util/List;Ljava/util/List;)V

    goto :goto_1
.end method

.method private a()V
    .locals 1

    .prologue
    .line 88
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView;->d:Landroid/view/View$OnClickListener;

    .line 100
    return-void
.end method

.method private a(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "fallbackText":Ljava/lang/String;
    invoke-direct {p0, v0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView;->a(Ljava/lang/CharSequence;II)V

    .line 255
    return-void
.end method

.method private a(IILandroid/text/SpannableStringBuilder;Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView$a;)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I
    .param p3, "builder"    # Landroid/text/SpannableStringBuilder;
    .param p4, "result"    # Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView$a;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 222
    iget-object v5, p4, Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView$a;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 223
    .local v2, "span":Ljava/lang/Object;
    invoke-virtual {p3, v2}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 224
    .local v3, "spanEnd":I
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p3, v3, v6}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 226
    :try_start_0
    invoke-direct {p0, p3, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView;->a(Ljava/lang/CharSequence;II)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 228
    :catch_0
    move-exception v6

    const-string/jumbo v6, " "

    invoke-virtual {p3, v3, v6}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 232
    .end local v2    # "span":Ljava/lang/Object;
    .end local v3    # "spanEnd":I
    :cond_0
    const/4 v0, 0x1

    .line 233
    .local v0, "needReset":Z
    iget-object v5, p4, Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView$a;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 234
    .restart local v2    # "span":Ljava/lang/Object;
    invoke-virtual {p3, v2}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 235
    .local v4, "spanStart":I
    add-int/lit8 v6, v4, -0x1

    invoke-virtual {p3, v6, v4}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 237
    :try_start_1
    invoke-direct {p0, p3, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView;->a(Ljava/lang/CharSequence;II)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 238
    const/4 v0, 0x0

    goto :goto_1

    .line 240
    :catch_1
    move-exception v6

    const/4 v0, 0x1

    .line 241
    add-int/lit8 v1, v4, -0x1

    .line 242
    .local v1, "newSpanStart":I
    const-string/jumbo v6, " "

    invoke-virtual {p3, v1, v6}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 246
    .end local v1    # "newSpanStart":I
    .end local v2    # "span":Ljava/lang/Object;
    .end local v4    # "spanStart":I
    :cond_1
    if-eqz v0, :cond_2

    .line 247
    invoke-virtual {p0, p3}, Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    :cond_2
    return-void
.end method

.method private a(Ljava/lang/CharSequence;II)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "widthMeasureSpec"    # I
    .param p3, "heightMeasureSpec"    # I

    .prologue
    .line 216
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    invoke-super {p0, p2, p3}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconTextView;->onMeasure(II)V

    .line 218
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView;->b:Z

    return v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView;->b:Z

    return v0
.end method

.method private static a(Ljava/lang/CharSequence;I)Z
    .locals 3
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "where"    # I

    .prologue
    const/4 v0, 0x1

    .line 204
    if-nez p0, :cond_1

    .line 212
    :cond_0
    :goto_0
    return v0

    .line 208
    :cond_1
    if-ltz p1, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 212
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView;->e:Landroid/view/View$OnClickListener;

    return-object v0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 105
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconTextView;->onMeasure(II)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1154
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 1150
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1151
    instance-of v1, v0, Landroid/text/Spanned;

    if-eqz v1, :cond_1

    .line 1152
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1164
    invoke-direct {p0, v1, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView;->a(Landroid/text/SpannableStringBuilder;II)Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView$a;

    move-result-object v0

    .line 1166
    iget-boolean v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView$a;->a:Z

    if-eqz v2, :cond_0

    .line 1167
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView;->a(IILandroid/text/SpannableStringBuilder;Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView$a;)V

    goto :goto_0

    .line 1169
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView;->a(II)V

    goto :goto_0

    .line 1155
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView;->a(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 119
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 121
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    invoke-interface {v4, p0, v1, p1}, Landroid/text/method/MovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :cond_0
    :goto_0
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView;->a:Z

    .line 126
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 127
    .local v0, "ret":Z
    iput-boolean v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView;->a:Z

    .line 128
    if-eqz v0, :cond_1

    move v1, v2

    :goto_1
    return v1

    :cond_1
    move v1, v3

    goto :goto_1

    .end local v0    # "ret":Z
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView;->e:Landroid/view/View$OnClickListener;

    .line 114
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView;->d:Landroid/view/View$OnClickListener;

    invoke-super {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .prologue
    .line 260
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
