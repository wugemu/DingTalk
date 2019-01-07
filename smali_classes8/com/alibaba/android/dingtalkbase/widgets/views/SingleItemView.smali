.class public Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;
.super Landroid/widget/LinearLayout;
.source "SingleItemView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView$PositionType;
    }
.end annotation


# static fields
.field private static a:Z

.field private static b:I

.field private static c:F

.field private static d:I

.field private static e:I

.field private static f:I

.field private static g:I

.field private static h:I

.field private static final i:[Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView$PositionType;

.field private static t:F

.field private static u:I

.field private static v:I

.field private static w:I


# instance fields
.field private j:Landroid/widget/RelativeLayout;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/ImageView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/view/View;

.field private s:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/high16 v4, -0x40800000    # -1.0f

    const/4 v3, -0x1

    .line 32
    const/16 v0, 0x10

    invoke-static {v0}, Lcms;->b(I)Z

    move-result v0

    sput-boolean v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->a:Z

    .line 33
    sput v3, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->b:I

    .line 34
    sput v4, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->c:F

    .line 35
    sput v3, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->d:I

    .line 36
    sput v3, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->e:I

    .line 37
    sput v3, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->f:I

    .line 38
    sput v3, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->g:I

    .line 39
    sput v3, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->h:I

    .line 60
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView$PositionType;

    const/4 v1, 0x0

    sget-object v2, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView$PositionType;->TOP:Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView$PositionType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView$PositionType;->MIDDLE:Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView$PositionType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView$PositionType;->BOTTOM:Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView$PositionType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView$PositionType;->SINGLE:Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView$PositionType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->i:[Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView$PositionType;

    .line 384
    sput v4, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->t:F

    .line 385
    sput v3, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->u:I

    .line 386
    sput v3, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->v:I

    .line 387
    sput v3, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->w:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    return-void
.end method

.method private static a()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3

    .prologue
    const/4 v1, -0x2

    .line 238
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 240
    .local v0, "fparams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 241
    const/4 v1, 0x0

    sget v2, Lcig$f;->iv_arrow:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 242
    sget v1, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->g:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 243
    return-object v0
.end method

.method private static a(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcig$d;->common_listview_divider_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->b:I

    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcig$d;->text_size_16:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->c:F

    .line 96
    const/high16 v0, 0x41700000    # 15.0f

    invoke-static {p0, v0}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->d:I

    .line 97
    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {p0, v0}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->e:I

    .line 98
    const/high16 v0, 0x41c80000    # 25.0f

    invoke-static {p0, v0}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->f:I

    .line 99
    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {p0, v0}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->g:I

    .line 100
    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {p0, v0}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->h:I

    .line 101
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 111
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 112
    .local v9, "resource":Landroid/content/res/Resources;
    sget v11, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->b:I

    if-gtz v11, :cond_0

    .line 113
    invoke-static/range {p1 .. p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->a(Landroid/content/Context;)V

    .line 115
    :cond_0
    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->setOrientation(I)V

    .line 116
    new-instance v11, Landroid/view/View;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->r:Landroid/view/View;

    .line 117
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    sget v12, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->b:I

    invoke-direct {v7, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 118
    .local v7, "lparam":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->r:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    new-instance v11, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->j:Landroid/widget/RelativeLayout;

    .line 122
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->j:Landroid/widget/RelativeLayout;

    sget v12, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->e:I

    sget v13, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->d:I

    sget v14, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->e:I

    sget v15, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->d:I

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 123
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .end local v7    # "lparam":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v11, -0x1

    const/4 v12, -0x2

    invoke-direct {v7, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 125
    .restart local v7    # "lparam":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->j:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    new-instance v11, Landroid/view/View;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->s:Landroid/view/View;

    .line 128
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .end local v7    # "lparam":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v11, -0x1

    sget v12, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->b:I

    invoke-direct {v7, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 129
    .restart local v7    # "lparam":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->s:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->j:Landroid/widget/RelativeLayout;

    sget v12, Lcig$e;->ui_common_cell_bg:I

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 132
    sget v11, Lcig$e;->default_divider:I

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 133
    .local v4, "default_divider":Landroid/graphics/drawable/Drawable;
    sget-boolean v11, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->a:Z

    if-eqz v11, :cond_5

    .line 134
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->r:Landroid/view/View;

    invoke-virtual {v11, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 135
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->s:Landroid/view/View;

    invoke-virtual {v11, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .end local v4    # "default_divider":Landroid/graphics/drawable/Drawable;
    :goto_0
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    sget v11, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->f:I

    sget v12, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->f:I

    invoke-direct {v8, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 145
    .local v8, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v11, 0xf

    invoke-virtual {v8, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 146
    const/16 v11, 0x9

    invoke-virtual {v8, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 147
    sget v11, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->e:I

    iput v11, v8, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 148
    new-instance v11, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->k:Landroid/widget/ImageView;

    .line 149
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->k:Landroid/widget/ImageView;

    sget v12, Lcig$f;->itemIcon:I

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setId(I)V

    .line 150
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->j:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->k:Landroid/widget/ImageView;

    invoke-virtual {v11, v12, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v8    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v11, -0x2

    const/4 v12, -0x2

    invoke-direct {v8, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 154
    .restart local v8    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v11, 0xf

    invoke-virtual {v8, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 155
    const/4 v11, 0x1

    sget v12, Lcig$f;->itemIcon:I

    invoke-virtual {v8, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 156
    new-instance v11, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->l:Landroid/widget/TextView;

    .line 157
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->l:Landroid/widget/TextView;

    sget v12, Lcig$f;->itemContent:I

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setId(I)V

    .line 158
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->l:Landroid/widget/TextView;

    const/4 v12, 0x0

    sget v13, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->c:F

    invoke-virtual {v11, v12, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 160
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->l:Landroid/widget/TextView;

    sget v12, Lcig$c;->text_color_dark:I

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5

    .line 162
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->j:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->l:Landroid/widget/TextView;

    invoke-virtual {v11, v12, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v8    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v11, -0x2

    const/4 v12, -0x2

    invoke-direct {v8, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 166
    .restart local v8    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v11, 0xf

    invoke-virtual {v8, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 167
    const/16 v11, 0xb

    invoke-virtual {v8, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 168
    new-instance v11, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->m:Landroid/widget/ImageView;

    .line 169
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->m:Landroid/widget/ImageView;

    sget v12, Lcig$f;->iv_arrow:I

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setId(I)V

    .line 171
    :try_start_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->m:Landroid/widget/ImageView;

    sget v12, Lcig$e;->right_arrow:I

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4

    .line 173
    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->j:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->m:Landroid/widget/ImageView;

    invoke-virtual {v11, v12, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    new-instance v11, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->p:Landroid/widget/ImageView;

    .line 177
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->j:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->p:Landroid/widget/ImageView;

    invoke-static {}, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->a()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->p:Landroid/widget/ImageView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1412
    sget v11, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->w:I

    if-gtz v11, :cond_1

    .line 1413
    invoke-static/range {p1 .. p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->a(Landroid/content/Context;)V

    .line 1414
    sget v11, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->t:F

    const/high16 v12, 0x40400000    # 3.0f

    mul-float/2addr v11, v12

    float-to-int v11, v11

    sput v11, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->w:I

    .line 1416
    :cond_1
    new-instance v11, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1417
    sget v12, Lcig$f;->numberNoticeView:I

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setId(I)V

    .line 1418
    const/16 v12, 0x11

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 1419
    sget v12, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->w:I

    const/4 v13, 0x0

    sget v14, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->w:I

    const/4 v15, 0x0

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1420
    const/4 v12, -0x1

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1421
    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1422
    const/high16 v12, 0x41200000    # 10.0f

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextSize(F)V

    .line 181
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->q:Landroid/widget/TextView;

    .line 182
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->j:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->q:Landroid/widget/TextView;

    invoke-static {}, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->a()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->q:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2395
    sget v11, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->u:I

    if-gtz v11, :cond_2

    .line 2396
    invoke-static/range {p1 .. p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->a(Landroid/content/Context;)V

    .line 2397
    sget v11, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->t:F

    const/high16 v12, 0x40a00000    # 5.0f

    mul-float/2addr v11, v12

    float-to-int v11, v11

    sput v11, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->u:I

    .line 2398
    sget v11, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->t:F

    const/high16 v12, 0x40c00000    # 6.0f

    mul-float/2addr v11, v12

    float-to-int v11, v11

    sput v11, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->v:I

    .line 2400
    :cond_2
    new-instance v11, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2401
    sget v12, Lcig$f;->newBadgeView:I

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setId(I)V

    .line 2402
    const/16 v12, 0x11

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 2403
    sget v12, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->v:I

    const/4 v13, 0x0

    sget v14, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->v:I

    sget v15, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->u:I

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2404
    const/4 v12, -0x1

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2405
    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 2406
    const/high16 v12, 0x41400000    # 12.0f

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2407
    sget v12, Lcig$j;->new_string:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->o:Landroid/widget/TextView;

    .line 188
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->j:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->o:Landroid/widget/TextView;

    invoke-static {}, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->a()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->o:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 192
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v8    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v11, -0x2

    const/4 v12, -0x2

    invoke-direct {v8, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 193
    .restart local v8    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v11, 0xf

    invoke-virtual {v8, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 194
    const/16 v11, 0xb

    invoke-virtual {v8, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 195
    const/4 v11, 0x7

    invoke-virtual {v8, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 196
    const/4 v11, 0x1

    sget v12, Lcig$f;->itemContent:I

    invoke-virtual {v8, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 197
    const/4 v11, 0x0

    sget v12, Lcig$f;->newBadgeView:I

    invoke-virtual {v8, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 198
    sget v11, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->e:I

    iput v11, v8, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 199
    sget v11, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->h:I

    iput v11, v8, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 200
    new-instance v11, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->n:Landroid/widget/TextView;

    .line 201
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->n:Landroid/widget/TextView;

    const/16 v12, 0x15

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 202
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->n:Landroid/widget/TextView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 203
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->n:Landroid/widget/TextView;

    sget-object v12, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 204
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->n:Landroid/widget/TextView;

    sget v12, Lcig$c;->text_color_black:I

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 205
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->n:Landroid/widget/TextView;

    const/4 v12, 0x0

    sget v13, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->c:F

    invoke-virtual {v11, v12, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 206
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->n:Landroid/widget/TextView;

    sget v12, Lcig$f;->txtHint:I

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setId(I)V

    .line 207
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->j:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->n:Landroid/widget/TextView;

    invoke-virtual {v11, v12, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->n:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 211
    if-eqz p2, :cond_4

    .line 212
    sget-object v11, Lcig$l;->SingleItemView:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 215
    .local v2, "a":Landroid/content/res/TypedArray;
    :try_start_3
    sget v11, Lcig$l;->SingleItemView_itemPositionType:I

    const/4 v12, -0x1

    invoke-virtual {v2, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 216
    .local v6, "index":I
    if-ltz v6, :cond_3

    const/4 v11, 0x4

    if-ge v6, v11, :cond_3

    .line 217
    sget-object v11, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->i:[Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView$PositionType;

    aget-object v11, v11, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->setPositionType(Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView$PositionType;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 222
    .end local v6    # "index":I
    :cond_3
    :goto_3
    :try_start_4
    sget v11, Lcig$l;->SingleItemView_itemIconSrc:I

    invoke-virtual {v2, v11}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 223
    .local v5, "drawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->k:Landroid/widget/ImageView;

    invoke-virtual {v11, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 224
    sget v11, Lcig$l;->SingleItemView_itemShowIcon:I

    const/4 v12, 0x1

    invoke-virtual {v2, v11, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 225
    .local v10, "showIcon":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->k:Landroid/widget/ImageView;

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    const/4 v11, 0x0

    :goto_4
    invoke-virtual {v12, v11}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    .line 228
    .end local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v10    # "showIcon":Z
    :goto_5
    :try_start_5
    sget v11, Lcig$l;->SingleItemView_itemContentText:I

    invoke-virtual {v2, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 229
    .local v3, "content":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->l:Landroid/widget/TextView;

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    .line 232
    .end local v3    # "content":Ljava/lang/String;
    :goto_6
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 235
    .end local v2    # "a":Landroid/content/res/TypedArray;
    :cond_4
    return-void

    .line 137
    .end local v8    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v4    # "default_divider":Landroid/graphics/drawable/Drawable;
    :cond_5
    :try_start_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->r:Landroid/view/View;

    invoke-virtual {v11, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 138
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->s:Landroid/view/View;

    invoke-virtual {v11, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .end local v4    # "default_divider":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v11

    goto/16 :goto_0

    .line 225
    .restart local v2    # "a":Landroid/content/res/TypedArray;
    .restart local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v8    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v10    # "showIcon":Z
    :cond_6
    const/16 v11, 0x8

    goto :goto_4

    .end local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v10    # "showIcon":Z
    :catch_1
    move-exception v11

    goto :goto_6

    :catch_2
    move-exception v11

    goto :goto_5

    :catch_3
    move-exception v11

    goto :goto_3

    .end local v2    # "a":Landroid/content/res/TypedArray;
    :catch_4
    move-exception v11

    goto/16 :goto_2

    :catch_5
    move-exception v11

    goto/16 :goto_1
.end method


# virtual methods
.method public getNewBageViewVisibility()I
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->o:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    return v0
.end method

.method public setArrowImageResource(I)V
    .locals 3
    .param p1, "resId"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v2, 0xa

    .line 248
    sget v1, Lcig$f;->iv_arrow:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 249
    .local v0, "ivArrow":Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 250
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 251
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 252
    return-void
.end method

.method public setDotNoticeViewVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 258
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 259
    if-nez p1, :cond_0

    .line 261
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->p:Landroid/widget/ImageView;

    sget v1, Lcig$e;->red_dot_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setHint(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 366
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->n:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->n:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 369
    :cond_0
    return-void
.end method

.method public setHint(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 360
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->n:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->n:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    :cond_0
    return-void
.end method

.method public setHintColor(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 372
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->n:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->n:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 375
    :cond_0
    return-void
.end method

.method public setHintRightDrawable(I)V
    .locals 2
    .param p1, "resId"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 378
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->n:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, p1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 380
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->n:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 382
    :cond_0
    return-void
.end method

.method public setHintViewVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 354
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->n:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->n:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 357
    :cond_0
    return-void
.end method

.method public setItemContent(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 342
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->l:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 345
    :cond_0
    return-void
.end method

.method public setItemContent(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    return-void
.end method

.method public setItemIcon(Ljava/lang/String;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 267
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->k:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 269
    return-void
.end method

.method public setNewBadgeViewVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 281
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->o:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 282
    if-nez p1, :cond_0

    .line 283
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->o:Landroid/widget/TextView;

    sget v1, Lcig$j;->new_string:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 284
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->o:Landroid/widget/TextView;

    sget v1, Lcig$e;->new_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 286
    :cond_0
    return-void
.end method

.method public setNewBageViewText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 293
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->o:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    return-void
.end method

.method public setPositionType(Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView$PositionType;)V
    .locals 4
    .param p1, "type"    # Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView$PositionType;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 321
    const/4 v1, 0x0

    .line 322
    .local v1, "topVisibility":I
    const/4 v0, 0x0

    .line 323
    .local v0, "bottomVisibility":I
    sget-object v2, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView$1;->a:[I

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView$PositionType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 337
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->s:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 338
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->r:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 339
    return-void

    .line 325
    :pswitch_0
    const/16 v0, 0x8

    .line 326
    goto :goto_0

    .line 328
    :pswitch_1
    const/16 v1, 0x8

    .line 329
    goto :goto_0

    .line 331
    :pswitch_2
    const/16 v1, 0x8

    goto :goto_0

    .line 323
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setRightArrow(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 348
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->m:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 351
    :cond_0
    return-void
.end method
