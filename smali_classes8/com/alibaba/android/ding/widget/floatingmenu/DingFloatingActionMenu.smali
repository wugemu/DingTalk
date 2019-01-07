.class public Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;
.super Landroid/view/ViewGroup;
.source "DingFloatingActionMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$a;
    }
.end annotation


# instance fields
.field private A:I

.field private B:I

.field private C:Z

.field private D:I

.field private E:I

.field private F:Z

.field private G:I

.field private H:I

.field private I:I

.field private J:I

.field private K:I

.field private L:I

.field private M:I

.field private N:I

.field private O:I

.field private P:I

.field private Q:I

.field private R:Z

.field private S:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$a;

.field private T:Z

.field private U:Landroid/animation/AnimatorSet;

.field private V:Landroid/animation/AnimatorSet;

.field private W:Landroid/view/animation/Animation;

.field public a:Z

.field private aa:Landroid/view/animation/Animation;

.field private ab:Landroid/view/animation/Interpolator;

.field private ac:Landroid/view/animation/Interpolator;

.field private ad:I

.field private b:Lcom/alibaba/android/ding/widget/OvalBgAnimationView;

.field private c:Landroid/widget/ImageView;

.field private d:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

.field private e:I

.field private f:I

.field private g:I

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:I

.field private j:I

.field private k:I

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:Landroid/content/res/ColorStateList;

.field private w:F

.field private x:I

