.class public final Lcsu;
.super Landroid/widget/CheckedTextView;
.source "DayView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field public a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

.field b:Lcsm;

.field private c:Ljava/util/Calendar;

.field private d:I

.field private e:I

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Landroid/graphics/Rect;

.field private m:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "day"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    .prologue
    const/16 v3, 0x11

    const/4 v2, 0x4

    const/4 v1, 0x1

    .line 55
    invoke-direct {p0, p1}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcsu;->c:Ljava/util/Calendar;

    .line 38
    const v0, -0x777778

    iput v0, p0, Lcsu;->d:I

    .line 44
    sget-object v0, Lcsm;->a:Lcsm;

    iput-object v0, p0, Lcsu;->b:Lcsm;

    .line 46
    iput-boolean v1, p0, Lcsu;->i:Z

    .line 47
    iput-boolean v1, p0, Lcsu;->j:Z

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcsu;->l:Landroid/graphics/Rect;

    .line 52
    iput v2, p0, Lcsu;->m:I

    .line 57
    const/16 v0, 0xc8

    iput v0, p0, Lcsu;->e:I

    .line 59
    iget v0, p0, Lcsu;->d:I

    invoke-virtual {p0, v0}, Lcsu;->a(I)V

    .line 61
    invoke-virtual {p0, v3}, Lcsu;->setGravity(I)V

    .line 63
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_0

    .line 64
    invoke-virtual {p0, v2}, Lcsu;->setTextAlignment(I)V

    .line 1083
    :cond_0
    iput-object p2, p0, Lcsu;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    .line 1084
    invoke-virtual {p0}, Lcsu;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcsu;->setText(Ljava/lang/CharSequence;)V

    .line 68
    return-void
.end method

