.class public Lcom/alibaba/aliweex/adapter/component/TabLayout;
.super Landroid/widget/FrameLayout;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;,
        Lcom/alibaba/aliweex/adapter/component/TabLayout$OnTabSelectedListener;
    }
.end annotation


# instance fields
.field private mOnTabSelectedListener:Lcom/alibaba/aliweex/adapter/component/TabLayout$OnTabSelectedListener;

.field private mRootView:Landroid/widget/LinearLayout;

.field private mSelectedTab:Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;

.field private mTabClickListener:Landroid/view/View$OnClickListener;

.field private mTabbar:Lcom/alibaba/aliweex/adapter/component/WXTabbar;

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/aliweex/adapter/component/TabLayout;->mTabs:Ljava/util/ArrayList;

    .line 33
    invoke-direct {p0, p1}, Lcom/alibaba/aliweex/adapter/component/TabLayout;->init(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/aliweex/adapter/component/TabLayout;->mTabs:Ljava/util/ArrayList;

    .line 38
    invoke-direct {p0, p1}, Lcom/alibaba/aliweex/adapter/component/TabLayout;->init(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/aliweex/adapter/component/WXTabbar;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tabbar"    # Lcom/alibaba/aliweex/adapter/component/WXTabbar;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/aliweex/adapter/component/TabLayout;->mTabs:Ljava/util/ArrayList;

    .line 27
    iput-object p2, p0, Lcom/alibaba/aliweex/adapter/component/TabLayout;->mTabbar:Lcom/alibaba/aliweex/adapter/component/WXTabbar;

    .line 28
    invoke-direct {p0, p1}, Lcom/alibaba/aliweex/adapter/component/TabLayout;->init(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method static synthetic access$100(Lcom/alibaba/aliweex/adapter/component/TabLayout;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/aliweex/adapter/component/TabLayout;
    .param p1, "x1"    # I

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/alibaba/aliweex/adapter/component/TabLayout;->updateTab(I)V

    return-void
.end method

.method private addTabView(Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;Z)V
    .locals 4
    .param p1, "tab"    # Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;
    .param p2, "isSelected"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 118
    invoke-virtual {p1}, Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v1

    .line 119
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Lcom/alibaba/aliweex/adapter/component/TabLayout;->mTabClickListener:Landroid/view/View$OnClickListener;

    if-nez v2, :cond_0

    .line 120
    new-instance v2, Lcom/alibaba/aliweex/adapter/component/TabLayout$1;

    invoke-direct {v2, p0}, Lcom/alibaba/aliweex/adapter/component/TabLayout$1;-><init>(Lcom/alibaba/aliweex/adapter/component/TabLayout;)V

    iput-object v2, p0, Lcom/alibaba/aliweex/adapter/component/TabLayout;->mTabClickListener:Landroid/view/View$OnClickListener;

    .line 128
    :cond_0
    if-eqz v1, :cond_1

    .line 129
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    iget-object v3, p0, Lcom/alibaba/aliweex/adapter/component/TabLayout;->mTabbar:Lcom/alibaba/aliweex/adapter/component/WXTabbar;

    invoke-virtual {v3}, Lcom/alibaba/aliweex/adapter/component/WXTabbar;->getLayoutHeight()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 130
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 131
    invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 132
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    iget-object v2, p0, Lcom/alibaba/aliweex/adapter/component/TabLayout;->mTabClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v2, p0, Lcom/alibaba/aliweex/adapter/component/TabLayout;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 135
    if-eqz p2, :cond_1

    .line 136
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 139
    .end local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 44
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 45
    .local v1, "root":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 46
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 47
    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 49
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/alibaba/aliweex/adapter/component/TabLayout;->mTabbar:Lcom/alibaba/aliweex/adapter/component/WXTabbar;

    invoke-virtual {v3}, Lcom/alibaba/aliweex/adapter/component/WXTabbar;->getLayoutHeight()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 50
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x30

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 51
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/aliweex/adapter/component/TabLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    iput-object v1, p0, Lcom/alibaba/aliweex/adapter/component/TabLayout;->mRootView:Landroid/widget/LinearLayout;

    .line 53
    return-void
.end method

.method private updateTab(I)V
    .locals 3
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/alibaba/aliweex/adapter/component/TabLayout;->getTabAt(I)Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;

    move-result-object v2

    .line 103
    .local v2, "tab":Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;
    if-eqz v2, :cond_1

    .line 104
    invoke-virtual {v2}, Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    .line 105
    .local v0, "custom":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 107
    .local v1, "customParent":Landroid/view/ViewParent;
    if-eq v1, p0, :cond_1

    .line 108
    if-eqz v1, :cond_0

    .line 109
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "customParent":Landroid/view/ViewParent;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 111
    :cond_0
    invoke-virtual {p0, v0}, Lcom/alibaba/aliweex/adapter/component/TabLayout;->addView(Landroid/view/View;)V

    .line 115
    .end local v0    # "custom":Landroid/view/View;
    :cond_1
    return-void
.end method


# virtual methods
.method public addTab(Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;Z)V
    .locals 5
    .param p1, "tab"    # Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "setSelected"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 148
    invoke-static {p1}, Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;->access$000(Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;)Lcom/alibaba/aliweex/adapter/component/TabLayout;

    move-result-object v3

    if-eq v3, p0, :cond_0

    .line 149
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Tab belongs to a different TabLayout."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 152
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/alibaba/aliweex/adapter/component/TabLayout;->addTabView(Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;Z)V

    .line 153
    iget-object v3, p0, Lcom/alibaba/aliweex/adapter/component/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 154
    .local v2, "oldSize":I
    iget-object v3, p0, Lcom/alibaba/aliweex/adapter/component/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;->setPosition(I)V

    .line 155
    iget-object v3, p0, Lcom/alibaba/aliweex/adapter/component/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 157
    iget-object v3, p0, Lcom/alibaba/aliweex/adapter/component/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 158
    .local v0, "count":I
    add-int/lit8 v1, v2, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 159
    iget-object v3, p0, Lcom/alibaba/aliweex/adapter/component/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;

    invoke-virtual {v3, v1}, Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;->setPosition(I)V

    .line 158
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 162
    :cond_1
    if-eqz p2, :cond_2

    .line 163
    invoke-virtual {p1}, Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;->select()V

    .line 165
    :cond_2
    return-void
.end method

.method public bridge synthetic getRootView()Landroid/view/View;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/alibaba/aliweex/adapter/component/TabLayout;->getRootView()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRootView()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/alibaba/aliweex/adapter/component/TabLayout;->mRootView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getSelectedTabPosition()I
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/alibaba/aliweex/adapter/component/TabLayout;->mSelectedTab:Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/aliweex/adapter/component/TabLayout;->mSelectedTab:Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;

    invoke-virtual {v0}, Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;->getPosition()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getTabAt(I)Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;
    .locals 1
    .param p1, "index"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alibaba/aliweex/adapter/component/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;

    return-object v0
.end method

.method public newTab()Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 169
    new-instance v0, Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;

    invoke-direct {v0, p0}, Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;-><init>(Lcom/alibaba/aliweex/adapter/component/TabLayout;)V

    return-object v0
.end method

.method public removeAllTabs()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 174
    iget-object v2, p0, Lcom/alibaba/aliweex/adapter/component/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;

    .line 176
    .local v1, "tab":Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;->setPosition(I)V

    .line 177
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 180
    .end local v1    # "tab":Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/alibaba/aliweex/adapter/component/TabLayout;->mSelectedTab:Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;

    .line 181
    return-void
.end method

.method selectTab(Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;)V
    .locals 2
    .param p1, "tab"    # Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 188
    iget-object v0, p0, Lcom/alibaba/aliweex/adapter/component/TabLayout;->mSelectedTab:Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;

    if-ne v0, p1, :cond_1

    .line 189
    iget-object v0, p0, Lcom/alibaba/aliweex/adapter/component/TabLayout;->mSelectedTab:Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/alibaba/aliweex/adapter/component/TabLayout;->mOnTabSelectedListener:Lcom/alibaba/aliweex/adapter/component/TabLayout$OnTabSelectedListener;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/alibaba/aliweex/adapter/component/TabLayout;->mOnTabSelectedListener:Lcom/alibaba/aliweex/adapter/component/TabLayout$OnTabSelectedListener;

    iget-object v1, p0, Lcom/alibaba/aliweex/adapter/component/TabLayout;->mSelectedTab:Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;

    invoke-interface {v0, v1}, Lcom/alibaba/aliweex/adapter/component/TabLayout$OnTabSelectedListener;->onTabReselected(Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;)V

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/alibaba/aliweex/adapter/component/TabLayout;->mSelectedTab:Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/aliweex/adapter/component/TabLayout;->mOnTabSelectedListener:Lcom/alibaba/aliweex/adapter/component/TabLayout$OnTabSelectedListener;

    if-eqz v0, :cond_2

    .line 196
    iget-object v0, p0, Lcom/alibaba/aliweex/adapter/component/TabLayout;->mOnTabSelectedListener:Lcom/alibaba/aliweex/adapter/component/TabLayout$OnTabSelectedListener;

    iget-object v1, p0, Lcom/alibaba/aliweex/adapter/component/TabLayout;->mSelectedTab:Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;

    invoke-interface {v0, v1}, Lcom/alibaba/aliweex/adapter/component/TabLayout$OnTabSelectedListener;->onTabUnselected(Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;)V

    .line 198
    :cond_2
    iput-object p1, p0, Lcom/alibaba/aliweex/adapter/component/TabLayout;->mSelectedTab:Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;

    .line 199
    iget-object v0, p0, Lcom/alibaba/aliweex/adapter/component/TabLayout;->mSelectedTab:Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/aliweex/adapter/component/TabLayout;->mOnTabSelectedListener:Lcom/alibaba/aliweex/adapter/component/TabLayout$OnTabSelectedListener;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/alibaba/aliweex/adapter/component/TabLayout;->mOnTabSelectedListener:Lcom/alibaba/aliweex/adapter/component/TabLayout$OnTabSelectedListener;

    iget-object v1, p0, Lcom/alibaba/aliweex/adapter/component/TabLayout;->mSelectedTab:Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;

    invoke-interface {v0, v1}, Lcom/alibaba/aliweex/adapter/component/TabLayout$OnTabSelectedListener;->onTabSelected(Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;)V

    goto :goto_0
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 94
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    return-void
.end method

.method public setOnTabSelectedListener(Lcom/alibaba/aliweex/adapter/component/TabLayout$OnTabSelectedListener;)V
    .locals 0
    .param p1, "onTabSelectedListener"    # Lcom/alibaba/aliweex/adapter/component/TabLayout$OnTabSelectedListener;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/alibaba/aliweex/adapter/component/TabLayout;->mOnTabSelectedListener:Lcom/alibaba/aliweex/adapter/component/TabLayout$OnTabSelectedListener;

    .line 185
    return-void
.end method

.method public updateSize()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 56
    iget-object v4, p0, Lcom/alibaba/aliweex/adapter/component/TabLayout;->mRootView:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/alibaba/aliweex/adapter/component/TabLayout;->mTabs:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 57
    iget-object v4, p0, Lcom/alibaba/aliweex/adapter/component/TabLayout;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 58
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v4, p0, Lcom/alibaba/aliweex/adapter/component/TabLayout;->mTabbar:Lcom/alibaba/aliweex/adapter/component/WXTabbar;

    invoke-virtual {v4}, Lcom/alibaba/aliweex/adapter/component/WXTabbar;->getLayoutHeight()F

    move-result v4

    float-to-int v4, v4

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 59
    iget-object v4, p0, Lcom/alibaba/aliweex/adapter/component/TabLayout;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/alibaba/aliweex/adapter/component/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 62
    iget-object v4, p0, Lcom/alibaba/aliweex/adapter/component/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;

    invoke-virtual {v4}, Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v3

    .line 63
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 64
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 65
    .local v2, "lp_tab":Landroid/view/ViewGroup$LayoutParams;
    iget-object v4, p0, Lcom/alibaba/aliweex/adapter/component/TabLayout;->mTabbar:Lcom/alibaba/aliweex/adapter/component/WXTabbar;

    invoke-virtual {v4}, Lcom/alibaba/aliweex/adapter/component/WXTabbar;->getLayoutHeight()F

    move-result v4

    float-to-int v4, v4

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 66
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    .end local v2    # "lp_tab":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    .end local v0    # "i":I
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method
