.class public Landroid/support/design/internal/BottomNavigationMenuView;
.super Landroid/view/ViewGroup;
.source "BottomNavigationMenuView.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuView;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final ACTIVE_ANIMATION_DURATION_MS:J = 0x73L


# instance fields
.field private final mActiveItemMaxWidth:I

.field private mButtons:[Landroid/support/design/internal/BottomNavigationItemView;

.field private final mInactiveItemMaxWidth:I

.field private final mInactiveItemMinWidth:I

.field private mItemBackgroundRes:I

.field private final mItemHeight:I

.field private mItemIconTint:Landroid/content/res/ColorStateList;

.field private final mItemPool:Lfu$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfu$a",
            "<",
            "Landroid/support/design/internal/BottomNavigationItemView;",
            ">;"
        }
    .end annotation
.end field

.field private mItemTextColor:Landroid/content/res/ColorStateList;

.field private mMenu:Landroid/support/v7/view/menu/MenuBuilder;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private mPresenter:Landroid/support/design/internal/BottomNavigationPresenter;

.field private mSelectedItemId:I

.field private mSelectedItemPosition:I

.field private final mSet:Landroid/support/transition/TransitionSet;

.field private mShiftingMode:Z

.field private mTempChildWidths:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/internal/BottomNavigationMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x5

    const/4 v2, 0x0

    .line 74
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    new-instance v1, Lfu$c;

    invoke-direct {v1, v4}, Lfu$c;-><init>(I)V

    iput-object v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mItemPool:Lfu$a;

    .line 56
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mShiftingMode:Z

    .line 59
    iput v2, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mSelectedItemId:I

    .line 60
    iput v2, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mSelectedItemPosition:I

    .line 75
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 76
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Landroid/support/design/R$dimen;->design_bottom_navigation_item_max_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mInactiveItemMaxWidth:I

    .line 78
    sget v1, Landroid/support/design/R$dimen;->design_bottom_navigation_item_min_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mInactiveItemMinWidth:I

    .line 80
    sget v1, Landroid/support/design/R$dimen;->design_bottom_navigation_active_item_max_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mActiveItemMaxWidth:I

    .line 82
    sget v1, Landroid/support/design/R$dimen;->design_bottom_navigation_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mItemHeight:I

    .line 84
    new-instance v1, Landroid/support/transition/AutoTransition;

    invoke-direct {v1}, Landroid/support/transition/AutoTransition;-><init>()V

    iput-object v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mSet:Landroid/support/transition/TransitionSet;

    .line 85
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mSet:Landroid/support/transition/TransitionSet;

    invoke-virtual {v1, v2}, Landroid/support/transition/TransitionSet;->a(I)Landroid/support/transition/TransitionSet;

    .line 86
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mSet:Landroid/support/transition/TransitionSet;

    const-wide/16 v2, 0x73

    invoke-virtual {v1, v2, v3}, Landroid/support/transition/TransitionSet;->a(J)Landroid/support/transition/TransitionSet;

    .line 87
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mSet:Landroid/support/transition/TransitionSet;

    new-instance v2, Lhd;

    invoke-direct {v2}, Lhd;-><init>()V

    invoke-virtual {v1, v2}, Landroid/support/transition/TransitionSet;->a(Landroid/animation/TimeInterpolator;)Landroid/support/transition/TransitionSet;

    .line 88
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mSet:Landroid/support/transition/TransitionSet;

    new-instance v2, Landroid/support/design/internal/TextScale;

    invoke-direct {v2}, Landroid/support/design/internal/TextScale;-><init>()V

    invoke-virtual {v1, v2}, Landroid/support/transition/TransitionSet;->a(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    .line 90
    new-instance v1, Landroid/support/design/internal/BottomNavigationMenuView$1;

    invoke-direct {v1, p0}, Landroid/support/design/internal/BottomNavigationMenuView$1;-><init>(Landroid/support/design/internal/BottomNavigationMenuView;)V

    iput-object v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 100
    new-array v1, v4, [I

    iput-object v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mTempChildWidths:[I

    .line 101
    return-void
.end method

.method static synthetic access$000(Landroid/support/design/internal/BottomNavigationMenuView;)Landroid/support/design/internal/BottomNavigationPresenter;
    .locals 1
    .param p0, "x0"    # Landroid/support/design/internal/BottomNavigationMenuView;

    .prologue
    .line 45
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mPresenter:Landroid/support/design/internal/BottomNavigationPresenter;

    return-object v0
.end method

.method static synthetic access$100(Landroid/support/design/internal/BottomNavigationMenuView;)Landroid/support/v7/view/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Landroid/support/design/internal/BottomNavigationMenuView;

    .prologue
    .line 45
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    return-object v0
.end method

.method private getNewItem()Landroid/support/design/internal/BottomNavigationItemView;
    .locals 2

    .prologue
    .line 320
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mItemPool:Lfu$a;

    invoke-interface {v1}, Lfu$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/BottomNavigationItemView;

    .line 321
    .local v0, "item":Landroid/support/design/internal/BottomNavigationItemView;
    if-nez v0, :cond_0

    .line 322
    new-instance v0, Landroid/support/design/internal/BottomNavigationItemView;

    .end local v0    # "item":Landroid/support/design/internal/BottomNavigationItemView;
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/design/internal/BottomNavigationItemView;-><init>(Landroid/content/Context;)V

    .line 324
    .restart local v0    # "item":Landroid/support/design/internal/BottomNavigationItemView;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public buildMenuView()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 257
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->removeAllViews()V

    .line 258
    iget-object v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mButtons:[Landroid/support/design/internal/BottomNavigationItemView;

    if-eqz v3, :cond_0

    .line 259
    iget-object v6, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mButtons:[Landroid/support/design/internal/BottomNavigationItemView;

    array-length v7, v6

    move v3, v5

    :goto_0
    if-ge v3, v7, :cond_0

    aget-object v2, v6, v3

    .line 260
    .local v2, "item":Landroid/support/design/internal/BottomNavigationItemView;
    iget-object v8, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mItemPool:Lfu$a;

    invoke-interface {v8, v2}, Lfu$a;->a(Ljava/lang/Object;)Z

    .line 259
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 263
    .end local v2    # "item":Landroid/support/design/internal/BottomNavigationItemView;
    :cond_0
    iget-object v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 264
    iput v5, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mSelectedItemId:I

    .line 265
    iput v5, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mSelectedItemPosition:I

    .line 266
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mButtons:[Landroid/support/design/internal/BottomNavigationItemView;

    .line 288
    :goto_1
    return-void

    .line 269
    :cond_1
    iget-object v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v3

    new-array v3, v3, [Landroid/support/design/internal/BottomNavigationItemView;

    iput-object v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mButtons:[Landroid/support/design/internal/BottomNavigationItemView;

    .line 270
    iget-object v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v3

    const/4 v6, 0x3

    if-le v3, v6, :cond_2

    move v3, v4

    :goto_2
    iput-boolean v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mShiftingMode:Z

    .line 271
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    iget-object v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 272
    iget-object v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mPresenter:Landroid/support/design/internal/BottomNavigationPresenter;

    invoke-virtual {v3, v4}, Landroid/support/design/internal/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    .line 273
    iget-object v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v3, v1}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 274
    iget-object v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mPresenter:Landroid/support/design/internal/BottomNavigationPresenter;

    invoke-virtual {v3, v5}, Landroid/support/design/internal/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    .line 275
    invoke-direct {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->getNewItem()Landroid/support/design/internal/BottomNavigationItemView;

    move-result-object v0

    .line 276
    .local v0, "child":Landroid/support/design/internal/BottomNavigationItemView;
    iget-object v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mButtons:[Landroid/support/design/internal/BottomNavigationItemView;

    aput-object v0, v3, v1

    .line 277
    iget-object v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mItemIconTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v3}, Landroid/support/design/internal/BottomNavigationItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 278
    iget-object v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mItemTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v3}, Landroid/support/design/internal/BottomNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 279
    iget v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mItemBackgroundRes:I

    invoke-virtual {v0, v3}, Landroid/support/design/internal/BottomNavigationItemView;->setItemBackground(I)V

    .line 280
    iget-boolean v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mShiftingMode:Z

    invoke-virtual {v0, v3}, Landroid/support/design/internal/BottomNavigationItemView;->setShiftingMode(Z)V

    .line 281
    iget-object v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v3, v1}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    check-cast v3, Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v0, v3, v5}, Landroid/support/design/internal/BottomNavigationItemView;->initialize(Landroid/support/v7/view/menu/MenuItemImpl;I)V

    .line 282
    invoke-virtual {v0, v1}, Landroid/support/design/internal/BottomNavigationItemView;->setItemPosition(I)V

    .line 283
    iget-object v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/support/design/internal/BottomNavigationItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    invoke-virtual {p0, v0}, Landroid/support/design/internal/BottomNavigationMenuView;->addView(Landroid/view/View;)V

    .line 271
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .end local v0    # "child":Landroid/support/design/internal/BottomNavigationItemView;
    .end local v1    # "i":I
    :cond_2
    move v3, v5

    .line 270
    goto :goto_2

    .line 286
    .restart local v1    # "i":I
    :cond_3
    iget-object v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iget v5, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mSelectedItemPosition:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mSelectedItemPosition:I

    .line 287
    iget-object v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    iget v5, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mSelectedItemPosition:I

    invoke-virtual {v3, v5}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto/16 :goto_1
.end method

.method public getIconTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mItemIconTint:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getItemBackgroundRes()I
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mItemBackgroundRes:I

    return v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mItemTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getSelectedItemId()I
    .locals 1

    .prologue
    .line 328
    iget v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mSelectedItemId:I

    return v0
.end method

.method public getWindowAnimations()I
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public initialize(Landroid/support/v7/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;

    .prologue
    .line 105
    iput-object p1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 106
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v8, 0x0

    .line 162
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->getChildCount()I

    move-result v1

    .line 163
    .local v1, "count":I
    sub-int v5, p4, p2

    .line 164
    .local v5, "width":I
    sub-int v2, p5, p3

    .line 165
    .local v2, "height":I
    const/4 v4, 0x0

    .line 166
    .local v4, "used":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 167
    invoke-virtual {p0, v3}, Landroid/support/design/internal/BottomNavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 168
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    .line 171
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->f(Landroid/view/View;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 172
    sub-int v6, v5, v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int v7, v5, v4

    invoke-virtual {v0, v6, v8, v7, v2}, Landroid/view/View;->layout(IIII)V

    .line 176
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v4, v6

    .line 166
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 174
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v0, v4, v8, v6, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 178
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 21
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 110
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v17

    .line 111
    .local v17, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/internal/BottomNavigationMenuView;->getChildCount()I

    move-result v7

    .line 113
    .local v7, "count":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/design/internal/BottomNavigationMenuView;->mItemHeight:I

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    invoke-static/range {v18 .. v19}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 115
    .local v9, "heightSpec":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/design/internal/BottomNavigationMenuView;->mShiftingMode:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 116
    add-int/lit8 v11, v7, -0x1

    .line 117
    .local v11, "inactiveCount":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/design/internal/BottomNavigationMenuView;->mInactiveItemMinWidth:I

    move/from16 v18, v0

    mul-int v18, v18, v11

    sub-int v3, v17, v18

    .line 118
    .local v3, "activeMaxAvailable":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/design/internal/BottomNavigationMenuView;->mActiveItemMaxWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 119
    .local v4, "activeWidth":I
    sub-int v18, v17, v4

    div-int v12, v18, v11

    .line 120
    .local v12, "inactiveMaxAvailable":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/design/internal/BottomNavigationMenuView;->mInactiveItemMaxWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 121
    .local v13, "inactiveWidth":I
    sub-int v18, v17, v4

    mul-int v19, v13, v11

    sub-int v8, v18, v19

    .line 122
    .local v8, "extra":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v7, :cond_5

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/design/internal/BottomNavigationMenuView;->mTempChildWidths:[I

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/design/internal/BottomNavigationMenuView;->mSelectedItemPosition:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v10, v0, :cond_1

    move/from16 v18, v4

    :goto_1
    aput v18, v19, v10

    .line 124
    if-lez v8, :cond_0

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/design/internal/BottomNavigationMenuView;->mTempChildWidths:[I

    move-object/from16 v18, v0

    aget v19, v18, v10

    add-int/lit8 v19, v19, 0x1

    aput v19, v18, v10

    .line 126
    add-int/lit8 v8, v8, -0x1

    .line 122
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    move/from16 v18, v13

    .line 123
    goto :goto_1

    .line 130
    .end local v3    # "activeMaxAvailable":I
    .end local v4    # "activeWidth":I
    .end local v8    # "extra":I
    .end local v10    # "i":I
    .end local v11    # "inactiveCount":I
    .end local v12    # "inactiveMaxAvailable":I
    .end local v13    # "inactiveWidth":I
    :cond_2
    if-nez v7, :cond_4

    const/16 v18, 0x1

    :goto_2
    div-int v14, v17, v18

    .line 131
    .local v14, "maxAvailable":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/design/internal/BottomNavigationMenuView;->mActiveItemMaxWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 132
    .local v6, "childWidth":I
    mul-int v18, v6, v7

    sub-int v8, v17, v18

    .line 133
    .restart local v8    # "extra":I
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_3
    if-ge v10, v7, :cond_5

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/design/internal/BottomNavigationMenuView;->mTempChildWidths:[I

    move-object/from16 v18, v0

    aput v6, v18, v10

    .line 135
    if-lez v8, :cond_3

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/design/internal/BottomNavigationMenuView;->mTempChildWidths:[I

    move-object/from16 v18, v0

    aget v19, v18, v10

    add-int/lit8 v19, v19, 0x1

    aput v19, v18, v10

    .line 137
    add-int/lit8 v8, v8, -0x1

    .line 133
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .end local v6    # "childWidth":I
    .end local v8    # "extra":I
    .end local v10    # "i":I
    .end local v14    # "maxAvailable":I
    :cond_4
    move/from16 v18, v7

    .line 130
    goto :goto_2

    .line 142
    .restart local v8    # "extra":I
    .restart local v10    # "i":I
    :cond_5
    const/16 v16, 0x0

    .line 143
    .local v16, "totalWidth":I
    const/4 v10, 0x0

    :goto_4
    if-ge v10, v7, :cond_7

    .line 144
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/support/design/internal/BottomNavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 145
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_6

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/design/internal/BottomNavigationMenuView;->mTempChildWidths:[I

    move-object/from16 v18, v0

    aget v18, v18, v10

    const/high16 v19, 0x40000000    # 2.0f

    invoke-static/range {v18 .. v19}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v5, v0, v9}, Landroid/view/View;->measure(II)V

    .line 150
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .line 151
    .local v15, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    move/from16 v0, v18

    iput v0, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 152
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    add-int v16, v16, v18

    .line 143
    .end local v15    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 154
    .end local v5    # "child":Landroid/view/View;
    :cond_7
    const/high16 v18, 0x40000000    # 2.0f

    .line 156
    move/from16 v0, v16

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    const/16 v19, 0x0

    .line 155
    move/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/design/internal/BottomNavigationMenuView;->mItemHeight:I

    move/from16 v19, v0

    const/16 v20, 0x0

    .line 157
    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v9, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v19

    .line 154
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/support/design/internal/BottomNavigationMenuView;->setMeasuredDimension(II)V

    .line 158
    return-void
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 191
    iput-object p1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mItemIconTint:Landroid/content/res/ColorStateList;

    .line 192
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mButtons:[Landroid/support/design/internal/BottomNavigationItemView;

    if-nez v1, :cond_1

    .line 196
    :cond_0
    return-void

    .line 193
    :cond_1
    iget-object v2, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mButtons:[Landroid/support/design/internal/BottomNavigationItemView;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 194
    .local v0, "item":Landroid/support/design/internal/BottomNavigationItemView;
    invoke-virtual {v0, p1}, Landroid/support/design/internal/BottomNavigationItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 193
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setItemBackgroundRes(I)V
    .locals 4
    .param p1, "background"    # I

    .prologue
    .line 236
    iput p1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mItemBackgroundRes:I

    .line 237
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mButtons:[Landroid/support/design/internal/BottomNavigationItemView;

    if-nez v1, :cond_1

    .line 241
    :cond_0
    return-void

    .line 238
    :cond_1
    iget-object v2, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mButtons:[Landroid/support/design/internal/BottomNavigationItemView;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 239
    .local v0, "item":Landroid/support/design/internal/BottomNavigationItemView;
    invoke-virtual {v0, p1}, Landroid/support/design/internal/BottomNavigationItemView;->setItemBackground(I)V

    .line 238
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 214
    iput-object p1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mItemTextColor:Landroid/content/res/ColorStateList;

    .line 215
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mButtons:[Landroid/support/design/internal/BottomNavigationItemView;

    if-nez v1, :cond_1

    .line 219
    :cond_0
    return-void

    .line 216
    :cond_1
    iget-object v2, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mButtons:[Landroid/support/design/internal/BottomNavigationItemView;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 217
    .local v0, "item":Landroid/support/design/internal/BottomNavigationItemView;
    invoke-virtual {v0, p1}, Landroid/support/design/internal/BottomNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 216
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setPresenter(Landroid/support/design/internal/BottomNavigationPresenter;)V
    .locals 0
    .param p1, "presenter"    # Landroid/support/design/internal/BottomNavigationPresenter;

    .prologue
    .line 253
    iput-object p1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mPresenter:Landroid/support/design/internal/BottomNavigationPresenter;

    .line 254
    return-void
.end method

.method tryRestoreSelectedItemId(I)V
    .locals 4
    .param p1, "itemId"    # I

    .prologue
    .line 332
    iget-object v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v2

    .line 333
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 334
    iget-object v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v3, v0}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 335
    .local v1, "item":Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    if-ne p1, v3, :cond_1

    .line 336
    iput p1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mSelectedItemId:I

    .line 337
    iput v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mSelectedItemPosition:I

    .line 338
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 342
    .end local v1    # "item":Landroid/view/MenuItem;
    :cond_0
    return-void

    .line 333
    .restart local v1    # "item":Landroid/view/MenuItem;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public updateMenuView()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 291
    iget-object v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v2

    .line 292
    .local v2, "menuSize":I
    iget-object v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mButtons:[Landroid/support/design/internal/BottomNavigationItemView;

    array-length v4, v4

    if-eq v2, v4, :cond_1

    .line 294
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->buildMenuView()V

    .line 317
    :cond_0
    return-void

    .line 297
    :cond_1
    iget v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mSelectedItemId:I

    .line 299
    .local v3, "previousSelectedId":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 300
    iget-object v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v4, v0}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 301
    .local v1, "item":Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 302
    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    iput v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mSelectedItemId:I

    .line 303
    iput v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mSelectedItemPosition:I

    .line 299
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 306
    .end local v1    # "item":Landroid/view/MenuItem;
    :cond_3
    iget v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mSelectedItemId:I

    if-eq v3, v4, :cond_4

    .line 308
    iget-object v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mSet:Landroid/support/transition/TransitionSet;

    invoke-static {p0, v4}, Lbe;->a(Landroid/view/ViewGroup;Landroid/support/transition/Transition;)V

    .line 311
    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_0

    .line 312
    iget-object v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mPresenter:Landroid/support/design/internal/BottomNavigationPresenter;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/support/design/internal/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    .line 313
    iget-object v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mButtons:[Landroid/support/design/internal/BottomNavigationItemView;

    aget-object v5, v4, v0

    iget-object v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v4, v0}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    check-cast v4, Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v5, v4, v6}, Landroid/support/design/internal/BottomNavigationItemView;->initialize(Landroid/support/v7/view/menu/MenuItemImpl;I)V

    .line 314
    iget-object v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mPresenter:Landroid/support/design/internal/BottomNavigationPresenter;

    invoke-virtual {v4, v6}, Landroid/support/design/internal/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    .line 311
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