.method private static b(I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "color"    # I

    .prologue
    .line 218
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 219
    .local v0, "drawable":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 220
    return-object v0
.end method

.method private c()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 126
    iget-boolean v5, p0, Lcsu;->j:Z

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lcsu;->i:Z

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lcsu;->k:Z

    if-nez v5, :cond_5

    move v5, v6

    :goto_0
    invoke-super {p0, v5}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    .line 127
    iget-boolean v5, p0, Lcsu;->j:Z

    if-eqz v5, :cond_6

    iget-boolean v5, p0, Lcsu;->i:Z

    if-eqz v5, :cond_6

    iget-boolean v5, p0, Lcsu;->k:Z

    if-nez v5, :cond_6

    move v0, v6

    .line 129
    .local v0, "enabled":Z
    :goto_1
    iget v5, p0, Lcsu;->m:I

    invoke-static {v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->a(I)Z

    move-result v3

    .line 130
    .local v3, "showOtherMonths":Z
    iget v5, p0, Lcsu;->m:I

    invoke-static {v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->b(I)Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz v3, :cond_7

    :cond_0
    move v4, v6

    .line 131
    .local v4, "showOutOfRange":Z
    :goto_2
    iget v5, p0, Lcsu;->m:I

    invoke-static {v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->c(I)Z

    move-result v2

    .line 133
    .local v2, "showDecoratedDisabled":Z
    move v1, v0

    .line 135
    .local v1, "shouldBeVisible":Z
    iget-boolean v5, p0, Lcsu;->j:Z

    if-nez v5, :cond_1

    if-eqz v3, :cond_1

    .line 136
    const/4 v1, 0x1

    .line 139
    :cond_1
    iget-boolean v5, p0, Lcsu;->i:Z

    if-nez v5, :cond_2

    if-eqz v4, :cond_2

    .line 140
    iget-boolean v5, p0, Lcsu;->j:Z

    or-int/2addr v1, v5

    .line 143
    :cond_2
    iget-boolean v5, p0, Lcsu;->k:Z

    if-eqz v5, :cond_3

    if-eqz v2, :cond_3

    .line 144
    iget-boolean v5, p0, Lcsu;->j:Z

    if-eqz v5, :cond_8

    iget-boolean v5, p0, Lcsu;->i:Z

    if-eqz v5, :cond_8

    :goto_3
    or-int/2addr v1, v6

    .line 147
    :cond_3
    if-eqz v1, :cond_9

    :goto_4
    invoke-virtual {p0, v7}, Lcsu;->setVisibility(I)V

    .line 149
    if-eqz v1, :cond_4

    .line 150
    invoke-virtual {p0}, Lcsu;->a()V

    .line 152
    :cond_4
    return-void

    .end local v0    # "enabled":Z
    .end local v1    # "shouldBeVisible":Z
    .end local v2    # "showDecoratedDisabled":Z
    .end local v3    # "showOtherMonths":Z
    .end local v4    # "showOutOfRange":Z
    :cond_5
    move v5, v7

    .line 126
    goto :goto_0

    :cond_6
    move v0, v7

    .line 127
    goto :goto_1

    .restart local v0    # "enabled":Z
    .restart local v3    # "showOtherMonths":Z
    :cond_7
    move v4, v7

    .line 130
    goto :goto_2

    .restart local v1    # "shouldBeVisible":Z
    .restart local v2    # "showDecoratedDisabled":Z
    .restart local v4    # "showOutOfRange":Z
    :cond_8
    move v6, v7

    .line 144
    goto :goto_3

    .line 147
    :cond_9
    const/4 v7, 0x4

    goto :goto_4
.end method

.method private d()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const v6, 0x10100a7

    const/16 v8, 0x15

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 195
    iget-object v0, p0, Lcsu;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcsu;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcsu;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 201
    :goto_0
    return-void

    .line 198
    :cond_0
    iget v0, p0, Lcsu;->d:I

    iget v1, p0, Lcsu;->e:I

    iget-object v2, p0, Lcsu;->l:Landroid/graphics/Rect;

    .line 2204
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 2205
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/StateListDrawable;->setExitFadeDuration(I)V

    .line 2206
    new-array v1, v5, [I

    const v4, 0x10100a0

    aput v4, v1, v7

    invoke-static {v0}, Lcsu;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 2207
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v8, :cond_2

    .line 2208
    new-array v1, v5, [I

    aput v6, v1, v7

    .line 2225
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 2226
    const/4 v4, -0x1

    invoke-static {v4}, Lcsu;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 2227
    new-instance v5, Landroid/graphics/drawable/RippleDrawable;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6, v4}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2228
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v8, :cond_1

    .line 2229
    invoke-virtual {v5, v2}, Landroid/graphics/drawable/RippleDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2208
    :cond_1
    invoke-virtual {v3, v1, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 2213
    :goto_1
    new-array v0, v7, [I

    invoke-static {v7}, Lcsu;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 198
    iput-object v3, p0, Lcsu;->h:Landroid/graphics/drawable/Drawable;

    .line 199
    iget-object v0, p0, Lcsu;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcsu;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 2210
    :cond_2
    new-array v1, v5, [I

    aput v6, v1, v7

    invoke-static {v0}, Lcsu;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method


# virtual methods
.method a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 156
    invoke-virtual {p0}, Lcsu;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcsu;->setTextColor(I)V

    .line 160
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcsu;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    .line 157
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Lcsu;->c:Ljava/util/Calendar;

    invoke-static {v0, v1}, Lcog;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcsu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcig$c;->ui_common_theme_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcsu;->j:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcsu;->i:Z

    if-eqz v0, :cond_2

    .line 158
    invoke-virtual {p0}, Lcsu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcig$c;->uidic_global_color_6_1:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 159
    :cond_2
    invoke-virtual {p0}, Lcsu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcig$c;->uidic_global_color_6_2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0
.end method

.method public final a(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 78
    iput p1, p0, Lcsu;->d:I

    .line 79
    invoke-direct {p0}, Lcsu;->d()V

    .line 80
    return-void
.end method

.method protected final a(IZZ)V
    .locals 0
    .param p1, "showOtherDates"    # I
    .param p2, "inRange"    # Z
    .param p3, "inMonth"    # Z

    .prologue
    .line 176
    iput p1, p0, Lcsu;->m:I

    .line 177
    iput-boolean p3, p0, Lcsu;->j:Z

    .line 178
    iput-boolean p2, p0, Lcsu;->i:Z

    .line 179
    invoke-direct {p0}, Lcsu;->c()V

    .line 180
    return-void
.end method

.method final a(Lcse;)V
    .locals 10
    .param p1, "facade"    # Lcse;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 235
    .line 3065
    iget-boolean v5, p1, Lcse;->e:Z

    .line 235
    iput-boolean v5, p0, Lcsu;->k:Z

    .line 236
    invoke-direct {p0}, Lcsu;->c()V

    .line 4057
    iget-object v5, p1, Lcse;->a:Landroid/graphics/drawable/Drawable;

    .line 4115
    if-nez v5, :cond_0

    move-object v5, v6

    move-object v4, p0

    .line 4120
    .end local p0    # "this":Lcsu;
    .local v4, "this":Lcsu;
    :goto_0
    iput-object v5, v4, Lcsu;->f:Landroid/graphics/drawable/Drawable;

    .line 4122
    invoke-virtual {p0}, Lcsu;->invalidate()V

    .line 5053
    iget-object v5, p1, Lcse;->b:Landroid/graphics/drawable/Drawable;

    .line 5104
    if-nez v5, :cond_2

    move-object v5, v6

    move-object v4, p0

    .line 5109
    :goto_1
    iput-object v5, v4, Lcsu;->g:Landroid/graphics/drawable/Drawable;

    .line 5111
    invoke-direct {p0}, Lcsu;->d()V

    .line 6061
    iget-object v5, p1, Lcse;->c:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 242
    .local v3, "spans":Ljava/util/List;, "Ljava/util/List<Lcse$a;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 243
    invoke-virtual {p0}, Lcsu;->b()Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, "label":Ljava/lang/String;
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lcsu;->b()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 245
    .local v0, "formattedLabel":Landroid/text/Spannable;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcse$a;

    .line 246
    .local v2, "span":Lcse$a;
    const/4 v7, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x21

    invoke-interface {v0, v6, v7, v8, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 4118
    .end local v0    # "formattedLabel":Landroid/text/Spannable;
    .end local v1    # "label":Ljava/lang/String;
    .end local v2    # "span":Lcse$a;
    .end local v3    # "spans":Ljava/util/List;, "Ljava/util/List<Lcse$a;>;"
    .end local v4    # "this":Lcsu;
    .restart local p0    # "this":Lcsu;
    :cond_0
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v7

    if-nez v7, :cond_1

    move-object v5, v6

    move-object v4, p0

    .end local p0    # "this":Lcsu;
    .restart local v4    # "this":Lcsu;
    goto :goto_0

    .line 4120
    .end local v4    # "this":Lcsu;
    .restart local p0    # "this":Lcsu;
    :cond_1
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    invoke-virtual {p0}, Lcsu;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v4, p0

    .end local p0    # "this":Lcsu;
    .restart local v4    # "this":Lcsu;
    goto :goto_0

    .line 5107
    :cond_2
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v7

    if-nez v7, :cond_3

    move-object v5, v6

    move-object v4, p0

    goto :goto_1

    .line 5109
    :cond_3
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    invoke-virtual {p0}, Lcsu;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v4, p0

    goto :goto_1

    .line 248
    .restart local v0    # "formattedLabel":Landroid/text/Spannable;
    .restart local v1    # "label":Ljava/lang/String;
    .restart local v3    # "spans":Ljava/util/List;, "Ljava/util/List<Lcse$a;>;"
    :cond_4
    invoke-virtual {p0, v0}, Lcsu;->setText(Ljava/lang/CharSequence;)V

    .line 252
    .end local v0    # "formattedLabel":Landroid/text/Spannable;
    .end local v1    # "label":Ljava/lang/String;
    :goto_3
    return-void

    .line 250
    :cond_5
    invoke-virtual {p0}, Lcsu;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcsu;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method b()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 172
    iget-object v0, p0, Lcsu;->b:Lcsm;

    iget-object v1, p0, Lcsu;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    invoke-interface {v0, v1}, Lcsm;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 185
    iget-object v0, p0, Lcsu;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcsu;->f:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcsu;->l:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 187
    iget-object v0, p0, Lcsu;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcsu;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 188
    iget-object v0, p0, Lcsu;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 190
    :cond_0
    iget-object v0, p0, Lcsu;->h:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcsu;->l:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 191
    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 192
    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 72
    invoke-super/range {p0 .. p5}, Landroid/widget/CheckedTextView;->onLayout(ZIIII)V

    .line 73
    sub-int v1, p4, p2

    sub-int v2, p5, p3

    .line 1255
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1257
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ne v0, v4, :cond_0

    const/4 v0, 0x4

    .line 1258
    :goto_0
    sub-int v4, v2, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    div-int v0, v4, v0

    .line 1260
    if-lt v1, v2, :cond_1

    .line 1261
    iget-object v1, p0, Lcsu;->l:Landroid/graphics/Rect;

    add-int/2addr v3, v0

    invoke-virtual {v1, v0, v5, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 74
    :goto_1
    invoke-direct {p0}, Lcsu;->d()V

    .line 75
    return-void

    .line 1257
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .line 1263
    :cond_1
    iget-object v2, p0, Lcsu;->l:Landroid/graphics/Rect;

    add-int/2addr v3, v0

    invoke-virtual {v2, v5, v0, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1
.end method
