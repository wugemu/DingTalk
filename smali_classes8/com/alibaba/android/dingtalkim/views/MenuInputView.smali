.class public Lcom/alibaba/android/dingtalkim/views/MenuInputView;
.super Landroid/widget/FrameLayout;
.source "MenuInputView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/views/MenuInputView$a;,
        Lcom/alibaba/android/dingtalkim/views/MenuInputView$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/idl/CustomButtonModel;",
            "Landroid/widget/ListPopupWindow;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/alibaba/android/dingtalkim/views/MenuInputView$b;

.field private d:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/MenuInputView;->a:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/MenuInputView;->b:Ljava/util/Map;

    .line 119
    new-instance v0, Lcom/alibaba/android/dingtalkim/views/MenuInputView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/views/MenuInputView$1;-><init>(Lcom/alibaba/android/dingtalkim/views/MenuInputView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/MenuInputView;->d:Landroid/view/View$OnClickListener;

    .line 43
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/MenuInputView;->b()V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/dingtalkim/views/MenuInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/MenuInputView;->a:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/MenuInputView;->b:Ljava/util/Map;

    .line 119
    new-instance v0, Lcom/alibaba/android/dingtalkim/views/MenuInputView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/views/MenuInputView$1;-><init>(Lcom/alibaba/android/dingtalkim/views/MenuInputView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/MenuInputView;->d:Landroid/view/View$OnClickListener;

    .line 52
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/MenuInputView;->b()V

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/views/MenuInputView;)Lcom/alibaba/android/dingtalkim/views/MenuInputView$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/MenuInputView;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/MenuInputView;->c:Lcom/alibaba/android/dingtalkim/views/MenuInputView$b;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/views/MenuInputView;Landroid/view/View;Lcom/alibaba/android/dingtalkim/models/idl/CustomButtonModel;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/MenuInputView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Lcom/alibaba/android/dingtalkim/models/idl/CustomButtonModel;

    .prologue
    const/4 v6, 0x1

    .line 31
    .line 1130
    iget-object v0, p2, Lcom/alibaba/android/dingtalkim/models/idl/CustomButtonModel;->type:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1131
    iget-object v0, p2, Lcom/alibaba/android/dingtalkim/models/idl/CustomButtonModel;->type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1136
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/MenuInputView;->c:Lcom/alibaba/android/dingtalkim/views/MenuInputView$b;

    if-eqz v0, :cond_0

    .line 1137
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/MenuInputView;->c:Lcom/alibaba/android/dingtalkim/views/MenuInputView$b;

    invoke-interface {v0, p2, p0}, Lcom/alibaba/android/dingtalkim/views/MenuInputView$b;->onClick(Lcom/alibaba/android/dingtalkim/models/idl/CustomButtonModel;Lcom/alibaba/android/dingtalkim/views/MenuInputView;)V

    .line 1134
    :cond_0
    :goto_0
    return-void

    .line 1145
    :pswitch_0
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/alibaba/android/dingtalkim/models/idl/CustomButtonModel;->subMenu:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/alibaba/android/dingtalkim/models/idl/CustomButtonModel;->subMenu:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1147
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/MenuInputView;->b:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1148
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/MenuInputView;->b:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListPopupWindow;

    .line 1169
    :goto_1
    :try_start_0
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1170
    :catch_0
    move-exception v0

    .line 1171
    const-string/jumbo v1, "im"

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "MenuInputView showPopupMenu failed, error="

    aput-object v5, v3, v4

    .line 1172
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    .line 1171
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1150
    :cond_1
    new-instance v0, Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/MenuInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    .line 1151
    new-instance v1, Lcom/alibaba/android/dingtalkim/views/MenuInputView$a;

    iget-object v2, p2, Lcom/alibaba/android/dingtalkim/models/idl/CustomButtonModel;->subMenu:Ljava/util/List;

    invoke-direct {v1, p0, v2}, Lcom/alibaba/android/dingtalkim/views/MenuInputView$a;-><init>(Lcom/alibaba/android/dingtalkim/views/MenuInputView;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1152
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/MenuInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lctk$d;->menu_input_menu_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 1153
    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setHeight(I)V

    .line 1154
    invoke-virtual {v0, v6}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 1155
    new-instance v1, Lcom/alibaba/android/dingtalkim/views/MenuInputView$2;

    invoke-direct {v1, p0, p2}, Lcom/alibaba/android/dingtalkim/views/MenuInputView$2;-><init>(Lcom/alibaba/android/dingtalkim/views/MenuInputView;Lcom/alibaba/android/dingtalkim/models/idl/CustomButtonModel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1165
    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 1166
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/MenuInputView;->b:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1131
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/MenuInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lctk$g;->menu_input_view:I

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 57
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 68
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/views/MenuInputView;->b:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 69
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Lcom/alibaba/android/dingtalkim/models/idl/CustomButtonModel;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/idl/CustomButtonModel;

    .line 70
    .local v1, "key":Lcom/alibaba/android/dingtalkim/models/idl/CustomButtonModel;
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/views/MenuInputView;->b:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ListPopupWindow;

    .line 71
    .local v3, "w":Landroid/widget/ListPopupWindow;
    if-eqz v3, :cond_0

    .line 73
    :try_start_0
    invoke-virtual {v3}, Landroid/widget/ListPopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "im"

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "MenuInputView dismissAllMenu failed, error="

    aput-object v9, v7, v8

    const/4 v8, 0x1

    .line 76
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 75
    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 80
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "key":Lcom/alibaba/android/dingtalkim/models/idl/CustomButtonModel;
    .end local v3    # "w":Landroid/widget/ListPopupWindow;
    :cond_1
    return-void
.end method

.method public final a(Z)V
    .locals 2
    .param p1, "show"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 83
    sget v0, Lctk$f;->switch_to_keybord:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/views/MenuInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 84
    return-void

    .line 83
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setData(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/idl/CustomButtonModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 87
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/models/idl/CustomButtonModel;>;"
    sget v5, Lctk$f;->menu_input:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalkim/views/MenuInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1111
    .local v1, "container":Landroid/view/ViewGroup;
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/views/MenuInputView;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 1112
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 1114
    :cond_0
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/views/MenuInputView;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 1115
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/MenuInputView;->a()V

    .line 1116
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/views/MenuInputView;->b:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 89
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 90
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/idl/CustomButtonModel;

    .line 91
    .local v0, "buttonData":Lcom/alibaba/android/dingtalkim/models/idl/CustomButtonModel;
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/MenuInputView;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lctk$g;->menu_input_button:I

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 92
    .local v4, "v":Landroid/view/View;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-direct {v2, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 93
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 94
    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    sget v6, Lctk$f;->button_text:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 96
    .local v3, "tv":Landroid/widget/TextView;
    iget-object v6, v0, Lcom/alibaba/android/dingtalkim/models/idl/CustomButtonModel;->label:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 97
    iget-object v6, v0, Lcom/alibaba/android/dingtalkim/models/idl/CustomButtonModel;->label:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :cond_1
    iget-object v6, v0, Lcom/alibaba/android/dingtalkim/models/idl/CustomButtonModel;->type:Ljava/lang/Integer;

    if-eqz v6, :cond_2

    iget-object v6, v0, Lcom/alibaba/android/dingtalkim/models/idl/CustomButtonModel;->type:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 100
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/MenuInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lctk$e;->menu_input_menu_button_bg:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    :cond_2
    invoke-virtual {v4, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 103
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/views/MenuInputView;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 105
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/views/MenuInputView;->a:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 108
    .end local v0    # "buttonData":Lcom/alibaba/android/dingtalkim/models/idl/CustomButtonModel;
    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "tv":Landroid/widget/TextView;
    .end local v4    # "v":Landroid/view/View;
    :cond_3
    return-void
.end method

.method public setOnButtonClickListener(Lcom/alibaba/android/dingtalkim/views/MenuInputView$b;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/android/dingtalkim/views/MenuInputView$b;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/MenuInputView;->c:Lcom/alibaba/android/dingtalkim/views/MenuInputView$b;

    .line 61
    return-void
.end method

.method public setOnSwitchToKeybordClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 64
    sget v0, Lctk$f;->switch_to_keybord:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/views/MenuInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    return-void
.end method
