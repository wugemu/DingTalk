.class public final Lecl;
.super Landroid/widget/BaseAdapter;
.source "DtActionSheetAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lecl$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p2, "itemBuilders":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 34
    iput-object p1, p0, Lecl;->a:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lecl;->b:Ljava/util/List;

    .line 36
    return-void
.end method

.method static synthetic a(Lecl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lecl;

    .prologue
    .line 26
    iget-object v0, p0, Lecl;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lecl;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 45
    iget-object v0, p0, Lecl;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

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
    .line 50
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 82
    if-nez p2, :cond_1

    .line 83
    iget-object v2, p0, Lecl;->a:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lecj$f;->_ui_private_action_sheet_item_layout:I

    invoke-virtual {v2, v3, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 84
    new-instance v1, Lecl$a;

    invoke-direct {v1, p0, v5}, Lecl$a;-><init>(Lecl;B)V

    .line 85
    .local v1, "holder":Lecl$a;
    sget v2, Lecj$e;->fl_item_root:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, v1, Lecl$a;->a:Landroid/widget/FrameLayout;

    .line 86
    sget v2, Lecj$e;->if_icon:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkui/icon/DtIconFontTextView;

    iput-object v2, v1, Lecl$a;->b:Lcom/alibaba/android/dingtalkui/icon/DtIconFontTextView;

    .line 87
    sget v2, Lecj$e;->tv_content:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lecl$a;->c:Landroid/widget/TextView;

    .line 88
    sget v2, Lecj$e;->tv_footnote:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lecl$a;->d:Landroid/widget/TextView;

    .line 89
    sget v2, Lecj$e;->v_divider:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lecl$a;->e:Landroid/view/View;

    .line 90
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 95
    :goto_0
    iget-object v2, p0, Lecl;->b:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;

    .line 96
    .local v0, "builder":Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;
    if-eqz v0, :cond_0

    .line 2125
    iget-boolean v2, v0, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->f:Z

    .line 1146
    if-eqz v2, :cond_2

    .line 1148
    new-instance v2, Lecn;

    invoke-direct {v2}, Lecn;-><init>()V

    invoke-virtual {v1, v2}, Lecl$a;->a(Lecm;)V

    .line 1153
    :goto_1
    iget-object v2, v1, Lecl$a;->c:Landroid/widget/TextView;

    .line 3091
    iget-object v3, v0, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->b:Ljava/lang/String;

    .line 1153
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3117
    iget-boolean v2, v0, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->d:Z

    .line 1154
    if-eqz v2, :cond_3

    .line 1155
    iget-object v2, v1, Lecl$a;->d:Landroid/widget/TextView;

    .line 4104
    iget-object v3, v0, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->c:Ljava/lang/String;

    .line 1155
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1156
    iget-object v2, v1, Lecl$a;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4125
    :goto_2
    iget-boolean v2, v0, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->f:Z

    .line 1160
    if-eqz v2, :cond_4

    .line 1161
    iget-object v2, v1, Lecl$a;->b:Lcom/alibaba/android/dingtalkui/icon/DtIconFontTextView;

    .line 5121
    iget-object v3, v0, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->e:Ljava/lang/String;

    .line 1161
    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkui/icon/DtIconFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1162
    iget-object v2, v1, Lecl$a;->b:Lcom/alibaba/android/dingtalkui/icon/DtIconFontTextView;

    invoke-virtual {v2, v5}, Lcom/alibaba/android/dingtalkui/icon/DtIconFontTextView;->setVisibility(I)V

    .line 5129
    :goto_3
    iget-boolean v2, v0, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->i:Z

    .line 99
    if-nez v2, :cond_0

    .line 6122
    iget-object v2, v1, Lecl$a;->f:Lecl;

    .line 7026
    iget-object v2, v2, Lecl;->a:Landroid/content/Context;

    .line 6122
    if-eqz v2, :cond_0

    .line 6123
    iget-object v2, v1, Lecl$a;->f:Lecl;

    .line 8026
    iget-object v2, v2, Lecl;->a:Landroid/content/Context;

    .line 6123
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 6124
    iget-object v3, v1, Lecl$a;->b:Lcom/alibaba/android/dingtalkui/icon/DtIconFontTextView;

    sget v4, Lecj$b;->ui_common_level6_base_color:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkui/icon/DtIconFontTextView;->setTextColor(I)V

    .line 6125
    iget-object v3, v1, Lecl$a;->c:Landroid/widget/TextView;

    sget v4, Lecj$b;->ui_common_level6_base_color:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6126
    iget-object v3, v1, Lecl$a;->d:Landroid/widget/TextView;

    sget v4, Lecj$b;->ui_common_level6_base_color:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    :cond_0
    iget-object v2, p0, Lecl;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_5

    .line 105
    iget-object v2, v1, Lecl$a;->e:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 110
    :goto_4
    return-object p2

    .line 92
    .end local v0    # "builder":Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;
    .end local v1    # "holder":Lecl$a;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lecl$a;

    .restart local v1    # "holder":Lecl$a;
    goto/16 :goto_0

    .line 2145
    .restart local v0    # "builder":Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;
    :cond_2
    iget-object v2, v0, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->g:Lecm;

    .line 1150
    invoke-virtual {v1, v2}, Lecl$a;->a(Lecm;)V

    goto :goto_1

    .line 1158
    :cond_3
    iget-object v2, v1, Lecl$a;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 1164
    :cond_4
    iget-object v2, v1, Lecl$a;->b:Lcom/alibaba/android/dingtalkui/icon/DtIconFontTextView;

    invoke-virtual {v2, v6}, Lcom/alibaba/android/dingtalkui/icon/DtIconFontTextView;->setVisibility(I)V

    goto :goto_3

    .line 107
    :cond_5
    iget-object v2, v1, Lecl$a;->e:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method

.method public final isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 71
    iget-object v1, p0, Lecl;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;

    .line 72
    .local v0, "builder":Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;
    if-eqz v0, :cond_0

    .line 1133
    iget-boolean v1, v0, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->h:Z

    .line 75
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
