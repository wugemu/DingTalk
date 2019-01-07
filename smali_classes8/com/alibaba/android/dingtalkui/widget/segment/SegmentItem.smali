.class final Lcom/alibaba/android/dingtalkui/widget/segment/SegmentItem;
.super Lcom/alibaba/android/dingtalkui/widget/text/font/DtContentTextView;
.source "SegmentItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkui/widget/segment/SegmentItem$ViewType;
    }
.end annotation


# static fields
.field private static final b:I

.field private static final c:I

.field private static final d:I

.field private static final e:I

.field private static final f:I


# instance fields
.field private a:I

.field private g:Landroid/graphics/Paint;

.field private h:Landroid/graphics/Paint;

.field private i:Landroid/graphics/Path;

.field private j:Landroid/graphics/RectF;

.field private k:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    sget v0, Lecj$b;->ui_common_theme_bg_color:I

    invoke-static {v0}, Leda;->b(I)I

    move-result v0

    sput v0, Lcom/alibaba/android/dingtalkui/widget/segment/SegmentItem;->b:I

    .line 47
    sget v0, Lecj$b;->ui_common_theme_bg_color_dark_overlay_10:I

    invoke-static {v0}, Leda;->b(I)I

    move-result v0

    sput v0, Lcom/alibaba/android/dingtalkui/widget/segment/SegmentItem;->c:I

    .line 48
    sget v0, Lecj$b;->ui_common_content_bg_color:I

    invoke-static {v0}, Leda;->b(I)I

    move-result v0

    sput v0, Lcom/alibaba/android/dingtalkui/widget/segment/SegmentItem;->d:I

    .line 49
    sget v0, Lecj$c;->dp1:I

    invoke-static {v0}, Leda;->d(I)I

    move-result v0

    sput v0, Lcom/alibaba/android/dingtalkui/widget/segment/SegmentItem;->e:I

    .line 50
    sget v0, Lecj$c;->dp3:I

    invoke-static {v0}, Leda;->d(I)I

    move-result v0

    sput v0, Lcom/alibaba/android/dingtalkui/widget/segment/SegmentItem;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    const/4 v3, 0x3

    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 59
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkui/widget/text/font/DtContentTextView;-><init>(Landroid/content/Context;)V

    .line 44
    iput v7, p0, Lcom/alibaba/android/dingtalkui/widget/segment/SegmentItem;->a:I

    .line 60
    iput p2, p0, Lcom/alibaba/android/dingtalkui/widget/segment/SegmentItem;->a:I

    .line 1065
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/widget/segment/SegmentItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$c;->dp12:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 1066
    invoke-virtual {p0, v0, v6, v0, v6}, Lcom/alibaba/android/dingtalkui/widget/segment/SegmentItem;->setPadding(IIII)V

    .line 1067
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/widget/segment/SegmentItem;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1068
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/widget/segment/SegmentItem;->setGravity(I)V

    .line 1080
    new-array v1, v3, [[I

    .line 1081
    new-array v0, v7, [I

    const v2, 0x10100a1

    aput v2, v0, v6

    aput-object v0, v1, v6

    .line 1082
    new-array v0, v7, [I

    const v2, 0x10100a7

    aput v2, v0, v6

    aput-object v0, v1, v7

    .line 1083
    new-array v0, v6, [I

    aput-object v0, v1, v8

    .line 1085
    new-array v0, v3, [I

    sget v2, Lcom/alibaba/android/dingtalkui/widget/segment/SegmentItem;->d:I

    aput v2, v0, v6

    sget v2, Lcom/alibaba/android/dingtalkui/widget/segment/SegmentItem;->d:I

    aput v2, v0, v7

    sget v2, Lcom/alibaba/android/dingtalkui/widget/segment/SegmentItem;->b:I

    aput v2, v0, v8

    .line 1086
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 1087
    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkui/widget/segment/SegmentItem;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1089
    sget v0, Lcom/alibaba/android/dingtalkui/widget/segment/SegmentItem;->f:I

    int-to-float v2, v0

    .line 1091
    iget v0, p0, Lcom/alibaba/android/dingtalkui/widget/segment/SegmentItem;->a:I

    packed-switch v0, :pswitch_data_0

    .line 1100
    :pswitch_0
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 1104
    :goto_0
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1105
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 1106
    sget v3, Lcom/alibaba/android/dingtalkui/widget/segment/SegmentItem;->b:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1107
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1108
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 1109
    sget v4, Lcom/alibaba/android/dingtalkui/widget/segment/SegmentItem;->c:I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1110
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1111
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 1112
    sget v0, Lcom/alibaba/android/dingtalkui/widget/segment/SegmentItem;->d:I

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1114
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v0, v5, :cond_0

    .line 1115
    new-array v0, v7, [[I

    .line 1116
    new-array v3, v6, [I

    aput-object v3, v0, v6

    .line 1117
    new-array v3, v7, [I

    sget v5, Lcom/alibaba/android/dingtalkui/widget/segment/SegmentItem;->c:I

    aput v5, v3, v6

    .line 1118
    new-instance v5, Landroid/content/res/ColorStateList;

    invoke-direct {v5, v0, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 1120
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 1121
    aget-object v3, v1, v6

    invoke-virtual {v0, v3, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1122
    aget-object v1, v1, v8

    invoke-virtual {v0, v1, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1124
    new-instance v1, Landroid/graphics/drawable/RippleDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v5, v0, v2}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1125
    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkui/widget/segment/SegmentItem;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1071
    :goto_1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/widget/segment/SegmentItem;->g:Landroid/graphics/Paint;

    .line 1072
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/widget/segment/SegmentItem;->h:Landroid/graphics/Paint;

    .line 1073
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/widget/segment/SegmentItem;->i:Landroid/graphics/Path;

    .line 1074
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/widget/segment/SegmentItem;->j:Landroid/graphics/RectF;

    .line 1075
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/widget/segment/SegmentItem;->k:Landroid/graphics/RectF;

    .line 62
    return-void

    .line 1093
    :pswitch_1
    const/16 v0, 0x8

    new-array v0, v0, [F

    aput v2, v0, v6

    aput v2, v0, v7

    aput v4, v0, v8

    aput v4, v0, v3

    const/4 v3, 0x4

    aput v4, v0, v3

    const/4 v3, 0x5

    aput v4, v0, v3

    const/4 v3, 0x6

    aput v2, v0, v3

    const/4 v3, 0x7

    aput v2, v0, v3

    goto/16 :goto_0

    .line 1096
    :pswitch_2
    const/16 v0, 0x8

    new-array v0, v0, [F

    aput v4, v0, v6

    aput v4, v0, v7

    aput v2, v0, v8

    aput v2, v0, v3

    const/4 v3, 0x4

    aput v2, v0, v3

    const/4 v3, 0x5

    aput v2, v0, v3

    const/4 v2, 0x6

    aput v4, v0, v2

    const/4 v2, 0x7

    aput v4, v0, v2

    goto/16 :goto_0

    .line 1127
    :cond_0
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 1128
    aget-object v5, v1, v6

    invoke-virtual {v0, v5, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1129
    aget-object v2, v1, v7

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1130
    aget-object v1, v1, v8

    invoke-virtual {v0, v1, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1131
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/widget/segment/SegmentItem;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 1091
    .line 1100
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 136
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkui/widget/text/font/DtContentTextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 137
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/widget/segment/SegmentItem;->getWidth()I

    move-result v9

    int-to-float v8, v9

    .line 138
    .local v8, "width":F
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/widget/segment/SegmentItem;->getHeight()I

    move-result v9

    int-to-float v3, v9

    .line 140
    .local v3, "height":F
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/widget/segment/SegmentItem;->g:Landroid/graphics/Paint;

    .line 141
    .local v1, "bgPaint":Landroid/graphics/Paint;
    iget-object v7, p0, Lcom/alibaba/android/dingtalkui/widget/segment/SegmentItem;->h:Landroid/graphics/Paint;

    .line 142
    .local v7, "strokePaint":Landroid/graphics/Paint;
    iget-object v4, p0, Lcom/alibaba/android/dingtalkui/widget/segment/SegmentItem;->i:Landroid/graphics/Path;

    .line 143
    .local v4, "path":Landroid/graphics/Path;
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/widget/segment/SegmentItem;->k:Landroid/graphics/RectF;

    .line 145
    .local v0, "arcAssistant":Landroid/graphics/RectF;
    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 146
    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 147
    sget v9, Lcom/alibaba/android/dingtalkui/widget/segment/SegmentItem;->b:I

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 148
    sget v9, Lcom/alibaba/android/dingtalkui/widget/segment/SegmentItem;->e:I

    int-to-float v9, v9

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 150
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/widget/segment/SegmentItem;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lecj$c;->_ui_private_control_segment_corner_radius:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 152
    .local v5, "rxy":I
    mul-int/lit8 v9, v5, 0x2

    int-to-float v6, v9

    .line 158
    .local v6, "rxyTimes2":F
    sget v9, Lcom/alibaba/android/dingtalkui/widget/segment/SegmentItem;->e:I

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float v2, v9, v10

    .line 160
    .local v2, "halfStrokeWidth":F
    iget v9, p0, Lcom/alibaba/android/dingtalkui/widget/segment/SegmentItem;->a:I

    packed-switch v9, :pswitch_data_0

    .line 197
    :pswitch_0
    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 198
    invoke-virtual {v4, v8, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 199
    const/4 v9, 0x0

    invoke-virtual {v4, v9, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 200
    invoke-virtual {v4, v2, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 201
    invoke-virtual {v4, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 202
    sub-float v9, v3, v2

    invoke-virtual {v4, v2, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 203
    sub-float v9, v3, v2

    invoke-virtual {v4, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 205
    invoke-virtual {p1, v4, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 209
    :goto_0
    return-void

    .line 163
    :pswitch_1
    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 164
    invoke-virtual {v4, v8, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 165
    int-to-float v9, v5

    sub-float/2addr v9, v2

    invoke-virtual {v4, v9, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 167
    add-float v9, v6, v2

    add-float v10, v6, v2

    invoke-virtual {v0, v2, v2, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 168
    const/high16 v9, 0x43870000    # 270.0f

    const/high16 v10, -0x3d4c0000    # -90.0f

    invoke-virtual {v4, v0, v9, v10}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 169
    int-to-float v9, v5

    sub-float v9, v3, v9

    sub-float/2addr v9, v2

    invoke-virtual {v4, v2, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 171
    sub-float v9, v3, v6

    sub-float/2addr v9, v2

    add-float v10, v6, v2

    sub-float v11, v3, v2

    invoke-virtual {v0, v2, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 172
    const/high16 v9, 0x43340000    # 180.0f

    const/high16 v10, -0x3d4c0000    # -90.0f

    invoke-virtual {v4, v0, v9, v10}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 173
    sub-float v9, v3, v2

    invoke-virtual {v4, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 175
    invoke-virtual {p1, v4, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 180
    :pswitch_2
    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 181
    const/4 v9, 0x0

    invoke-virtual {v4, v9, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 182
    int-to-float v9, v5

    sub-float v9, v8, v9

    sub-float/2addr v9, v2

    invoke-virtual {v4, v9, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 183
    sub-float v9, v8, v6

    sub-float/2addr v9, v2

    sub-float v10, v8, v2

    add-float v11, v6, v2

    invoke-virtual {v0, v9, v2, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 184
    const/high16 v9, 0x43870000    # 270.0f

    const/high16 v10, 0x42b40000    # 90.0f

    invoke-virtual {v4, v0, v9, v10}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 185
    sub-float v9, v8, v2

    sub-float v10, v3, v6

    sub-float/2addr v10, v2

    invoke-virtual {v4, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 186
    sub-float v9, v8, v6

    sub-float/2addr v9, v2

    sub-float v10, v3, v6

    sub-float/2addr v10, v2

    sub-float v11, v8, v2

    sub-float v12, v3, v2

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 187
    const/4 v9, 0x0

    const/high16 v10, 0x42b40000    # 90.0f

    invoke-virtual {v4, v0, v9, v10}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 188
    const/4 v9, 0x0

    sub-float v10, v3, v2

    invoke-virtual {v4, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 189
    sub-float v9, v3, v2

    invoke-virtual {v4, v2, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 190
    invoke-virtual {v4, v2, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 192
    invoke-virtual {p1, v4, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 213
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkui/widget/text/font/DtContentTextView;->setEnabled(Z)V

    .line 214
    if-nez p1, :cond_0

    .line 215
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/widget/segment/SegmentItem;->setAlpha(F)V

    .line 217
    :cond_0
    return-void
.end method
