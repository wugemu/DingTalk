.class public Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;
.super Landroid/widget/RelativeLayout;
.source "DropDownMenu.java"

# interfaces
.implements Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter$a;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private f:Z

.field private g:Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter;

.field private h:I

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lgqn;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lgqo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 50
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->a:Landroid/content/Context;

    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->a(Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->a:Landroid/content/Context;

    .line 57
    invoke-direct {p0, p2}, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->a(Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->a:Landroid/content/Context;

    .line 63
    invoke-direct {p0, p2}, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->a(Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 13
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v12, 0x1

    const/4 v9, 0x0

    .line 67
    iget-object v8, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->a:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    sget v10, Lfzs$g;->dropdown_menu:I

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->c:Landroid/view/View;

    .line 68
    iget-object v8, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->c:Landroid/view/View;

    sget v10, Lfzs$f;->item_name:I

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->d:Landroid/widget/TextView;

    .line 69
    iget-object v8, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->c:Landroid/view/View;

    sget v10, Lfzs$f;->item_icon:I

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v8, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->e:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 70
    iget-object v8, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->c:Landroid/view/View;

    invoke-virtual {p0, v8}, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->addView(Landroid/view/View;)V

    .line 72
    iget-object v8, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->a:Landroid/content/Context;

    sget-object v10, Lfzs$j;->DropDownMenuStyle:[I

    invoke-virtual {v8, p1, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 74
    .local v7, "typedArray":Landroid/content/res/TypedArray;
    sget v8, Lfzs$j;->DropDownMenuStyle_itemText:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 75
    .local v3, "itemName":Ljava/lang/String;
    sget v8, Lfzs$j;->DropDownMenuStyle_iconVisible:I

    invoke-virtual {v7, v8, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 76
    .local v2, "iconVisible":Z
    sget v8, Lfzs$j;->DropDownMenuStyle_iconIconFont:I

    sget v10, Lfzs$h;->icon_act_open:I

    invoke-virtual {v7, v8, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 77
    .local v1, "iconFontResID":I
    sget v8, Lfzs$j;->DropDownMenuStyle_nameCanChanged:I

    invoke-virtual {v7, v8, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->f:Z

    .line 78
    sget v8, Lfzs$j;->DropDownMenuStyle_enableClick:I

    invoke-virtual {v7, v8, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 79
    .local v0, "enableClick":Z
    sget v8, Lfzs$j;->DropDownMenuStyle_itemTextColorStateList:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 80
    .local v5, "textColorStateList":Landroid/content/res/ColorStateList;
    sget v8, Lfzs$j;->DropDownMenuStyle_itemTextColor:I

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 81
    .local v4, "textColor":I
    sget v8, Lfzs$j;->DropDownMenuStyle_itemTextSize:I

    iget-object v10, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->a:Landroid/content/Context;

    const/high16 v11, 0x41600000    # 14.0f

    invoke-static {v10, v11}, Lcms;->c(Landroid/content/Context;F)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v7, v8, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    .line 83
    .local v6, "textSize":F
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 84
    iget-object v8, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->d:Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :cond_0
    if-eqz v4, :cond_1

    .line 87
    iget-object v8, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->d:Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 89
    :cond_1
    if-eqz v5, :cond_2

    .line 90
    iget-object v8, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->d:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 92
    :cond_2
    iget-object v8, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->d:Landroid/widget/TextView;

    invoke-virtual {v8, v9, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 93
    iget-object v10, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->e:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    if-eqz v2, :cond_5

    move v8, v9

    :goto_0
    invoke-virtual {v10, v8}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 95
    if-lez v1, :cond_3

    .line 96
    iget-object v8, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->e:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v8, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 99
    :cond_3
    if-eqz v0, :cond_4

    .line 100
    iget-object v8, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->c:Landroid/view/View;

    new-instance v9, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu$1;

    invoke-direct {v9, p0}, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu$1;-><init>(Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    :cond_4
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 109
    return-void

    .line 93
    :cond_5
    const/16 v8, 0x8

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 27
    .line 4120
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->j:Lgqo;

    if-eqz v0, :cond_0

    .line 4121
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->j:Lgqo;

    iget v1, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->h:I

    invoke-interface {v0, v1}, Lgqo;->a(I)V

    .line 4124
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->j:Lgqo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->i:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4165
    :cond_1
    :goto_0
    return-void

    .line 4128
    :cond_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v5, :cond_3

    .line 4129
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->j:Lgqo;

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->i:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgqn;

    invoke-interface {v1, v0}, Lgqo;->a(Lgqn;)V

    .line 4131
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->h:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4132
    invoke-virtual {p0, v4}, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->a(Z)V

    goto :goto_0

    .line 4138
    :cond_3
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    if-nez v0, :cond_4

    .line 4139
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lfzs$g;->dropdown_pop:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 4140
    sget v0, Lfzs$f;->listview:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 4141
    new-instance v2, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->g:Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter;

    .line 4142
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->g:Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter;

    .line 5026
    iput-object p0, v2, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter;->a:Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter$a;

    .line 4143
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->g:Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->i:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter;->a(Ljava/util/List;)V

    .line 4144
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->g:Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4145
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    invoke-direct {v0, v1, v6, v6, v4}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    .line 4146
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    sget v2, Lfzs$i;->Widget_AppCompat_Light_ListPopupWindow:I

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->setAnimationStyle(I)V

    .line 4147
    new-instance v0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu$2;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu$2;-><init>(Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4154
    sget v0, Lfzs$f;->view_extra:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu$3;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu$3;-><init>(Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4162
    :cond_4
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4163
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 4164
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->e:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setSelected(Z)V

    .line 4165
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->dismiss()V

    goto/16 :goto_0

    .line 4167
    :cond_5
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 4168
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->e:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setSelected(Z)V

    .line 4170
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4171
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 4172
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcms;->b(Landroid/content/Context;)I

    move-result v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v1, v0

    .line 4173
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->setHeight(I)V

    .line 4174
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->showAsDropDown(Landroid/view/View;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 179
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->dismiss()V

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 184
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->e:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setSelected(Z)V

    .line 185
    return-void
.end method

.method public final a(I)V
    .locals 5
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 248
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->i:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->j:Lgqo;

    if-nez v2, :cond_1

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 256
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->i:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgqn;

    .line 2065
    .local v1, "item":Lgqn;
    iget-boolean v2, v1, Lgqn;->a:Z

    .line 257
    if-eqz v2, :cond_0

    .line 261
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->j:Lgqo;

    invoke-interface {v2, v1}, Lgqo;->a(Lgqn;)V

    .line 263
    iget-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->f:Z

    if-eqz v2, :cond_4

    .line 264
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->d:Landroid/widget/TextView;

    .line 2073
    iget-object v3, v1, Lgqn;->b:Ljava/lang/String;

    .line 264
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgqn;

    .line 266
    .local v0, "dropDownItem":Lgqn;
    if-eqz v0, :cond_0

    .line 2081
    iget v3, v1, Lgqn;->c:I

    .line 3081
    iget v4, v0, Lgqn;->c:I

    .line 270
    if-ne v3, v4, :cond_2

    .line 271
    const/4 v3, 0x1

    .line 3093
    iput-boolean v3, v0, Lgqn;->d:Z

    goto :goto_1

    .line 273
    :cond_2
    const/4 v3, 0x0

    .line 4093
    iput-boolean v3, v0, Lgqn;->d:Z

    goto :goto_1

    .line 276
    .end local v0    # "dropDownItem":Lgqn;
    :cond_3
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->g:Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter;->notifyDataSetChanged()V

    .line 279
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->a()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 196
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->f:Z

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 3
    .param p1, "enable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 230
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->c:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 231
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->d:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 233
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->i:Ljava/util/List;

    if-nez v1, :cond_1

    .line 244
    :cond_0
    return-void

    .line 237
    :cond_1
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgqn;

    .line 238
    .local v0, "dropDownItem":Lgqn;
    if-eqz v0, :cond_2

    .line 1069
    iput-boolean p1, v0, Lgqn;->a:Z

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 202
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->i:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 203
    :cond_0
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->c:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 204
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 227
    :cond_1
    :goto_0
    return-void

    .line 208
    :cond_2
    const/4 v1, 0x0

    .line 210
    .local v1, "enable":Z
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgqn;

    .line 211
    .local v0, "dropDownItem":Lgqn;
    if-eqz v0, :cond_3

    .line 1065
    iget-boolean v1, v0, Lgqn;->a:Z

    .line 216
    if-eqz v1, :cond_3

    .line 221
    .end local v0    # "dropDownItem":Lgqn;
    :cond_4
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->c:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 222
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 224
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->g:Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter;

    if-eqz v2, :cond_1

    .line 225
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->g:Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public getDropDownItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lgqn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->i:Ljava/util/List;

    return-object v0
.end method

.method public setMenuItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lgqn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lgqn;>;"
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->i:Ljava/util/List;

    .line 113
    return-void
.end method

.method public setMenuSelectedListener(Lgqo;)V
    .locals 0
    .param p1, "menuSelectedListener"    # Lgqo;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->j:Lgqo;

    .line 189
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 192
    iput p1, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->h:I

    .line 193
    return-void
.end method