.field private y:Z

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 116
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->T:Z

    .line 94
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->U:Landroid/animation/AnimatorSet;

    .line 95
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->V:Landroid/animation/AnimatorSet;

    .line 117
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 122
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->T:Z

    .line 94
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->U:Landroid/animation/AnimatorSet;

    .line 95
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->V:Landroid/animation/AnimatorSet;

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 124
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;)Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->d:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 128
    sget-object v5, Laxp$k;->DingFloatingActionMenu:[I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p1, p2, v5, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 130
    .local v0, "attr":Landroid/content/res/TypedArray;
    sget v5, Laxp$k;->DingFloatingActionMenu_menu_fab_size:I

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->e:I

    .line 132
    sget v5, Laxp$k;->DingFloatingActionMenu_menu_iconFontSize:I

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Laxp$d;->ding_fab_icon_size:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v6, v7}, Lcms;->c(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->f:I

    .line 133
    sget v5, Laxp$k;->DingFloatingActionMenu_menu_iconFontColor:I

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Laxp$c;->ui_common_content_bg_color:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->g:I

    .line 134
    sget v5, Laxp$k;->DingFloatingActionMenu_menu_iconFontResId:I

    sget v6, Laxp$i;->icon_add:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 135
    .local v3, "iconFontResId":I
    if-lez v3, :cond_0

    .line 136
    new-instance v1, Lecw;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->g:I

    invoke-direct {v1, v5, v6}, Lecw;-><init>(Ljava/lang/String;I)V

    .line 137
    .local v1, "dtIconFontDrawable":Lecw;
    iget v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->f:I

    .line 1070
    iput v5, v1, Lecw;->a:I

    .line 138
    iget v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->f:I

    .line 1079
    iput v5, v1, Lecw;->b:I

    .line 139
    iput-object v1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->h:Landroid/graphics/drawable/Drawable;

    .line 142
    .end local v1    # "dtIconFontDrawable":Lecw;
    :cond_0
    sget v5, Laxp$k;->DingFloatingActionMenu_menu_buttonSpacing:I

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->i:I

    .line 144
    sget v5, Laxp$k;->DingFloatingActionMenu_menu_fab_label:I

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 145
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->l:Z

    .line 146
    sget v5, Laxp$k;->DingFloatingActionMenu_menu_fab_label:I

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->m:Ljava/lang/String;

    .line 152
    :goto_0
    sget v5, Laxp$k;->DingFloatingActionMenu_menu_labels_position:I

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->n:I

    .line 153
    sget v5, Laxp$k;->DingFloatingActionMenu_menu_labels_margin:I

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->o:I

    .line 154
    sget v6, Laxp$k;->DingFloatingActionMenu_menu_labels_showAnimation:I

    iget v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->n:I

    if-nez v5, :cond_5

    sget v5, Laxp$a;->ding_fab_slide_in_from_right:I

    :goto_1
    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->p:I

    .line 156
    sget v6, Laxp$k;->DingFloatingActionMenu_menu_labels_hideAnimation:I

    iget v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->n:I

    if-nez v5, :cond_6

    sget v5, Laxp$a;->ding_fab_slide_out_to_right:I

    :goto_2
    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->q:I

    .line 158
    sget v5, Laxp$k;->DingFloatingActionMenu_menu_labels_paddingTop:I

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->r:I

    .line 159
    sget v5, Laxp$k;->DingFloatingActionMenu_menu_labels_paddingRight:I

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->s:I

    .line 160
    sget v5, Laxp$k;->DingFloatingActionMenu_menu_labels_paddingBottom:I

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->t:I

    .line 161
    sget v5, Laxp$k;->DingFloatingActionMenu_menu_labels_paddingLeft:I

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->u:I

    .line 162
    sget v5, Laxp$k;->DingFloatingActionMenu_menu_labels_textColor:I

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->v:Landroid/content/res/ColorStateList;

    .line 163
    iget-object v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->v:Landroid/content/res/ColorStateList;

    if-nez v5, :cond_1

    .line 164
    const/4 v5, -0x1

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->v:Landroid/content/res/ColorStateList;

    .line 166
    :cond_1
    sget v5, Laxp$k;->DingFloatingActionMenu_menu_labels_textSize:I

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Laxp$d;->ding_fab_label_text:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->w:F

    .line 167
    sget v5, Laxp$k;->DingFloatingActionMenu_menu_labels_cornerRadius:I

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Laxp$d;->ding_fab_label_corner_radius:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->x:I

    .line 168
    sget v5, Laxp$k;->DingFloatingActionMenu_menu_labels_showShadow:I

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->y:Z

    .line 169
    sget v5, Laxp$k;->DingFloatingActionMenu_menu_labels_colorNormal:I

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x106000d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->z:I

    .line 170
    sget v5, Laxp$k;->DingFloatingActionMenu_menu_labels_colorPressed:I

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x106000d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->A:I

    .line 171
    sget v5, Laxp$k;->DingFloatingActionMenu_menu_labels_colorRipple:I

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x106000d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->B:I

    .line 172
    sget v5, Laxp$k;->DingFloatingActionMenu_menu_labels_singleLine:I

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->C:Z

    .line 173
    sget v5, Laxp$k;->DingFloatingActionMenu_menu_labels_maxLines:I

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->D:I

    .line 174
    sget v5, Laxp$k;->DingFloatingActionMenu_menu_labels_ellipsize:I

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->E:I

    .line 176
    sget v5, Laxp$k;->DingFloatingActionMenu_menu_showShadow:I

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->F:Z

    .line 177
    sget v5, Laxp$k;->DingFloatingActionMenu_menu_shadowColor:I

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Laxp$c;->ding_fab_shadow_color:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->G:I

    .line 178
    sget v5, Laxp$k;->DingFloatingActionMenu_menu_shadowRadius:I

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->H:I

    .line 179
    sget v5, Laxp$k;->DingFloatingActionMenu_menu_shadowXOffset:I

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->I:I

    .line 180
    sget v5, Laxp$k;->DingFloatingActionMenu_menu_shadowYOffset:I

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->J:I

    .line 182
    sget v5, Laxp$k;->DingFloatingActionMenu_menu_close_colorNormal:I

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Laxp$c;->ding_fab_menu_color_blue_normal:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->K:I

    .line 183
    sget v5, Laxp$k;->DingFloatingActionMenu_menu_close_colorPressed:I

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Laxp$c;->ding_fab_menu_color_blue_pressed:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->L:I

    .line 184
    sget v5, Laxp$k;->DingFloatingActionMenu_menu_close_colorRipple:I

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Laxp$c;->ding_fab_menu_color_blue_ripple:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->M:I

    .line 185
    sget v5, Laxp$k;->DingFloatingActionMenu_menu_open_colorNormal:I

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Laxp$c;->ding_fab_menu_color_yellow_normal:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->N:I

    .line 186
    sget v5, Laxp$k;->DingFloatingActionMenu_menu_open_colorPressed:I

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Laxp$c;->ding_fab_menu_color_yellow_pressed:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->O:I

    .line 187
    sget v5, Laxp$k;->DingFloatingActionMenu_menu_open_colorRipple:I

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Laxp$c;->ding_fab_menu_color_yellow_ripple:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->P:I

    .line 189
    sget v5, Laxp$k;->DingFloatingActionMenu_menu_openDirection:I

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->Q:I

    .line 191
    sget v5, Laxp$k;->DingFloatingActionMenu_menu_animationDelayPerItem:I

    const/16 v6, 0x32

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->ad:I

    .line 193
    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->ab:Landroid/view/animation/Interpolator;

    .line 194
    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->ac:Landroid/view/animation/Interpolator;

    .line 1210
    new-instance v5, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->d:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    .line 1212
    iget-object v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->d:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    iget-boolean v6, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->F:Z

    invoke-virtual {v5, v6}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->setShowShadow(Z)V

    .line 1213
    iget-boolean v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->F:Z

    if-eqz v5, :cond_2

    .line 1214
    iget-object v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->d:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    iget v6, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->H:I

    invoke-virtual {v5, v6}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->setShadowRadius(I)V

    .line 1215
    iget-object v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->d:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    iget v6, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->I:I

    invoke-virtual {v5, v6}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->setShadowXOffset(I)V

    .line 1216
    iget-object v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->d:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    iget v6, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->J:I

    invoke-virtual {v5, v6}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->setShadowYOffset(I)V

    .line 1218
    :cond_2
    iget-object v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->d:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    iget v6, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->K:I

    iget v7, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->L:I

    iget v8, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->M:I

    invoke-virtual {v5, v6, v7, v8}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->a(III)V

    .line 1219
    iget-object v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->d:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    iget v6, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->G:I

    invoke-virtual {v5, v6}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->setShadowColor(I)V

    .line 1220
    iget-object v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->d:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    iget v6, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->e:I

    invoke-virtual {v5, v6}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->setFabSize(I)V

    .line 1221
    iget-object v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->d:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    invoke-virtual {v5}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->a()V

    .line 1222
    iget-object v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->d:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    sget v6, Laxp$f;->ding_menu_create_ding:I

    invoke-virtual {v5, v6}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->setId(I)V

    .line 1223
    iget-object v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->m:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1224
    iget-object v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->d:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    iget-object v6, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->m:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->setLabelText(Ljava/lang/String;)V

    .line 1227
    :cond_3
    new-instance v5, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->c:Landroid/widget/ImageView;

    .line 1228
    iget-object v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->c:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1230
    iget-object v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->d:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    invoke-super {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1231
    iget-object v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->c:Landroid/widget/ImageView;

    invoke-virtual {p0, v5}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->addView(Landroid/view/View;)V

    .line 1238
    new-instance v5, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$1;

    invoke-direct {v5, p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$1;-><init>(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;)V

    .line 1255
    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    invoke-static {v6}, Landroid/animation/ObjectAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 1256
    invoke-virtual {v6, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1257
    new-instance v7, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$2;

    invoke-direct {v7, p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$2;-><init>(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1281
    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_1

    invoke-static {v7}, Landroid/animation/ObjectAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 1282
    invoke-virtual {v7, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1283
    new-instance v5, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$3;

    invoke-direct {v5, p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$3;-><init>(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;)V

    invoke-virtual {v7, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1307
    iget-object v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->U:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1308
    iget-object v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->V:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1310
    iget-object v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->U:Landroid/animation/AnimatorSet;

    iget-object v6, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->ab:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1311
    iget-object v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->V:Landroid/animation/AnimatorSet;

    iget-object v6, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->ac:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1313
    iget-object v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->U:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0x12c

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1314
    iget-object v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->V:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0x12c

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 198
    sget v5, Laxp$k;->DingFloatingActionMenu_menu_fab_show_animation:I

    sget v6, Laxp$a;->ding_fab_scale_up:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 199
    .local v4, "showAnimationResId":I
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->W:Landroid/view/animation/Animation;

    .line 200
    iget-object v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->d:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    iget-object v6, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->W:Landroid/view/animation/Animation;

    invoke-virtual {v5, v6}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 202
    sget v5, Laxp$k;->DingFloatingActionMenu_menu_fab_hide_animation:I

    sget v6, Laxp$a;->ding_fab_scale_down:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 203
    .local v2, "hideAnimationResId":I
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->aa:Landroid/view/animation/Animation;

    .line 204
    iget-object v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->d:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    iget-object v6, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->aa:Landroid/view/animation/Animation;

    invoke-virtual {v5, v6}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->setHideAnimation(Landroid/view/animation/Animation;)V

    .line 206
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 207
    return-void

    .line 148
    .end local v2    # "hideAnimationResId":I
    .end local v4    # "showAnimationResId":I
    :cond_4
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->l:Z

    .line 149
    const-string/jumbo v5, ""

    iput-object v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->m:Ljava/lang/String;

    goto/16 :goto_0

    .line 154
    :cond_5
    sget v5, Laxp$a;->ding_fab_slide_in_from_left:I

    goto/16 :goto_1

    .line 156
    :cond_6
    sget v5, Laxp$a;->ding_fab_slide_out_to_left:I

    goto/16 :goto_2

    .line 1255
    .line 1281
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method static synthetic a(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;Z)V
    .locals 10
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;
    .param p1, "x1"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 31
    .line 7611
    iget-boolean v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->a:Z

    if-nez v0, :cond_3

    .line 7612
    iget-boolean v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->T:Z

    if-eqz v0, :cond_0

    .line 7613
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->V:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 7614
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->U:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 7619
    :cond_0
    iput-boolean v8, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->R:Z

    .line 7620
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    move v2, v1

    :goto_0
    if-ltz v3, :cond_1

    .line 7621
    invoke-virtual {p0, v3}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 7622
    instance-of v4, v0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_4

    .line 7623
    add-int/lit8 v1, v1, 0x1

    .line 7625
    check-cast v0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    .line 7626
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v4

    new-instance v5, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$5;

    invoke-direct {v5, p0, v0, v8}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$5;-><init>(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;Z)V

    int-to-long v6, v2

    invoke-virtual {v4, v5, v6, v7}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 7647
    iget v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->ad:I

    add-int/2addr v0, v2

    move v9, v1

    move v1, v0

    move v0, v9

    .line 7620
    :goto_1
    add-int/lit8 v2, v3, -0x1

    move v3, v2

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 7651
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->S:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$a;

    if-eqz v0, :cond_2

    .line 7652
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->S:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$a;

    invoke-interface {v0, v8}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$a;->a(Z)V

    .line 7655
    :cond_2
    invoke-direct {p0, v8}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->b(Z)V

    .line 7657
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v2, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$6;

    invoke-direct {v2, p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$6;-><init>(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;)V

    add-int/lit8 v1, v1, 0x1

    int-to-long v4, v1

    iget v1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->ad:I

    int-to-long v6, v1

    mul-long/2addr v4, v6

    invoke-virtual {v0, v2, v4, v5}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 7663
    :goto_2
    return-void

    .line 7664
    :cond_3
    invoke-direct {p0, v1}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->b(Z)V

    goto :goto_2

    :cond_4
    move v0, v1

    move v1, v2

    goto :goto_1
.end method

.method static synthetic b(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    .prologue
    .line 31
    iget v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->N:I

    return v0
.end method

.method private b(Z)V
    .locals 4
    .param p1, "animate"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 727
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->b:Lcom/alibaba/android/ding/widget/OvalBgAnimationView;

    if-nez v0, :cond_1

    .line 5101
    :cond_0
    :goto_0
    return-void

    .line 730
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->b:Lcom/alibaba/android/ding/widget/OvalBgAnimationView;

    .line 5062
    if-eqz p1, :cond_4

    .line 5063
    iget-object v1, v0, Lcom/alibaba/android/ding/widget/OvalBgAnimationView;->b:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_2

    .line 5064
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ObjectAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/ding/widget/OvalBgAnimationView;->b:Landroid/animation/ValueAnimator;

    .line 5065
    iget-object v1, v0, Lcom/alibaba/android/ding/widget/OvalBgAnimationView;->b:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/alibaba/android/ding/widget/OvalBgAnimationView$1;

    invoke-direct {v2, v0}, Lcom/alibaba/android/ding/widget/OvalBgAnimationView$1;-><init>(Lcom/alibaba/android/ding/widget/OvalBgAnimationView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5072
    iget-object v1, v0, Lcom/alibaba/android/ding/widget/OvalBgAnimationView;->b:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/alibaba/android/ding/widget/OvalBgAnimationView$2;

    invoke-direct {v2, v0}, Lcom/alibaba/android/ding/widget/OvalBgAnimationView$2;-><init>(Lcom/alibaba/android/ding/widget/OvalBgAnimationView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5094
    :cond_2
    iget-object v1, v0, Lcom/alibaba/android/ding/widget/OvalBgAnimationView;->c:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/alibaba/android/ding/widget/OvalBgAnimationView;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5095
    iget-object v1, v0, Lcom/alibaba/android/ding/widget/OvalBgAnimationView;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 5097
    :cond_3
    iget-object v1, v0, Lcom/alibaba/android/ding/widget/OvalBgAnimationView;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5100
    invoke-virtual {v0, v3}, Lcom/alibaba/android/ding/widget/OvalBgAnimationView;->setVisibility(I)V

    .line 5101
    iget-object v0, v0, Lcom/alibaba/android/ding/widget/OvalBgAnimationView;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 5103
    :cond_4
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lcom/alibaba/android/ding/widget/OvalBgAnimationView;->a:F

    .line 5104
    invoke-virtual {v0, v3}, Lcom/alibaba/android/ding/widget/OvalBgAnimationView;->setVisibility(I)V

    goto :goto_0

    .line 5064
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic b(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->a:Z

    return p1
.end method

.method static synthetic c(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    .prologue
    .line 31
    iget v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->O:I

    return v0
.end method

.method private c(Z)V
    .locals 3
    .param p1, "animate"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 734
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->b:Lcom/alibaba/android/ding/widget/OvalBgAnimationView;

    if-nez v0, :cond_1

    .line 5148
    :cond_0
    :goto_0
    return-void

    .line 737
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->b:Lcom/alibaba/android/ding/widget/OvalBgAnimationView;

    .line 5109
    if-eqz p1, :cond_4

    .line 5110
    iget-object v1, v0, Lcom/alibaba/android/ding/widget/OvalBgAnimationView;->c:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_2

    .line 5111
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ObjectAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/ding/widget/OvalBgAnimationView;->c:Landroid/animation/ValueAnimator;

    .line 5112
    iget-object v1, v0, Lcom/alibaba/android/ding/widget/OvalBgAnimationView;->c:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/alibaba/android/ding/widget/OvalBgAnimationView$3;

    invoke-direct {v2, v0}, Lcom/alibaba/android/ding/widget/OvalBgAnimationView$3;-><init>(Lcom/alibaba/android/ding/widget/OvalBgAnimationView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5119
    iget-object v1, v0, Lcom/alibaba/android/ding/widget/OvalBgAnimationView;->c:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/alibaba/android/ding/widget/OvalBgAnimationView$4;

    invoke-direct {v2, v0}, Lcom/alibaba/android/ding/widget/OvalBgAnimationView$4;-><init>(Lcom/alibaba/android/ding/widget/OvalBgAnimationView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5141
    :cond_2
    iget-object v1, v0, Lcom/alibaba/android/ding/widget/OvalBgAnimationView;->b:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/alibaba/android/ding/widget/OvalBgAnimationView;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5142
    iget-object v1, v0, Lcom/alibaba/android/ding/widget/OvalBgAnimationView;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 5144
    :cond_3
    iget-object v1, v0, Lcom/alibaba/android/ding/widget/OvalBgAnimationView;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5147
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/OvalBgAnimationView;->setVisibility(I)V

    .line 5148
    iget-object v0, v0, Lcom/alibaba/android/ding/widget/OvalBgAnimationView;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 5150
    :cond_4
    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/android/ding/widget/OvalBgAnimationView;->a:F

    .line 5151
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/OvalBgAnimationView;->setVisibility(I)V

    goto :goto_0

    .line 5111
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method static synthetic d(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    .prologue
    .line 31
    iget v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->P:I

    return v0
.end method

.method static synthetic e(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    .prologue
    .line 31
    iget v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->K:I

    return v0
.end method

.method static synthetic f(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    .prologue
    .line 31
    iget v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->L:I

    return v0
.end method

.method static synthetic g(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    .prologue
    .line 31
    iget v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->M:I

    return v0
.end method

.method static synthetic h(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;)Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->S:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$a;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->a:Z

    return v0
.end method

.method static synthetic j(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->R:Z

    return v0
.end method

.method private setLabelEllipsize(Lcom/alibaba/android/ding/widget/floatingmenu/Label;)V
    .locals 1
    .param p1, "label"    # Lcom/alibaba/android/ding/widget/floatingmenu/Label;

    .prologue
    .line 556
    iget v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->E:I

    packed-switch v0, :pswitch_data_0

    .line 572
    :goto_0
    return-void

    .line 558
    :pswitch_0
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    .line 561
    :pswitch_1
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    .line 564
    :pswitch_2
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    .line 567
    :pswitch_3
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    .line 556
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public final a(Z)V
    .locals 12
    .param p1, "animate"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 669
    iget-boolean v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->a:Z

    if-eqz v5, :cond_4

    .line 670
    iget-boolean v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->T:Z

    if-eqz v5, :cond_0

    .line 671
    iget-object v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->V:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 672
    iget-object v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->U:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    .line 675
    :cond_0
    const/4 v2, 0x0

    .line 676
    .local v2, "delay":I
    const/4 v1, 0x0

    .line 677
    .local v1, "counter":I
    iput-boolean v7, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->R:Z

    .line 678
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 679
    invoke-virtual {p0, v4}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 680
    .local v0, "child":Landroid/view/View;
    instance-of v5, v0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_1

    .line 681
    add-int/lit8 v1, v1, 0x1

    move-object v3, v0

    .line 683
    check-cast v3, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    .line 684
    .local v3, "fab":Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v5

    new-instance v6, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$7;

    invoke-direct {v6, p0, v3, p1}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$7;-><init>(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;Z)V

    int-to-long v8, v2

    invoke-virtual {v5, v6, v8, v9}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 705
    iget v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->ad:I

    add-int/2addr v2, v5

    .line 678
    .end local v3    # "fab":Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 709
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    iget-object v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->S:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$a;

    if-eqz v5, :cond_3

    .line 710
    iget-object v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->S:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$a;

    invoke-interface {v5, v7}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$a;->a(Z)V

    .line 713
    :cond_3
    invoke-direct {p0, p1}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->c(Z)V

    .line 715
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v5

    new-instance v6, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$8;

    invoke-direct {v6, p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$8;-><init>(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;)V

    add-int/lit8 v7, v1, 0x1

    int-to-long v8, v7

    iget v7, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->ad:I

    int-to-long v10, v7

    mul-long/2addr v8, v10

    invoke-virtual {v5, v6, v8, v9}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 724
    .end local v1    # "counter":I
    .end local v2    # "delay":I
    .end local v4    # "i":I
    :goto_1
    return-void

    .line 722
    :cond_4
    invoke-direct {p0, v7}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->c(Z)V

    goto :goto_1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 591
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    return v0
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, -0x2

    .line 5586
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 31
    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 31
    .line 7576
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-object v0
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 31
    .line 6581
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 465
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 466
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->d:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->bringChildToFront(Landroid/view/View;)V

    .line 467
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->c:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->bringChildToFront(Landroid/view/View;)V

    .line 468
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->getChildCount()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->k:I

    move v7, v8

    .line 1473
    :goto_0
    iget v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->k:I

    if-ge v7, v0, :cond_7

    .line 1475
    invoke-virtual {p0, v7}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->c:Landroid/widget/ImageView;

    if-eq v0, v2, :cond_5

    .line 1479
    invoke-virtual {p0, v7}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    .line 1481
    sget v0, Laxp$f;->ding_fab_label:I

    invoke-virtual {v6, v0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    .line 1506
    invoke-virtual {v6}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getLabelText()Ljava/lang/String;

    move-result-object v9

    .line 1508
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1512
    new-instance v10, Lcom/alibaba/android/ding/widget/floatingmenu/Label;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/alibaba/android/ding/widget/floatingmenu/Label;-><init>(Landroid/content/Context;)V

    .line 1513
    invoke-virtual {v10, v1}, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->setClickable(Z)V

    .line 1514
    invoke-virtual {v10, v6}, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->setFab(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;)V

    .line 1515
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->p:I

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 1516
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->q:I

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->setHideAnimation(Landroid/view/animation/Animation;)V

    .line 1518
    iget v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->z:I

    iget v2, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->A:I

    iget v3, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->B:I

    .line 2224
    iput v0, v10, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->e:I

    .line 2225
    iput v2, v10, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->f:I

    .line 2226
    iput v3, v10, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->g:I

    .line 1519
    iget-boolean v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->y:Z

    invoke-virtual {v10, v0}, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->setShowShadow(Z)V

    .line 1520
    iget v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->x:I

    invoke-virtual {v10, v0}, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->setCornerRadius(I)V

    .line 1521
    iget v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->E:I

    if-lez v0, :cond_0

    .line 1522
    invoke-direct {p0, v10}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->setLabelEllipsize(Lcom/alibaba/android/ding/widget/floatingmenu/Label;)V

    .line 1524
    :cond_0
    iget v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->D:I

    invoke-virtual {v10, v0}, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->setMaxLines(I)V

    .line 3085
    iget-boolean v0, v10, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->a:Z

    if-eqz v0, :cond_6

    .line 3086
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    new-instance v3, Lcom/alibaba/android/ding/widget/floatingmenu/Label$a;

    invoke-direct {v3, v10, v8}, Lcom/alibaba/android/ding/widget/floatingmenu/Label$a;-><init>(Lcom/alibaba/android/ding/widget/floatingmenu/Label;B)V

    aput-object v3, v2, v8

    .line 3088
    invoke-virtual {v10}, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-direct {v0, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 3091
    iget v2, v10, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->b:I

    iget v3, v10, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->c:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 3092
    iget v3, v10, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->b:I

    iget v4, v10, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->d:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 3093
    iget v4, v10, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->b:I

    iget v5, v10, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->c:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    add-int/2addr v4, v5

    .line 3094
    iget v5, v10, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->b:I

    iget v11, v10, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->d:I

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    add-int/2addr v5, v11

    .line 3096
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 3107
    :goto_1
    invoke-virtual {v10, v0}, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V

    .line 1527
    iget v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->w:F

    invoke-virtual {v10, v8, v0}, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->setTextSize(IF)V

    .line 1528
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->v:Landroid/content/res/ColorStateList;

    invoke-virtual {v10, v0}, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1530
    iget v2, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->u:I

    .line 1531
    iget v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->r:I

    .line 1532
    iget-boolean v3, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->y:Z

    if-eqz v3, :cond_1

    .line 1533
    invoke-virtual {v6}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getShadowRadius()I

    move-result v3

    invoke-virtual {v6}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getShadowXOffset()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 1534
    invoke-virtual {v6}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getShadowRadius()I

    move-result v3

    invoke-virtual {v6}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getShadowYOffset()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 1537
    :cond_1
    iget v3, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->s:I

    iget v4, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->t:I

    invoke-virtual {v10, v2, v0, v3, v4}, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->setPadding(IIII)V

    .line 1544
    iget v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->D:I

    if-ltz v0, :cond_2

    iget-boolean v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->C:Z

    if-eqz v0, :cond_3

    .line 1545
    :cond_2
    iget-boolean v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->C:Z

    invoke-virtual {v10, v0}, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->setSingleLine(Z)V

    .line 1548
    :cond_3
    invoke-virtual {v10, v9}, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->setText(Ljava/lang/CharSequence;)V

    .line 1549
    invoke-virtual {v6}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1551
    invoke-virtual {p0, v10}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->addView(Landroid/view/View;)V

    .line 1552
    sget v0, Laxp$f;->ding_fab_label:I

    invoke-virtual {v6, v0, v10}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->setTag(ILjava/lang/Object;)V

    .line 1487
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->d:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    if-ne v6, v0, :cond_5

    .line 1488
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->d:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    new-instance v2, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$4;

    invoke-direct {v2, p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$4;-><init>(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;)V

    invoke-virtual {v0, v2}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1473
    :cond_5
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto/16 :goto_0

    .line 3104
    :cond_6
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    new-array v2, v1, [Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-direct {v0, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 470
    :cond_7
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 27
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 376
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->n:I

    move/from16 v24, v0

    if-nez v24, :cond_3

    sub-int v24, p4, p2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->j:I

    move/from16 v25, v0

    div-int/lit8 v25, v25, 0x2

    sub-int v24, v24, v25

    .line 377
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->getPaddingRight()I

    move-result v25

    sub-int v5, v24, v25

    .line 379
    .local v5, "buttonsHorizontalCenter":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->Q:I

    move/from16 v24, v0

    if-nez v24, :cond_4

    const/16 v23, 0x1

    .line 381
    .local v23, "openUp":Z
    :goto_1
    if-eqz v23, :cond_5

    sub-int v24, p5, p3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->d:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    move-object/from16 v25, v0

    .line 382
    invoke-virtual/range {v25 .. v25}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getMeasuredHeight()I

    move-result v25

    sub-int v24, v24, v25

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->getPaddingBottom()I

    move-result v25

    sub-int v21, v24, v25

    .line 384
    .local v21, "menuButtonTop":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->d:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getMeasuredWidth()I

    move-result v24

    div-int/lit8 v24, v24, 0x2

    sub-int v20, v5, v24

    .line 386
    .local v20, "menuButtonLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->d:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->d:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getMeasuredWidth()I

    move-result v25

    add-int v25, v25, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->d:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    move-object/from16 v26, v0

    .line 387
    invoke-virtual/range {v26 .. v26}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getMeasuredHeight()I

    move-result v26

    add-int v26, v26, v21

    .line 386
    move-object/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->layout(IIII)V

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->c:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v24

    div-int/lit8 v24, v24, 0x2

    sub-int v11, v5, v24

    .line 390
    .local v11, "imageLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->d:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getMeasuredHeight()I

    move-result v24

    div-int/lit8 v24, v24, 0x2

    add-int v24, v24, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->c:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v25

    div-int/lit8 v25, v25, 0x2

    sub-int v12, v24, v25

    .line 392
    .local v12, "imageTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->c:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->c:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v25

    add-int v25, v25, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->c:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    .line 393
    invoke-virtual/range {v26 .. v26}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v26

    add-int v26, v26, v12

    .line 392
    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v11, v12, v1, v2}, Landroid/widget/ImageView;->layout(IIII)V

    .line 395
    if-eqz v23, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->d:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    move-object/from16 v24, v0

    .line 396
    invoke-virtual/range {v24 .. v24}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getMeasuredHeight()I

    move-result v24

    add-int v24, v24, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->i:I

    move/from16 v25, v0

    add-int v22, v24, v25

    .line 399
    .local v22, "nextY":I
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->k:I

    move/from16 v24, v0

    add-int/lit8 v10, v24, -0x1

    .local v10, "i":I
    :goto_4
    if-ltz v10, :cond_e

    .line 400
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 402
    .local v6, "child":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->c:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    if-eq v6, v0, :cond_2

    move-object v9, v6

    .line 406
    check-cast v9, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    .line 408
    .local v9, "fab":Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;
    invoke-virtual {v9}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getVisibility()I

    move-result v24

    const/16 v25, 0x8

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_2

    .line 412
    invoke-virtual {v9}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getMeasuredWidth()I

    move-result v24

    div-int/lit8 v24, v24, 0x2

    sub-int v7, v5, v24

    .line 413
    .local v7, "childX":I
    if-eqz v23, :cond_7

    invoke-virtual {v9}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getMeasuredHeight()I

    move-result v24

    sub-int v24, v22, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->i:I

    move/from16 v25, v0

    sub-int v8, v24, v25

    .line 415
    .local v8, "childY":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->d:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    if-eq v9, v0, :cond_0

    .line 416
    invoke-virtual {v9}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getMeasuredWidth()I

    move-result v24

    add-int v24, v24, v7

    .line 417
    invoke-virtual {v9}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getMeasuredHeight()I

    move-result v25

    add-int v25, v25, v8

    .line 416
    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v9, v7, v8, v0, v1}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->layout(IIII)V

    .line 419
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->R:Z

    move/from16 v24, v0

    if-nez v24, :cond_0

    .line 420
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v9, v0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->b(Z)V

    .line 424
    :cond_0
    sget v24, Laxp$f;->ding_fab_label:I

    move/from16 v0, v24

    invoke-virtual {v9, v0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getTag(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    .line 425
    .local v13, "label":Landroid/view/View;
    if-eqz v13, :cond_1

    .line 426
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->l:Z

    move/from16 v24, v0

    if-eqz v24, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->j:I

    move/from16 v24, v0

    div-int/lit8 v24, v24, 0x2

    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->o:I

    move/from16 v25, v0

    add-int v19, v24, v25

    .line 427
    .local v19, "labelsOffset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->n:I

    move/from16 v24, v0

    if-nez v24, :cond_9

    sub-int v18, v5, v19

    .line 431
    .local v18, "labelXNearButton":I
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->n:I

    move/from16 v24, v0

    if-nez v24, :cond_a

    .line 432
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v24

    sub-int v17, v18, v24

    .line 435
    .local v17, "labelXAwayFromButton":I
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->n:I

    move/from16 v24, v0

    if-nez v24, :cond_b

    move/from16 v14, v17

    .line 439
    .local v14, "labelLeft":I
    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->n:I

    move/from16 v24, v0

    if-nez v24, :cond_c

    move/from16 v15, v18

    .line 443
    .local v15, "labelRight":I
    :goto_a
    invoke-virtual {v9}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getMeasuredHeight()I

    move-result v24

    .line 444
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v25

    sub-int v24, v24, v25

    div-int/lit8 v24, v24, 0x2

    add-int v16, v8, v24

    .line 446
    .local v16, "labelTop":I
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    add-int v24, v24, v16

    move/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v13, v14, v0, v15, v1}, Landroid/view/View;->layout(IIII)V

    .line 448
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->R:Z

    move/from16 v24, v0

    if-nez v24, :cond_1

    .line 449
    const/16 v24, 0x4

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V

    .line 453
    .end local v14    # "labelLeft":I
    .end local v15    # "labelRight":I
    .end local v16    # "labelTop":I
    .end local v17    # "labelXAwayFromButton":I
    .end local v18    # "labelXNearButton":I
    .end local v19    # "labelsOffset":I
    :cond_1
    if-eqz v23, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->i:I

    move/from16 v24, v0

    sub-int v22, v8, v24

    .line 399
    .end local v7    # "childX":I
    .end local v8    # "childY":I
    .end local v9    # "fab":Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;
    .end local v13    # "label":Landroid/view/View;
    :cond_2
    :goto_b
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_4

    .line 377
    .end local v5    # "buttonsHorizontalCenter":I
    .end local v6    # "child":Landroid/view/View;
    .end local v10    # "i":I
    .end local v11    # "imageLeft":I
    .end local v12    # "imageTop":I
    .end local v20    # "menuButtonLeft":I
    .end local v21    # "menuButtonTop":I
    .end local v22    # "nextY":I
    .end local v23    # "openUp":Z
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->j:I

    move/from16 v24, v0

    div-int/lit8 v24, v24, 0x2

    .line 378
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->getPaddingLeft()I

    move-result v25

    add-int v5, v24, v25

    goto/16 :goto_0

    .line 379
    .restart local v5    # "buttonsHorizontalCenter":I
    :cond_4
    const/16 v23, 0x0

    goto/16 :goto_1

    .line 383
    .restart local v23    # "openUp":Z
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->getPaddingTop()I

    move-result v21

    goto/16 :goto_2

    .restart local v11    # "imageLeft":I
    .restart local v12    # "imageTop":I
    .restart local v20    # "menuButtonLeft":I
    .restart local v21    # "menuButtonTop":I
    :cond_6
    move/from16 v22, v21

    .line 396
    goto/16 :goto_3

    .restart local v6    # "child":Landroid/view/View;
    .restart local v7    # "childX":I
    .restart local v9    # "fab":Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;
    .restart local v10    # "i":I
    .restart local v22    # "nextY":I
    :cond_7
    move/from16 v8, v22

    .line 413
    goto/16 :goto_5

    .line 426
    .restart local v8    # "childY":I
    .restart local v13    # "label":Landroid/view/View;
    :cond_8
    invoke-virtual {v9}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getMeasuredWidth()I

    move-result v24

    div-int/lit8 v24, v24, 0x2

    goto/16 :goto_6

    .line 427
    .restart local v19    # "labelsOffset":I
    :cond_9
    add-int v18, v5, v19

    goto/16 :goto_7

    .line 433
    .restart local v18    # "labelXNearButton":I
    :cond_a
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v24

    add-int v17, v18, v24

    goto/16 :goto_8

    .restart local v17    # "labelXAwayFromButton":I
    :cond_b
    move/from16 v14, v18

    .line 435
    goto/16 :goto_9

    .restart local v14    # "labelLeft":I
    :cond_c
    move/from16 v15, v17

    .line 439
    goto :goto_a

    .line 455
    .end local v14    # "labelLeft":I
    .end local v17    # "labelXAwayFromButton":I
    .end local v18    # "labelXNearButton":I
    .end local v19    # "labelsOffset":I
    :cond_d
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    add-int v24, v24, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->i:I

    move/from16 v25, v0

    add-int v22, v24, v25

    goto :goto_b

    .line 457
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "childX":I
    .end local v8    # "childY":I
    .end local v9    # "fab":Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;
    .end local v13    # "label":Landroid/view/View;
    :cond_e
    return-void
.end method

.method protected onMeasure(II)V
    .locals 18
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 320
    const/4 v10, 0x0

    .line 321
    .local v10, "height":I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->j:I

    .line 322
    const/4 v13, 0x0

    .line 324
    .local v13, "maxLabelWidth":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->c:Landroid/widget/ImageView;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 326
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->k:I

    if-ge v11, v2, :cond_1

    .line 327
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 329
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->c:Landroid/widget/ImageView;

    if-eq v3, v2, :cond_0

    .line 333
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 334
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->j:I

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->j:I

    .line 326
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 337
    .end local v3    # "child":Landroid/view/View;
    :cond_1
    const/4 v11, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->k:I

    if-ge v11, v2, :cond_4

    .line 339
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 341
    .restart local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->c:Landroid/widget/ImageView;

    if-eq v3, v2, :cond_2

    .line 345
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/lit8 v14, v2, 0x0

    .line 346
    .local v14, "usedWidth":I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v10, v2

    .line 348
    sget v2, Laxp$f;->ding_fab_label:I

    invoke-virtual {v3, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/ding/widget/floatingmenu/Label;

    .line 349
    .local v5, "label":Lcom/alibaba/android/ding/widget/floatingmenu/Label;
    if-eqz v5, :cond_2

    .line 350
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->j:I

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int v4, v2, v4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->l:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :goto_2
    div-int v12, v4, v2

    .line 351
    .local v12, "labelOffset":I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v5}, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->getShadowWidth()I

    move-result v4

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->o:I

    add-int/2addr v2, v4

    add-int v7, v2, v12

    .line 352
    .local v7, "labelUsedWidth":I
    const/4 v9, 0x0

    move-object/from16 v4, p0

    move/from16 v6, p1

    move/from16 v8, p2

    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 353
    invoke-virtual {v5}, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v14, v2

    .line 354
    add-int v2, v14, v12

    invoke-static {v13, v2}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 337
    .end local v5    # "label":Lcom/alibaba/android/ding/widget/floatingmenu/Label;
    .end local v7    # "labelUsedWidth":I
    .end local v12    # "labelOffset":I
    .end local v14    # "usedWidth":I
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 350
    .restart local v5    # "label":Lcom/alibaba/android/ding/widget/floatingmenu/Label;
    .restart local v14    # "usedWidth":I
    :cond_3
    const/4 v2, 0x2

    goto :goto_2

    .line 358
    .end local v3    # "child":Landroid/view/View;
    .end local v5    # "label":Lcom/alibaba/android/ding/widget/floatingmenu/Label;
    .end local v14    # "usedWidth":I
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->j:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->o:I

    add-int/2addr v4, v13

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->getPaddingLeft()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->getPaddingRight()I

    move-result v4

    add-int v15, v2, v4

    .line 360
    .local v15, "width":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->i:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->k:I

    add-int/lit8 v4, v4, -0x1

    mul-int/2addr v2, v4

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->getPaddingTop()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->getPaddingBottom()I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v10, v2

    .line 1460
    int-to-double v8, v10

    const-wide v16, 0x3f9eb851eb851eb8L    # 0.03

    mul-double v8, v8, v16

    int-to-double v0, v10

    move-wide/from16 v16, v0

    add-double v8, v8, v16

    double-to-int v10, v8

    .line 363
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_5

    .line 364
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->getSuggestedMinimumWidth()I

    move-result v2

    move/from16 v0, p1

    invoke-static {v2, v0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->getDefaultSize(II)I

    move-result v15

    .line 367
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_6

    .line 368
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->getSuggestedMinimumHeight()I

    move-result v2

    move/from16 v0, p2

    invoke-static {v2, v0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->getDefaultSize(II)I

    move-result v10

    .line 371
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v10}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->setMeasuredDimension(II)V

    .line 372
    return-void
.end method

.method public setIconFontResId(I)V
    .locals 3
    .param p1, "iconFontResId"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 595
    if-lez p1, :cond_0

    iget v1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->f:I

    if-lez v1, :cond_0

    .line 596
    new-instance v0, Lecw;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->g:I

    invoke-direct {v0, v1, v2}, Lecw;-><init>(Ljava/lang/String;I)V

    .line 597
    .local v0, "dtIconFontDrawable":Lecw;
    iget v1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->f:I

    .line 4070
    iput v1, v0, Lecw;->a:I

    .line 598
    iget v1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->f:I

    .line 4079
    iput v1, v0, Lecw;->b:I

    .line 599
    iput-object v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->h:Landroid/graphics/drawable/Drawable;

    .line 600
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->c:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 601
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->c:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 604
    .end local v0    # "dtIconFontDrawable":Lecw;
    :cond_0
    return-void
.end method

.method public setLabelText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 754
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 755
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->d:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->setLabelText(Ljava/lang/String;)V

    .line 759
    :goto_0
    return-void

    .line 757
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->d:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->setLabelText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setListener(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$a;

    .prologue
    .line 762
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->S:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$a;

    .line 763
    return-void
.end method

.method public setViewBg(Lcom/alibaba/android/ding/widget/OvalBgAnimationView;)V
    .locals 2
    .param p1, "rlBg"    # Lcom/alibaba/android/ding/widget/OvalBgAnimationView;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 741
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->b:Lcom/alibaba/android/ding/widget/OvalBgAnimationView;

    .line 742
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->b:Lcom/alibaba/android/ding/widget/OvalBgAnimationView;

    new-instance v1, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$9;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$9;-><init>(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/OvalBgAnimationView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 751
    return-void
.end method
