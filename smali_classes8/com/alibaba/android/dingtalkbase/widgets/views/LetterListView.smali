.class public Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;
.super Landroid/view/View;
.source "LetterListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView$a;
    }
.end annotation


# static fields
.field private static final a:I

.field private static final b:I

.field private static final c:I


# instance fields
.field private d:Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView$a;

.field private e:[Ljava/lang/String;

.field private f:Landroid/graphics/Paint;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Z

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string/jumbo v0, "#40000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->a:I

    .line 21
    const-string/jumbo v0, "#999999"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->b:I

    .line 22
    const-string/jumbo v0, "#3399ff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    const/16 v0, 0x1c

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "\u2606"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "A"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "B"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "C"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "#"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->e:[Ljava/lang/String;

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->i:I

    .line 1055
    sget v0, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->a:I

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->j:I

    .line 1056
    sget v0, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->b:I

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->k:I

    .line 1057
    sget v0, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->c:I

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->l:I

    .line 1059
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->f:Landroid/graphics/Paint;

    .line 1060
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcig$d;->text_size_14:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->m:F

    .line 52
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v7, 0x1

    .line 129
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 130
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 131
    .local v4, "y":F
    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->i:I

    .line 132
    .local v3, "oldChoose":I
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView$a;

    .line 133
    .local v2, "listener":Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView$a;
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v4, v5

    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->e:[Ljava/lang/String;

    array-length v6, v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v1, v5

    .line 135
    .local v1, "c":I
    packed-switch v0, :pswitch_data_0

    .line 162
    :cond_0
    :goto_0
    return v7

    .line 137
    :pswitch_0
    iput-boolean v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->h:Z

    .line 138
    if-eq v3, v1, :cond_0

    if-eqz v2, :cond_0

    .line 139
    if-ltz v1, :cond_0

    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->e:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_0

    .line 140
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->e:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-interface {v2, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView$a;->a(Ljava/lang/String;)V

    .line 141
    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->i:I

    .line 142
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->invalidate()V

    goto :goto_0

    .line 148
    :pswitch_1
    if-eq v3, v1, :cond_0

    if-eqz v2, :cond_0

    .line 149
    if-ltz v1, :cond_0

    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->e:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_0

    .line 150
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->e:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-interface {v2, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView$a;->a(Ljava/lang/String;)V

    .line 151
    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->i:I

    .line 152
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->invalidate()V

    goto :goto_0

    .line 157
    :pswitch_2
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->h:Z

    .line 158
    const/4 v5, -0x1

    iput v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->i:I

    .line 159
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->invalidate()V

    goto :goto_0

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 93
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 94
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->getHeight()I

    move-result v0

    .line 95
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->getWidth()I

    move-result v3

    .line 97
    .local v3, "width":I
    iget-boolean v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->h:Z

    if-eqz v6, :cond_0

    .line 98
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_2

    .line 99
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7, v7, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 100
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 106
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->e:[Ljava/lang/String;

    array-length v6, v6

    if-nez v6, :cond_3

    .line 125
    :cond_1
    return-void

    .line 102
    :cond_2
    iget v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->j:I

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_0

    .line 109
    :cond_3
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->e:[Ljava/lang/String;

    array-length v6, v6

    div-int v2, v0, v6

    .line 110
    .local v2, "singleHeight":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->e:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_1

    .line 111
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->f:Landroid/graphics/Paint;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 112
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->f:Landroid/graphics/Paint;

    iget v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->m:F

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 113
    iget v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->i:I

    if-ne v1, v6, :cond_4

    .line 114
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->f:Landroid/graphics/Paint;

    iget v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->l:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->f:Landroid/graphics/Paint;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 119
    :goto_2
    div-int/lit8 v6, v3, 0x2

    int-to-float v6, v6

    iget-object v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->f:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->e:[Ljava/lang/String;

    aget-object v8, v8, v1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sub-float v4, v6, v7

    .line 121
    .local v4, "xPos":F
    mul-int v6, v2, v1

    mul-int/lit8 v7, v2, 0x25

    div-int/lit8 v7, v7, 0x28

    add-int/2addr v6, v7

    int-to-float v5, v6

    .line 122
    .local v5, "yPos":F
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->e:[Ljava/lang/String;

    aget-object v6, v6, v1

    iget-object v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v4, v5, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 123
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->f:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->reset()V

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 117
    .end local v4    # "xPos":F
    .end local v5    # "yPos":F
    :cond_4
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->f:Landroid/graphics/Paint;

    iget v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->k:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2
.end method

.method public setBgColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->j:I

    .line 81
    return-void
.end method

.method public setBgDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->g:Landroid/graphics/drawable/Drawable;

    .line 77
    return-void
.end method

.method public setLetterColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->k:I

    .line 85
    return-void
.end method

.method public setLetterSelectedColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->l:I

    .line 89
    return-void
.end method

.method public setLetters([Ljava/lang/String;)V
    .locals 0
    .param p1, "letters"    # [Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->e:[Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setOnTouchingLetterChangedListener(Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView$a;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView$a;

    .line 167
    return-void
.end method

.method public setPaintSize(F)V
    .locals 0
    .param p1, "size"    # F

    .prologue
    .line 72
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->m:F

    .line 73
    return-void
.end method

.method public setRightArrays([Ljava/lang/String;)V
    .locals 0
    .param p1, "letters"    # [Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->e:[Ljava/lang/String;

    .line 65
    return-void
.end method
