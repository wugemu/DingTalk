.class public Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;
.super Ljava/lang/Object;
.source "WeexNavBarView.java"


# static fields
.field private static final FULLY_OPAQUE:I = 0xff

.field private static final FULLY_TRANSPARENT:I


# instance fields
.field private isDark:Z

.field private mActivity:Landroid/app/Activity;

.field private mBackView:Landroid/widget/TextView;

.field private mBackViewGroup:Landroid/widget/RelativeLayout;

.field private mCloseView:Landroid/widget/TextView;

.field private mCloseViewGroup:Landroid/widget/RelativeLayout;

.field private mContentBgView:Landroid/graphics/drawable/ColorDrawable;

.field private mHorizontalLine:Landroid/view/View;

.field private mItemTextView:Landroid/widget/TextView;

.field private mLeftImageView:Landroid/widget/ImageView;

.field private mMoreImageView:Landroid/widget/ImageView;

.field private mMoreTextView:Landroid/widget/TextView;

.field private mMoreViewGroup:Landroid/widget/RelativeLayout;

.field private mNavBarTitleLayout:Landroid/view/View;

.field private mNavbarcontentview:Landroid/view/View;

.field private mOptionMenuGroup:Landroid/widget/RelativeLayout;

.field private mOptionMenuImageView:Landroid/widget/ImageView;

.field private mRightIcon:Ljava/lang/String;

.field private mRightMoreIcon:Ljava/lang/String;

.field private mRightMoreText:Ljava/lang/String;

.field private mRightText:Ljava/lang/String;

.field private mStatusBarAdjustView:Landroid/view/View;

.field private mTitleTextView:Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;

