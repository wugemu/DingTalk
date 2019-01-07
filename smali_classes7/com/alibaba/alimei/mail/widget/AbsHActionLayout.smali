.class public abstract Lcom/alibaba/alimei/mail/widget/AbsHActionLayout;
.super Landroid/widget/LinearLayout;
.source "AbsHActionLayout.java"


# instance fields
.field protected a:I

.field private b:I

.field private c:I

.field private d:Lafo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lafo",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/alimei/mail/widget/AbsHActionLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/alimei/mail/widget/AbsHActionLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v2, -0x1

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    sget-object v1, Laxo$k;->AbsHActionLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 55
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Laxo$k;->AbsHActionLayout_icon_style:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/alimei/mail/widget/AbsHActionLayout;->b:I

    .line 56
    sget v1, Laxo$k;->AbsHActionLayout_text_style:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/alimei/mail/widget/AbsHActionLayout;->c:I

    .line 57
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1062
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/widget/AbsHActionLayout;->setOrientation(I)V

    .line 1063
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/widget/AbsHActionLayout;->setGravity(I)V

    .line 59
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/widget/AbsHActionLayout;)Lafo;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/widget/AbsHActionLayout;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/AbsHActionLayout;->d:Lafo;

    return-object v0
.end method

.method private a(Landroid/view/View;Lafn;)V
    .locals 7
    .param p1, "childView"    # Landroid/view/View;
    .param p2, "item"    # Lafn;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 114
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    sget v5, Laxo$f;->icon:I

    invoke-static {p1, v5}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 119
    .local v2, "iconView":Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;
    if-eqz v2, :cond_4

    .line 2148
    iget v0, p2, Lafn;->b:I

    .line 3120
    .local v0, "icon":I
    const/4 v3, 0x0

    .line 122
    .local v3, "iconfont":Ljava/lang/String;
    if-gtz v0, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 123
    :cond_2
    if-lez v0, :cond_7

    .line 124
    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 128
    :goto_1
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 3152
    :cond_3
    :goto_2
    iget v1, p2, Lafn;->d:I

    .line 133
    .local v1, "iconColor":I
    if-eqz v1, :cond_4

    .line 134
    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 137
    .end local v0    # "icon":I
    .end local v1    # "iconColor":I
    .end local v3    # "iconfont":Ljava/lang/String;
    :cond_4
    sget v5, Laxo$f;->description:I

    invoke-static {p1, v5}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 138
    .local v4, "titleView":Landroid/widget/TextView;
    if-eqz v4, :cond_6

    .line 139
    iget v5, p0, Lcom/alibaba/alimei/mail/widget/AbsHActionLayout;->c:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_5

    .line 140
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-ge v5, v6, :cond_9

    .line 141
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/widget/AbsHActionLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, p0, Lcom/alibaba/alimei/mail/widget/AbsHActionLayout;->c:I

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 4140
    :cond_5
    :goto_3
    iget-object v5, p2, Lafn;->c:Ljava/lang/String;

    .line 146
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    :cond_6
    new-instance v5, Lcom/alibaba/alimei/mail/widget/AbsHActionLayout$1;

    invoke-direct {v5, p0, p2}, Lcom/alibaba/alimei/mail/widget/AbsHActionLayout$1;-><init>(Lcom/alibaba/alimei/mail/widget/AbsHActionLayout;Lafn;)V

    invoke-virtual {p1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 126
    .end local v4    # "titleView":Landroid/widget/TextView;
    .restart local v0    # "icon":I
    .restart local v3    # "iconfont":Ljava/lang/String;
    :cond_7
    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 129
    :cond_8
    if-eqz v2, :cond_3

    .line 130
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    goto :goto_2

    .line 143
    .end local v0    # "icon":I
    .end local v3    # "iconfont":Ljava/lang/String;
    .restart local v4    # "titleView":Landroid/widget/TextView;
    :cond_9
    iget v5, p0, Lcom/alibaba/alimei/mail/widget/AbsHActionLayout;->c:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_3
.end method


# virtual methods
.method protected abstract a(Landroid/content/Context;)Landroid/view/View;
.end method

.method public setItemLayout(I)V
    .locals 0
    .param p1, "resLayout"    # I

    .prologue
    .line 173
    iput p1, p0, Lcom/alibaba/alimei/mail/widget/AbsHActionLayout;->a:I

    .line 174
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/widget/AbsHActionLayout;->removeAllViews()V

    .line 175
    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lafn;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 76
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lafn;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/widget/AbsHActionLayout;->removeAllViews()V

    .line 78
    const/16 v6, 0x8

    invoke-virtual {p0, v6}, Lcom/alibaba/alimei/mail/widget/AbsHActionLayout;->setVisibility(I)V

    .line 101
    :cond_1
    :goto_0
    return-void

    .line 82
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 83
    .local v4, "itemSize":I
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/widget/AbsHActionLayout;->getChildCount()I

    move-result v0

    .line 84
    .local v0, "childCount":I
    if-le v0, v4, :cond_3

    move v5, v4

    .line 85
    .local v5, "min":I
    :goto_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v5, :cond_4

    .line 86
    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/widget/AbsHActionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 87
    .local v1, "childView":Landroid/view/View;
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lafn;

    .line 88
    .local v3, "item":Lafn;
    invoke-direct {p0, v1, v3}, Lcom/alibaba/alimei/mail/widget/AbsHActionLayout;->a(Landroid/view/View;Lafn;)V

    .line 85
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v1    # "childView":Landroid/view/View;
    .end local v2    # "i":I
    .end local v3    # "item":Lafn;
    .end local v5    # "min":I
    :cond_3
    move v5, v0

    .line 84
    goto :goto_1

    .line 91
    .restart local v2    # "i":I
    .restart local v5    # "min":I
    :cond_4
    if-le v0, v5, :cond_5

    .line 92
    sub-int v6, v0, v5

    invoke-virtual {p0, v5, v6}, Lcom/alibaba/alimei/mail/widget/AbsHActionLayout;->removeViews(II)V

    goto :goto_0

    .line 94
    :cond_5
    move v2, v5

    :goto_3
    if-ge v2, v4, :cond_1

    .line 95
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lafn;

    .line 96
    .restart local v3    # "item":Lafn;
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/widget/AbsHActionLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 1159
    iget v7, p0, Lcom/alibaba/alimei/mail/widget/AbsHActionLayout;->a:I

    if-lez v7, :cond_6

    .line 1160
    iget v7, p0, Lcom/alibaba/alimei/mail/widget/AbsHActionLayout;->a:I

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 97
    .restart local v1    # "childView":Landroid/view/View;
    :goto_4
    invoke-direct {p0, v1, v3}, Lcom/alibaba/alimei/mail/widget/AbsHActionLayout;->a(Landroid/view/View;Lafn;)V

    .line 98
    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/widget/AbsHActionLayout;->addView(Landroid/view/View;)V

    .line 94
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1162
    .end local v1    # "childView":Landroid/view/View;
    :cond_6
    invoke-virtual {p0, v6}, Lcom/alibaba/alimei/mail/widget/AbsHActionLayout;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    goto :goto_4
.end method

.method public varargs setItems([Lafn;)V
    .locals 2
    .param p1, "items"    # [Lafn;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 67
    if-eqz p1, :cond_0

    array-length v1, p1

    if-gtz v1, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 72
    .local v0, "menuItemList":Ljava/util/List;, "Ljava/util/List<Lafn;>;"
    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/widget/AbsHActionLayout;->setItems(Ljava/util/List;)V

    goto :goto_0
.end method

.method public setOnMenuItemClickListener(Lafo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lafo",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, "listener":Lafo;, "Lafo<Landroid/view/View;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/mail/widget/AbsHActionLayout;->d:Lafo;

    .line 169
    return-void
.end method
