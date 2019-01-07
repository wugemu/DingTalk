.class public final Ldvs;
.super Landroid/widget/BaseAdapter;
.source "FloatWindowAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ldwb;",
            ">;"
        }
    .end annotation
.end field

.field b:I

.field c:Z

.field private d:Landroid/view/View;

.field private e:Landroid/view/ViewGroup;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/app/Activity;

.field private k:Ldvw;

.field private l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ldvw;Ljava/util/Map;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "oneBoxCenter"    # Ldvw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ldvw;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p3, "floatWindows":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 38
    sget-object v0, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject$FloatWindowType;->LIVING:Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject$FloatWindowType;

    iget v0, v0, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject$FloatWindowType;->type:I

    iput v0, p0, Ldvs;->b:I

    .line 42
    iput-object p1, p0, Ldvs;->j:Landroid/app/Activity;

    .line 43
    iput-object p2, p0, Ldvs;->k:Ldvw;

    .line 44
    iput-object p3, p0, Ldvs;->l:Ljava/util/Map;

    .line 45
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Ldvs;->a:Landroid/util/SparseArray;

    .line 46
    return-void
.end method

.method private a(IZ)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "force"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 140
    iget v3, p0, Ldvs;->b:I

    if-ne v3, p1, :cond_1

    if-nez p2, :cond_1

    .line 157
    :cond_0
    return-void

    .line 143
    :cond_1
    iput p1, p0, Ldvs;->b:I

    .line 144
    iget v3, p0, Ldvs;->b:I

    .line 1160
    sget-object v4, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject$FloatWindowType;->LIVING:Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject$FloatWindowType;

    iget v4, v4, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject$FloatWindowType;->type:I

    if-ne v3, v4, :cond_3

    .line 1161
    iget-object v3, p0, Ldvs;->f:Landroid/widget/ImageView;

    sget v4, Lctk$i;->icon_live_fill:I

    invoke-direct {p0, v4, v7}, Ldvs;->b(IZ)Lcjz;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1162
    iget-object v3, p0, Ldvs;->g:Landroid/widget/TextView;

    iget-object v4, p0, Ldvs;->j:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lctk$c;->color_float_tab_selector_checked:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1163
    iget-object v3, p0, Ldvs;->h:Landroid/widget/ImageView;

    sget v4, Lctk$i;->icon_board_fill:I

    invoke-direct {p0, v4, v6}, Ldvs;->b(IZ)Lcjz;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1164
    iget-object v3, p0, Ldvs;->i:Landroid/widget/TextView;

    iget-object v4, p0, Ldvs;->j:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lctk$c;->color_float_tab_selector_normal:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 146
    :goto_0
    iget-object v3, p0, Ldvs;->a:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 147
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 148
    iget-object v3, p0, Ldvs;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldwb;

    .line 149
    .local v0, "holder":Ldwb;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ldwb;->b()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 150
    invoke-virtual {v0}, Ldwb;->a()I

    move-result v3

    if-ne v3, p1, :cond_4

    .line 151
    invoke-virtual {v0}, Ldwb;->b()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 147
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1166
    .end local v0    # "holder":Ldwb;
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_3
    iget-object v3, p0, Ldvs;->f:Landroid/widget/ImageView;

    sget v4, Lctk$i;->icon_live_fill:I

    invoke-direct {p0, v4, v6}, Ldvs;->b(IZ)Lcjz;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1167
    iget-object v3, p0, Ldvs;->g:Landroid/widget/TextView;

    iget-object v4, p0, Ldvs;->j:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lctk$c;->color_float_tab_selector_normal:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1168
    iget-object v3, p0, Ldvs;->h:Landroid/widget/ImageView;

    sget v4, Lctk$i;->icon_board_fill:I

    invoke-direct {p0, v4, v7}, Ldvs;->b(IZ)Lcjz;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1169
    iget-object v3, p0, Ldvs;->i:Landroid/widget/TextView;

    iget-object v4, p0, Ldvs;->j:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lctk$c;->color_float_tab_selector_checked:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 153
    .restart local v0    # "holder":Ldwb;
    .restart local v1    # "i":I
    .restart local v2    # "size":I
    :cond_4
    invoke-virtual {v0}, Ldwb;->b()Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method private b(IZ)Lcjz;
    .locals 10
    .param p1, "resId"    # I
    .param p2, "checked"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 174
    if-eqz p2, :cond_0

    iget-object v5, p0, Ldvs;->j:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lctk$c;->ui_common_tab_bar_active_fg_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 176
    .local v2, "normal":I
    :goto_0
    if-eqz p2, :cond_1

    iget-object v5, p0, Ldvs;->j:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lctk$c;->ui_common_tab_bar_active_fg_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 178
    .local v3, "pressed":I
    :goto_1
    new-array v1, v7, [I

    aput v3, v1, v8

    aput v2, v1, v9

    .line 179
    .local v1, "colors":[I
    new-array v4, v7, [[I

    new-array v5, v7, [I

    fill-array-data v5, :array_0

    aput-object v5, v4, v8

    sget-object v5, Landroid/util/StateSet;->WILD_CARD:[I

    aput-object v5, v4, v9

    .line 180
    .local v4, "states":[[I
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v4, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 181
    .local v0, "colorStateList":Landroid/content/res/ColorStateList;
    new-instance v5, Lcjz;

    iget-object v6, p0, Ldvs;->j:Landroid/app/Activity;

    invoke-virtual {v6, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Lcjz;-><init>(Ljava/lang/String;Landroid/content/res/ColorStateList;)V

    return-object v5

    .line 174
    .end local v0    # "colorStateList":Landroid/content/res/ColorStateList;
    .end local v1    # "colors":[I
    .end local v2    # "normal":I
    .end local v3    # "pressed":I
    .end local v4    # "states":[[I
    :cond_0
    iget-object v5, p0, Ldvs;->j:Landroid/app/Activity;

    .line 175
    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lctk$c;->ui_common_tab_bar_inactive_fg_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    goto :goto_0

    .line 176
    .restart local v2    # "normal":I
    :cond_1
    iget-object v5, p0, Ldvs;->j:Landroid/app/Activity;

    .line 177
    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lctk$c;->ui_common_tab_bar_inactive_fg_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    goto :goto_1

    .line 179
    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 55
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 60
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v9, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 65
    if-nez p2, :cond_0

    .line 66
    iget-object v2, p0, Ldvs;->j:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v5, Lctk$g;->box_float_window_item:I

    invoke-virtual {v2, v5, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 67
    sget v2, Lctk$f;->float_window_tab:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Ldvs;->d:Landroid/view/View;

    .line 68
    sget v2, Lctk$f;->float_live_icon:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Ldvs;->f:Landroid/widget/ImageView;

    .line 69
    sget v2, Lctk$f;->float_live_title:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Ldvs;->g:Landroid/widget/TextView;

    .line 70
    sget v2, Lctk$f;->float_feeds_icon:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Ldvs;->h:Landroid/widget/ImageView;

    .line 71
    sget v2, Lctk$f;->float_feeds_title:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Ldvs;->i:Landroid/widget/TextView;

    .line 72
    sget v2, Lctk$f;->child_container:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Ldvs;->e:Landroid/view/ViewGroup;

    .line 74
    sget v2, Lctk$f;->float_window_tab_live:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    sget v2, Lctk$f;->float_window_tab_feeds:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    :cond_0
    iget-object v2, p0, Ldvs;->l:Ljava/util/Map;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ldvs;->l:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 79
    :cond_1
    iget-object v2, p0, Ldvs;->d:Landroid/view/View;

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 107
    :goto_0
    return-object p2

    .line 81
    :cond_2
    iget-object v2, p0, Ldvs;->l:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;

    .line 82
    .local v1, "object":Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;
    if-eqz v1, :cond_3

    .line 85
    iget-object v2, p0, Ldvs;->a:Landroid/util/SparseArray;

    iget v6, v1, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;->type:I

    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldwb;

    .line 86
    .local v0, "holder":Ldwb;
    if-nez v0, :cond_6

    .line 87
    iget v2, v1, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;->type:I

    .line 1012
    const/4 v0, 0x0

    .line 1013
    sget-object v6, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject$FloatWindowType;->LIVING:Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject$FloatWindowType;

    .end local v0    # "holder":Ldwb;
    iget v6, v6, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject$FloatWindowType;->type:I

    if-ne v2, v6, :cond_7

    .line 1014
    new-instance v0, Ldwd;

    invoke-direct {v0}, Ldwd;-><init>()V

    .line 88
    .restart local v0    # "holder":Ldwb;
    :cond_4
    :goto_2
    if-eqz v0, :cond_6

    .line 89
    iget-object v2, p0, Ldvs;->k:Ldvw;

    invoke-virtual {v0, v2}, Ldwb;->a(Ldvw;)V

    .line 90
    iget-object v2, p0, Ldvs;->j:Landroid/app/Activity;

    iget-object v6, p0, Ldvs;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v6}, Ldwb;->a(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    .line 91
    iget-object v6, p0, Ldvs;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Ldwb;->b()Landroid/view/View;

    move-result-object v7

    .line 1121
    if-eqz v6, :cond_5

    if-nez v7, :cond_8

    .line 92
    :cond_5
    :goto_3
    iget-object v2, p0, Ldvs;->a:Landroid/util/SparseArray;

    iget v6, v1, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;->type:I

    invoke-virtual {v2, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 95
    :cond_6
    if-eqz v0, :cond_3

    .line 96
    iget-object v2, p0, Ldvs;->j:Landroid/app/Activity;

    invoke-virtual {v0, v2, v1}, Ldwb;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;)V

    goto :goto_1

    .line 1015
    .end local v0    # "holder":Ldwb;
    :cond_7
    sget-object v6, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject$FloatWindowType;->FEEDS:Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject$FloatWindowType;

    iget v6, v6, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject$FloatWindowType;->type:I

    if-ne v2, v6, :cond_4

    .line 1016
    new-instance v0, Ldwc;

    invoke-direct {v0}, Ldwc;-><init>()V

    goto :goto_2

    .restart local v0    # "holder":Ldwb;
    :cond_8
    move v2, v3

    .line 1125
    :goto_4
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-ge v2, v8, :cond_c

    .line 1126
    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1127
    if-ne v8, v7, :cond_9

    move v2, v4

    .line 1132
    :goto_5
    if-nez v2, :cond_5

    .line 1133
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_5

    .line 1134
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 1125
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 99
    .end local v0    # "holder":Ldwb;
    .end local v1    # "object":Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;
    :cond_a
    iget-object v2, p0, Ldvs;->l:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-ne v2, v4, :cond_b

    .line 100
    iget-object v2, p0, Ldvs;->d:Landroid/view/View;

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 101
    iget-object v2, p0, Ldvs;->l:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Ldvs;->b:I

    .line 105
    :goto_6
    iget v2, p0, Ldvs;->b:I

    invoke-direct {p0, v2, v4}, Ldvs;->a(IZ)V

    goto/16 :goto_0

    .line 103
    :cond_b
    iget-object v2, p0, Ldvs;->d:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .restart local v0    # "holder":Ldwb;
    .restart local v1    # "object":Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;
    :cond_c
    move v2, v3

    goto :goto_5
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 113
    .local v0, "id":I
    sget v1, Lctk$f;->float_window_tab_live:I

    if-ne v0, v1, :cond_1

    .line 114
    sget-object v1, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject$FloatWindowType;->LIVING:Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject$FloatWindowType;

    iget v1, v1, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject$FloatWindowType;->type:I

    invoke-direct {p0, v1, v2}, Ldvs;->a(IZ)V

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    sget v1, Lctk$f;->float_window_tab_feeds:I

    if-ne v0, v1, :cond_0

    .line 116
    sget-object v1, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject$FloatWindowType;->FEEDS:Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject$FloatWindowType;

    iget v1, v1, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject$FloatWindowType;->type:I

    invoke-direct {p0, v1, v2}, Ldvs;->a(IZ)V

    goto :goto_0
.end method