.field private mVerticalLine:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mContentBgView:Landroid/graphics/drawable/ColorDrawable;

    move-object v0, p1

    .line 64
    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mActivity:Landroid/app/Activity;

    .line 66
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lhdn$e;->lightapp_actionbar_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mContentBgView:Landroid/graphics/drawable/ColorDrawable;

    .line 67
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mActivity:Landroid/app/Activity;

    sget v1, Lhdn$i;->miniapp_toolbar_layout:I

    invoke-static {v0, v1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mNavbarcontentview:Landroid/view/View;

    .line 68
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mNavbarcontentview:Landroid/view/View;

    sget v1, Lhdn$h;->toolbar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mNavBarTitleLayout:Landroid/view/View;

    .line 69
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mNavbarcontentview:Landroid/view/View;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mContentBgView:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mNavbarcontentview:Landroid/view/View;

    sget v1, Lhdn$h;->h5_status_bar_adjust_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mStatusBarAdjustView:Landroid/view/View;

    .line 73
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mNavbarcontentview:Landroid/view/View;

    sget v1, Lhdn$h;->vertical_line:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mVerticalLine:Landroid/view/View;

    .line 74
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mNavbarcontentview:Landroid/view/View;

    sget v1, Lhdn$h;->horizontal_line:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mHorizontalLine:Landroid/view/View;

    .line 76
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mNavbarcontentview:Landroid/view/View;

    sget v1, Lhdn$h;->more_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mMoreViewGroup:Landroid/widget/RelativeLayout;

    .line 77
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mNavbarcontentview:Landroid/view/View;

    sget v1, Lhdn$h;->back_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mBackViewGroup:Landroid/widget/RelativeLayout;

    .line 78
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mNavbarcontentview:Landroid/view/View;

    sget v1, Lhdn$h;->close_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mCloseViewGroup:Landroid/widget/RelativeLayout;

    .line 79
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mNavbarcontentview:Landroid/view/View;

    sget v1, Lhdn$h;->menu_right_item_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mOptionMenuGroup:Landroid/widget/RelativeLayout;

    .line 80
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mNavbarcontentview:Landroid/view/View;

    sget v1, Lhdn$h;->item_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mOptionMenuImageView:Landroid/widget/ImageView;

    .line 81
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mNavbarcontentview:Landroid/view/View;

    sget v1, Lhdn$h;->item_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mItemTextView:Landroid/widget/TextView;

    .line 82
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mNavbarcontentview:Landroid/view/View;

    sget v1, Lhdn$h;->back_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mBackView:Landroid/widget/TextView;

    .line 83
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mNavbarcontentview:Landroid/view/View;

    sget v1, Lhdn$h;->close_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mCloseView:Landroid/widget/TextView;

    .line 84
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mNavbarcontentview:Landroid/view/View;

    sget v1, Lhdn$h;->more_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mMoreImageView:Landroid/widget/ImageView;

    .line 85
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mNavbarcontentview:Landroid/view/View;

    sget v1, Lhdn$h;->more_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mMoreTextView:Landroid/widget/TextView;

    .line 86
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mNavbarcontentview:Landroid/view/View;

    sget v1, Lhdn$h;->title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mTitleTextView:Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;

    .line 87
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mTitleTextView:Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;

    new-instance v1, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView$1;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView$1;-><init>(Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;->setOnDoubleTapListener(Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView$b;)V

    .line 94
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mMoreViewGroup:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mMoreViewGroup:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView$2;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView$2;-><init>(Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mOptionMenuGroup:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView$3;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView$3;-><init>(Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mBackViewGroup:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView$4;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView$4;-><init>(Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mCloseViewGroup:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView$5;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView$5;-><init>(Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;)Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mTitleTextView:Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mOptionMenuImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mOptionMenuGroup:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mItemTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mMoreImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mMoreTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mMoreViewGroup:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mCloseViewGroup:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mLeftImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private doSwitchToBlueTheme()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 336
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->isDark:Z

    .line 337
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mActivity:Landroid/app/Activity;

    iget-boolean v1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->isDark:Z

    invoke-static {v0, v1}, Ljrd;->a(Landroid/app/Activity;Z)Z

    .line 338
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mTitleTextView:Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lhdn$e;->text_color_black:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;->setTextColor(I)V

    .line 339
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mItemTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lhdn$e;->ui_common_theme_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 340
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mMoreTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lhdn$e;->ui_common_theme_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 342
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mBackView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lhdn$e;->ui_common_theme_icon_bg_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 343
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mCloseView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lhdn$e;->ui_common_theme_icon_bg_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 344
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mMoreImageView:Landroid/widget/ImageView;

    sget v1, Lhdn$g;->menu_overflow:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 345
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mBackViewGroup:Landroid/widget/RelativeLayout;

    sget v1, Lhdn$g;->ui_common_action_icon_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 346
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mCloseViewGroup:Landroid/widget/RelativeLayout;

    sget v1, Lhdn$g;->ui_common_action_icon_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 347
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mMoreViewGroup:Landroid/widget/RelativeLayout;

    sget v1, Lhdn$g;->ui_common_action_icon_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 348
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mOptionMenuGroup:Landroid/widget/RelativeLayout;

    sget v1, Lhdn$g;->ui_common_action_icon_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 349
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mRightMoreIcon:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mRightMoreIcon:Ljava/lang/String;

    new-instance v1, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView$12;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView$12;-><init>(Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;)V

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->loadImage(Ljava/lang/String;Lioi;)V

    .line 357
    :cond_0
    return-void
.end method

.method private doSwitchToWhiteTheme()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 360
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->isDark:Z

    .line 361
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mActivity:Landroid/app/Activity;

    iget-boolean v3, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->isDark:Z

    invoke-static {v2, v3}, Ljrd;->a(Landroid/app/Activity;Z)Z

    .line 362
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mTitleTextView:Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lhdn$e;->white:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;->setTextColor(I)V

    .line 363
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mItemTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lhdn$e;->white:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 364
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mMoreTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lhdn$e;->white:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 365
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mBackView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lhdn$e;->ui_common_inverse_content_fg_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 366
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mCloseView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lhdn$e;->ui_common_inverse_content_fg_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 367
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mMoreImageView:Landroid/widget/ImageView;

    sget v3, Lhdn$g;->ic_actbar_light_white_setting:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 370
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mContentBgView:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    .line 372
    .local v0, "colorInt":I
    const v2, 0x3f19999a    # 0.6f

    invoke-static {v0, v2}, Lhdo;->a(IF)I

    move-result v1

    .line 373
    .local v1, "selectedBgColor":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_1

    .line 374
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mBackViewGroup:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lhdo;->a(II)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 375
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mCloseViewGroup:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lhdo;->a(II)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 376
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mMoreViewGroup:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lhdo;->a(II)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 377
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mOptionMenuGroup:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lhdo;->a(II)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 385
    :goto_0
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mRightMoreIcon:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 386
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mRightMoreIcon:Ljava/lang/String;

    new-instance v3, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView$13;

    invoke-direct {v3, p0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView$13;-><init>(Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;)V

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->loadImage(Ljava/lang/String;Lioi;)V

    .line 393
    :cond_0
    return-void

    .line 379
    :cond_1
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mBackViewGroup:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lhdo;->a(II)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 380
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mCloseViewGroup:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lhdo;->a(II)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 381
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mMoreViewGroup:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lhdo;->a(II)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 382
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mOptionMenuGroup:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lhdo;->a(II)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private isShowOrigin(I)Z
    .locals 10
    .param p1, "colorInt"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 406
    const/4 v4, 0x3

    new-array v2, v4, [F

    .line 407
    .local v2, "hsv":[F
    invoke-static {p1, v2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 408
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x2

    aget v5, v2, v5

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    aget v6, v2, v3

    float-to-double v6, v6

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 409
    .local v0, "d":D
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpg-double v4, v0, v4

    if-gez v4, :cond_0

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private setBackgroundColor(I)V
    .locals 4
    .param p1, "colorInt"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 314
    :try_start_0
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mContentBgView:Landroid/graphics/drawable/ColorDrawable;

    .line 315
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mNavbarcontentview:Landroid/view/View;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mContentBgView:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 317
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mNavBarTitleLayout:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 318
    const v2, 0x3f59999a    # 0.85f

    invoke-static {p1, v2}, Lhdo;->a(IF)I

    move-result v1

    .line 319
    .local v1, "stateBarColor":I
    invoke-direct {p0, v1}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->setStatusBarTint(I)V

    .line 322
    .end local v1    # "stateBarColor":I
    :cond_0
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->isShowOrigin(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 323
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->doSwitchToBlueTheme()V

    .line 333
    :goto_0
    return-void

    .line 326
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->doSwitchToWhiteTheme()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 330
    :catch_0
    move-exception v0

    .line 331
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setStatusBarTint(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 396
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->setImmersiveStatusBarBackgroundColor(I)V

    .line 399
    :cond_0
    return-void
.end method


# virtual methods
.method public addRightButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "icon"    # Ljava/lang/String;
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mMoreViewGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mMoreImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mRightIcon:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mRightText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mRightMoreIcon:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 160
    :cond_1
    new-instance v0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView$8;

    invoke-direct {v0, p0, p2}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView$8;-><init>(Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;Landroid/view/View$OnClickListener;)V

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->loadImage(Ljava/lang/String;Lioi;)V

    .line 189
    :goto_0
    return-void

    .line 173
    :cond_2
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mRightMoreIcon:Ljava/lang/String;

    .line 174
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mRightIcon:Ljava/lang/String;

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mRightText:Ljava/lang/String;

    .line 176
    new-instance v0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView$9;

    invoke-direct {v0, p0, p2}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView$9;-><init>(Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;Landroid/view/View$OnClickListener;)V

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->loadImage(Ljava/lang/String;Lioi;)V

    goto :goto_0
.end method

.method public addRightText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 220
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mMoreViewGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mMoreImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mRightIcon:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mRightText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mRightMoreText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mItemTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mItemTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mOptionMenuImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mOptionMenuGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mOptionMenuGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 237
    :goto_0
    return-void

    .line 228
    :cond_2
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mMoreImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mRightIcon:Ljava/lang/String;

    .line 230
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mRightText:Ljava/lang/String;

    .line 231
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mRightMoreText:Ljava/lang/String;

    .line 232
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mMoreTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mMoreTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mMoreViewGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mMoreViewGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mNavbarcontentview:Landroid/view/View;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mNavBarTitleLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public getTitleLayout()Landroid/view/View;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mNavBarTitleLayout:Landroid/view/View;

    return-object v0
.end method

.method public onResume()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 402
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mActivity:Landroid/app/Activity;

    iget-boolean v1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->isDark:Z

    invoke-static {v0, v1}, Ljrd;->a(Landroid/app/Activity;Z)Z

    .line 403
    return-void
.end method

.method public resetRightButton()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 192
    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mRightMoreIcon:Ljava/lang/String;

    .line 193
    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mRightMoreText:Ljava/lang/String;

    .line 194
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mOptionMenuGroup:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 195
    return-void
.end method

.method public resetTitleColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 294
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->setBackgroundColor(I)V

    .line 295
    return-void
.end method

.method public setActionbarBg(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 291
    return-void
.end method

.method public setLeftButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "icon"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 240
    new-instance v0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView$11;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView$11;-><init>(Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;)V

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->loadImage(Ljava/lang/String;Lioi;)V

    .line 249
    return-void
.end method

.method public setLeftText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 252
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mCloseView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mCloseViewGroup:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mCloseViewGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    return-void
.end method

.method public setRightButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "icon"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 144
    new-instance v0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView$7;

    invoke-direct {v0, p0, p2}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView$7;-><init>(Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;Landroid/view/View$OnClickListener;)V

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->loadImage(Ljava/lang/String;Lioi;)V

    .line 156
    return-void
.end method

.method public setRightText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 198
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mItemTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mItemTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mOptionMenuImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mOptionMenuGroup:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView$10;

    invoke-direct {v1, p0, p2}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView$10;-><init>(Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mOptionMenuGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 217
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 286
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mTitleTextView:Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;

    invoke-virtual {v0, p1}, Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    return-void
.end method

.method public setTitleIcon(Ljava/lang/String;)V
    .locals 1
    .param p1, "icon"    # Ljava/lang/String;

    .prologue
    .line 128
    new-instance v0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView$6;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView$6;-><init>(Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;)V

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->loadImage(Ljava/lang/String;Lioi;)V

    .line 135
    return-void
.end method

.method public setTranslucent(Z)V
    .locals 3
    .param p1, "isTranslucent"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v2, 0xff

    const/4 v1, 0x0

    .line 266
    if-eqz p1, :cond_0

    .line 267
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mBackViewGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 268
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mCloseViewGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 269
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mMoreViewGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 270
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mOptionMenuGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 271
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mNavbarcontentview:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 279
    :goto_0
    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mBackViewGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 274
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mCloseViewGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 275
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mMoreViewGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 276
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mOptionMenuGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 277
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mNavbarcontentview:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0
.end method

.method public showActionbar(Z)V
    .locals 2
    .param p1, "isShow"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 298
    if-eqz p1, :cond_0

    .line 299
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mNavbarcontentview:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 304
    :goto_0
    return-void

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mNavbarcontentview:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showMoreView(Z)V
    .locals 2
    .param p1, "isShown"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mMoreImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 139
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->mMoreViewGroup:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 141
    :cond_0
    return-void

    .line 139
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method
