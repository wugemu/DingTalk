.class public Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;
.super Landroid/widget/EditText;
.source "NoteEditText.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText$b;,
        Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field private c:I

.field private d:Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText$a;

.field private e:Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText$b;

.field private f:Landroid/content/Context;

.field private g:F

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;->g:F

    .line 41
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;->f:Landroid/content/Context;

    .line 42
    invoke-virtual {p0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;->g:F

    .line 47
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;->f:Landroid/content/Context;

    .line 48
    invoke-virtual {p0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;->g:F

    .line 53
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;->f:Landroid/content/Context;

    .line 54
    invoke-virtual {p0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 55
    return-void
.end method

.method public static a(Lcqj;)V
    .locals 4
    .param p0, "imageSpan"    # Lcqj;

    .prologue
    .line 145
    if-nez p0, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    invoke-virtual {p0}, Lcqj;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 150
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v3, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 151
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 152
    .local v1, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 153
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method


# virtual methods
.method public getImageCount()I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 136
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    .line 137
    .local v1, "message":Landroid/text/Editable;
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v3

    const-class v4, Lcqj;

    invoke-interface {v1, v2, v3, v4}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcqj;

    .line 138
    .local v0, "list":[Lcqj;
    if-eqz v0, :cond_0

    .line 139
    array-length v2, v0

    .line 141
    :cond_0
    return v2
.end method

.method public getMaximumThumbnailWidth()I
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 304
    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;->c:I

    if-nez v4, :cond_0

    .line 305
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;->f:Landroid/content/Context;

    .line 1318
    const-string/jumbo v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 1319
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1320
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 306
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 307
    .local v3, "screenWidth":I
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 308
    .local v2, "screenHeight":I
    if-le v3, v2, :cond_1

    .end local v2    # "screenHeight":I
    :goto_0
    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;->c:I

    .line 310
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;->f:Landroid/content/Context;

    const/high16 v5, 0x42480000    # 50.0f

    invoke-static {v4, v5}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    mul-int/lit8 v1, v4, 0x2

    .line 311
    .local v1, "padding":I
    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;->c:I

    sub-int/2addr v4, v1

    iput v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;->c:I

    .line 314
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    .end local v1    # "padding":I
    .end local v3    # "screenWidth":I
    :cond_0
    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;->c:I

    return v4

    .restart local v0    # "dm":Landroid/util/DisplayMetrics;
    .restart local v2    # "screenHeight":I
    .restart local v3    # "screenWidth":I
    :cond_1
    move v2, v3

    .line 308
    goto :goto_0
.end method

.method public getPostContent()Ljava/lang/String;
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 188
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    if-nez v5, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-object v2

    .line 194
    :cond_1
    :try_start_0
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    .local v3, "postContentEditable":Landroid/text/Editable;
    :goto_1
    if-eqz v3, :cond_0

    .line 206
    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v5

    const-class v6, Landroid/text/style/CharacterStyle;

    invoke-interface {v3, v4, v5, v6}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/CharacterStyle;

    .line 208
    .local v1, "characterStyles":[Landroid/text/style/CharacterStyle;
    array-length v5, v1

    :goto_2
    if-ge v4, v5, :cond_3

    aget-object v0, v1, v4

    .line 209
    .local v0, "characterStyle":Landroid/text/style/CharacterStyle;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "android.text.style.SuggestionSpan"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 210
    invoke-interface {v3, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 208
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 198
    .end local v0    # "characterStyle":Landroid/text/style/CharacterStyle;
    .end local v1    # "characterStyles":[Landroid/text/style/CharacterStyle;
    .end local v3    # "postContentEditable":Landroid/text/Editable;
    :catch_0
    move-exception v5

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    .restart local v3    # "postContentEditable":Landroid/text/Editable;
    goto :goto_1

    .line 213
    .restart local v1    # "characterStyles":[Landroid/text/style/CharacterStyle;
    :cond_3
    invoke-static {v3}, Lcly;->a(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v2

    .line 215
    .local v2, "content":Ljava/lang/String;
    const-string/jumbo v4, "<p><p>"

    const-string/jumbo v5, "<p>"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 216
    const-string/jumbo v4, "</p></p>"

    const-string/jumbo v5, "</p>"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 217
    const-string/jumbo v4, "<br><br>"

    const-string/jumbo v5, "<br>"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 219
    const-string/jumbo v4, "</strong><strong>"

    const-string/jumbo v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "</em><em>"

    const-string/jumbo v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "</u><u>"

    const-string/jumbo v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "</strike><strike>"

    const-string/jumbo v6, ""

    .line 220
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "</blockquote><blockquote>"

    const-string/jumbo v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 222
    goto/16 :goto_0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 65
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 66
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 67
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText$a;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 71
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onSelectionChanged(II)V
    .locals 0
    .param p1, "selStart"    # I
    .param p2, "selEnd"    # I

    .prologue
    .line 61
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 80
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 82
    .local v2, "pos":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-nez v8, :cond_0

    .line 83
    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;->g:F

    .line 85
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-le v8, v10, :cond_2

    .line 86
    iget-object v8, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;->f:Landroid/content/Context;

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v8, v9}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    .line 87
    .local v4, "scrollThreshold":I
    iget v8, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;->g:F

    sub-float/2addr v8, v2

    int-to-float v9, v4

    cmpl-float v8, v8, v9

    if-gtz v8, :cond_1

    iget v8, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;->g:F

    sub-float v8, v2, v8

    int-to-float v9, v4

    cmpl-float v8, v8, v9

    if-lez v8, :cond_2

    .line 88
    :cond_1
    iput-boolean v10, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;->h:Z

    .line 91
    .end local v4    # "scrollThreshold":I
    :cond_2
    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;->g:F

    .line 94
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-ne v8, v10, :cond_5

    iget-boolean v8, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;->h:Z

    if-nez v8, :cond_5

    move-object v8, p1

    .line 95
    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 96
    .local v0, "layout":Landroid/text/Layout;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v6, v8

    .line 97
    .local v6, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v7, v8

    .line 99
    .local v7, "y":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v8

    add-int/2addr v6, v8

    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v8

    add-int/2addr v7, v8

    .line 101
    if-eqz v0, :cond_3

    .line 102
    invoke-virtual {v0, v7}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v1

    .line 103
    .local v1, "line":I
    int-to-float v8, v6

    invoke-virtual {v0, v1, v8}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    .line 105
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 106
    .local v3, "s":Landroid/text/Spannable;
    if-nez v3, :cond_4

    .line 120
    .end local v0    # "layout":Landroid/text/Layout;
    .end local v1    # "line":I
    .end local v3    # "s":Landroid/text/Spannable;
    .end local v6    # "x":I
    .end local v7    # "y":I
    :cond_3
    :goto_0
    return v11

    .line 109
    .restart local v0    # "layout":Landroid/text/Layout;
    .restart local v1    # "line":I
    .restart local v3    # "s":Landroid/text/Spannable;
    .restart local v6    # "x":I
    .restart local v7    # "y":I
    :cond_4
    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 110
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;->getSelectionStart()I

    move-result v5

    .line 111
    .local v5, "selectionStart":I
    if-ltz v5, :cond_3

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;->getSelectionEnd()I

    move-result v8

    if-lt v8, v5, :cond_3

    .line 112
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;->getSelectionEnd()I

    move-result v8

    invoke-virtual {p0, v5, v8}, Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;->setSelection(II)V

    goto :goto_0

    .line 117
    .end local v0    # "layout":Landroid/text/Layout;
    .end local v1    # "line":I
    .end local v3    # "s":Landroid/text/Spannable;
    .end local v5    # "selectionStart":I
    .end local v6    # "x":I
    .end local v7    # "y":I
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-ne v8, v10, :cond_3

    .line 118
    iput-boolean v11, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;->h:Z

    goto :goto_0
.end method

.method public setOnEditTextImeBackListener(Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText$a;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText$a;

    .line 76
    return-void
.end method

.method public setOnSelectionChangedListener(Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText$b;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText$b;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText$b;

    .line 129
    return-void
.end method
