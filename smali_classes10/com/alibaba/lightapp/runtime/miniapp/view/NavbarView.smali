.class public Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;
.super Ljava/lang/Object;
.source "NavbarView.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/view/H5TitleView;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Liop;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/TextView;

.field private i:Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/RelativeLayout;

.field private l:Landroid/widget/RelativeLayout;

.field private m:Landroid/widget/RelativeLayout;

.field private n:Landroid/widget/RelativeLayout;

.field private o:Landroid/widget/RelativeLayout;

.field private p:Landroid/view/View;

.field private q:Landroid/view/View;

.field private r:Z

.field private s:Landroid/graphics/drawable/ColorDrawable;

.field private t:Landroid/widget/ListPopupWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->r:Z

    .line 131
    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->s:Landroid/graphics/drawable/ColorDrawable;

    move-object v0, p1

    .line 137
    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->a:Landroid/app/Activity;

    .line 139
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/nebula/R$color;->h5_nav_bar:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->s:Landroid/graphics/drawable/ColorDrawable;

    .line 140
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->a:Landroid/app/Activity;

    sget v1, Lhdn$i;->miniapp_toolbar_layout:I

    invoke-static {v0, v1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->c:Landroid/view/View;

    .line 141
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->c:Landroid/view/View;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->s:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 143
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->c:Landroid/view/View;

    sget v1, Lhdn$h;->vertical_line:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->p:Landroid/view/View;

    .line 144
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->c:Landroid/view/View;

    sget v1, Lhdn$h;->horizontal_line:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->q:Landroid/view/View;

    .line 146
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->c:Landroid/view/View;

    sget v1, Lhdn$h;->more_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->l:Landroid/widget/RelativeLayout;

    .line 147
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->c:Landroid/view/View;

    sget v1, Lhdn$h;->back_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->o:Landroid/widget/RelativeLayout;

    .line 148
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->c:Landroid/view/View;

    sget v1, Lhdn$h;->close_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->n:Landroid/widget/RelativeLayout;

    .line 150
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->c:Landroid/view/View;

    sget v1, Lhdn$h;->menu_right_item_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->m:Landroid/widget/RelativeLayout;

    .line 151
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->c:Landroid/view/View;

    sget v1, Lhdn$h;->item_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->g:Landroid/widget/ImageView;

    .line 152
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->c:Landroid/view/View;

    sget v1, Lhdn$h;->item_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->j:Landroid/widget/TextView;

    .line 153
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->c:Landroid/view/View;

    sget v1, Lhdn$h;->back_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->d:Landroid/widget/TextView;

    .line 154
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->c:Landroid/view/View;

    sget v1, Lhdn$h;->close_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->e:Landroid/widget/TextView;

    .line 155
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->c:Landroid/view/View;

    sget v1, Lhdn$h;->more_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->f:Landroid/widget/ImageView;

    .line 156
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->c:Landroid/view/View;

    sget v1, Lhdn$h;->more_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->h:Landroid/widget/TextView;

    .line 157
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->c:Landroid/view/View;

    sget v1, Lhdn$h;->title_wrapper_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->k:Landroid/widget/RelativeLayout;

    .line 158
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->c:Landroid/view/View;

    sget v1, Lhdn$h;->title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->i:Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;

    .line 159
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->i:Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;

    new-instance v1, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView$1;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView$1;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;->setOnDoubleTapListener(Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView$b;)V

    .line 166
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->l:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView$5;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView$5;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->m:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView$6;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView$6;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->o:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView$7;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView$7;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->n:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView$8;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView$8;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->a()V

    .line 194
    return-void
.end method

.method private a(Lhoo;)I
    .locals 13
    .param p1, "dropMenuAdapter"    # Lhoo;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v11, 0x0

    .line 1000
    const/4 v7, 0x0

    .line 1001
    .local v7, "mMeasureParent":Landroid/view/ViewGroup;
    const/4 v8, 0x0

    .line 1002
    .local v8, "maxWidth":I
    const/4 v5, 0x0

    .line 1003
    .local v5, "itemView":Landroid/view/View;
    const/4 v4, 0x0

    .line 1005
    .local v4, "itemType":I
    move-object v0, p1

    .line 1006
    .local v0, "adapter":Landroid/widget/ListAdapter;
    invoke-static {v11, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 1007
    .local v10, "widthMeasureSpec":I
    invoke-static {v11, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1008
    .local v2, "heightMeasureSpec":I
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 1009
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 1010
    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v9

    .line 1011
    .local v9, "positionType":I
    if-eq v9, v4, :cond_0

    .line 1012
    move v4, v9

    .line 1013
    const/4 v5, 0x0

    .line 1016
    :cond_0
    if-nez v7, :cond_1

    .line 1017
    new-instance v7, Landroid/widget/FrameLayout;

    .end local v7    # "mMeasureParent":Landroid/view/ViewGroup;
    iget-object v11, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->a:Landroid/app/Activity;

    invoke-direct {v7, v11}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1020
    .restart local v7    # "mMeasureParent":Landroid/view/ViewGroup;
    :cond_1
    invoke-interface {v0, v3, v5, v7}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 1021
    invoke-virtual {v5, v10, v2}, Landroid/view/View;->measure(II)V

    .line 1023
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 1025
    .local v6, "itemWidth":I
    if-le v6, v8, :cond_2

    .line 1026
    move v8, v6

    .line 1009
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1030
    .end local v6    # "itemWidth":I
    .end local v9    # "positionType":I
    :cond_3
    iget-object v11, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->a:Landroid/app/Activity;

    const/high16 v12, 0x40800000    # 4.0f

    invoke-static {v11, v12}, Lcms;->c(Landroid/content/Context;F)I

    move-result v11

    add-int/2addr v11, v8

    return v11
.end method

.method private static a(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 784
    if-nez p0, :cond_0

    .line 785
    const/4 v0, 0x0

    .line 798
    :goto_0
    return-object v0

    .line 787
    :cond_0
    const/4 v0, 0x0

    .line 789
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 790
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 789
    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 791
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 792
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 793
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :catch_0
    move-exception v2

    .line 794
    .local v2, "outOfMemoryError":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 795
    const-string/jumbo v3, "NavbarView"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "genBitmapFromView"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "oom =>"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lhmv;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 461
    invoke-static {}, Lcaa;->a()Lcaa;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView$10;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView$10;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;)V

    invoke-virtual {v0, v1}, Lcaa;->post(Ljava/lang/Runnable;)Z

    .line 476
    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;

    .prologue
    .line 91
    .line 2979
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2985
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->b:Liop;

    if-eqz v0, :cond_1

    .line 2986
    const-string/jumbo v0, "h5ToolbarBack"

    .line 2987
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->b:Liop;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Liop;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 2994
    :cond_0
    :goto_0
    return-void

    .line 2989
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2991
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2992
    :catch_0
    move-exception v0

    .line 2993
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;Landroid/view/View;)V
    .locals 13
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 91
    .line 2563
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->a:Landroid/app/Activity;

    if-eqz v0, :cond_4

    .line 2567
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->t:Landroid/widget/ListPopupWindow;

    if-nez v0, :cond_3

    .line 2568
    new-instance v0, Landroid/widget/ListPopupWindow;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->a:Landroid/app/Activity;

    const/4 v4, 0x0

    sget v5, Landroid/support/v7/appcompat/R$attr;->listPopupWindowStyle:I

    sget v6, Lhdn$l;->NavListPopupWindow:I

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->t:Landroid/widget/ListPopupWindow;

    .line 2570
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->t:Landroid/widget/ListPopupWindow;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->a:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lhdn$g;->nav_more_drop_bg:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2619
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2655
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->b:Liop;

    if-eqz v0, :cond_5

    .line 2656
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->b:Liop;

    invoke-interface {v0}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v0

    .line 2657
    if-eqz v0, :cond_5

    const-string/jumbo v3, "keepAlive"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2658
    const-string/jumbo v3, "keepAlive"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2659
    const-string/jumbo v3, "false"

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v5, v2

    .line 2622
    :goto_0
    if-eqz v5, :cond_6

    const-string/jumbo v0, "miniapp_minimize_disable"

    invoke-static {v0, v1}, Lhdo;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    move v4, v1

    .line 2623
    :goto_1
    if-eqz v5, :cond_7

    const-string/jumbo v0, "miniapp_back_im_disable"

    invoke-static {v0, v1}, Lhdo;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    .line 2627
    :goto_2
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->b:Liop;

    if-eqz v3, :cond_9

    .line 2628
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->b:Liop;

    invoke-interface {v3}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v3

    .line 2629
    if-eqz v3, :cond_9

    const-string/jumbo v7, "SHOW_SHARE_POP_MENU"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 2630
    const-string/jumbo v7, "SHOW_SHARE_POP_MENU"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 2634
    :goto_3
    const-string/jumbo v7, "NavbarView"

    const/16 v8, 0x9

    new-array v8, v8, [Ljava/lang/Object;

    const-string/jumbo v9, "createDropMenu"

    aput-object v9, v8, v2

    const-string/jumbo v2, "isBizKeepAlive="

    aput-object v2, v8, v1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v8, v10

    const-string/jumbo v2, "showMinimize="

    aput-object v2, v8, v11

    .line 2635
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v8, v12

    const/4 v2, 0x5

    const-string/jumbo v5, "showBackIm="

    aput-object v5, v8, v2

    const/4 v2, 0x6

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v8, v2

    const/4 v2, 0x7

    const-string/jumbo v5, "showShare="

    aput-object v5, v8, v2

    const/16 v2, 0x8

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v8, v2

    .line 2634
    invoke-static {v7, v8}, Lhmv;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2637
    if-eqz v4, :cond_0

    .line 2638
    new-instance v2, Lhoo$a;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->a:Landroid/app/Activity;

    sget v5, Lhdn$k;->lightapp_nav_drop_item_minimize:I

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lhdn$g;->nav_more_drop_item_minimize:I

    invoke-direct {v2, v1, v4, v5}, Lhoo$a;-><init>(ILjava/lang/String;I)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2641
    :cond_0
    if-eqz v0, :cond_1

    .line 2642
    new-instance v0, Lhoo$a;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->a:Landroid/app/Activity;

    sget v4, Lhdn$k;->lightapp_nav_drop_item_back_im:I

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v4, Lhdn$g;->nav_more_drop_item_back_im:I

    invoke-direct {v0, v10, v2, v4}, Lhoo$a;-><init>(ILjava/lang/String;I)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2645
    :cond_1
    if-eqz v3, :cond_2

    .line 2646
    new-instance v0, Lhoo$a;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->a:Landroid/app/Activity;

    sget v3, Lhdn$k;->lightapp_nav_drop_item_share:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lhdn$g;->nav_more_drop_item_share:I

    invoke-direct {v0, v11, v2, v3}, Lhoo$a;-><init>(ILjava/lang/String;I)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2649
    :cond_2
    new-instance v0, Lhoo$a;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->a:Landroid/app/Activity;

    sget v3, Lhdn$k;->lightapp_nav_drop_item_close_app:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lhdn$g;->nav_more_drop_item_close_app:I

    invoke-direct {v0, v12, v2, v3}, Lhoo$a;-><init>(ILjava/lang/String;I)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2573
    new-instance v0, Lhop;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->a:Landroid/app/Activity;

    invoke-direct {v0, v2, v6}, Lhop;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 2574
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->t:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2, v0}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2576
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lhdn$f;->nav_more_menu_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 2577
    invoke-direct {p0, v0}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->a(Lhoo;)I

    move-result v0

    .line 2579
    if-le v2, v0, :cond_8

    .line 2580
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->t:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 2581
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int v0, v2, v0

    .line 2586
    :goto_4
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->t:Landroid/widget/ListPopupWindow;

    neg-int v0, v0

    invoke-virtual {v2, v0}, Landroid/widget/ListPopupWindow;->setHorizontalOffset(I)V

    .line 2587
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->t:Landroid/widget/ListPopupWindow;

    const/4 v2, -0x2

    invoke-virtual {v0, v2}, Landroid/widget/ListPopupWindow;->setHeight(I)V

    .line 2588
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->t:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 2589
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->t:Landroid/widget/ListPopupWindow;

    .line 2590
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->t:Landroid/widget/ListPopupWindow;

    new-instance v2, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView$11;

    invoke-direct {v2, p0, v6, v0}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView$11;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;Ljava/util/List;Landroid/widget/ListPopupWindow;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2613
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->t:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 2615
    :cond_3
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->t:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    .line 91
    :cond_4
    return-void

    :cond_5
    move v5, v1

    .line 2664
    goto/16 :goto_0

    :cond_6
    move v4, v2

    .line 2622
    goto/16 :goto_1

    :cond_7
    move v0, v2

    .line 2623
    goto/16 :goto_2

    .line 2583
    :cond_8
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->t:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2, v0}, Landroid/widget/ListPopupWindow;->setContentWidth(I)V

    .line 2584
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    goto :goto_4

    :cond_9
    move v3, v2

    goto/16 :goto_3
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;Ljava/lang/String;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 91
    .line 13880
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 13881
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13882
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 13883
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 13884
    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13885
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->a:Landroid/app/Activity;

    invoke-static {v0, v1}, Lhou;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 13887
    const-string/jumbo v1, "NavbarView"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string/jumbo v3, "float_onClick"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v3, "RuntimeNavigator.open , name="

    aput-object v3, v2, v0

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->a:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->a:Landroid/app/Activity;

    .line 13888
    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v2, v3

    .line 13887
    invoke-static {v1, v2}, Lhmv;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    :cond_0
    return-void

    .line 13888
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 5
    .param p1, "optionMenuPath"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 418
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 419
    const-string/jumbo v3, "http"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 420
    const-string/jumbo v3, "IMAGE"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 421
    .local v2, "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->g:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-interface {v2, v3, p1, v4}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageBackground(Landroid/view/View;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 444
    .end local v2    # "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->g:Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    .line 445
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->g:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 447
    :cond_1
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->j:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 448
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->j:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 451
    :cond_2
    return-void

    .line 423
    :cond_3
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->b:Liop;

    if-eqz v3, :cond_0

    .line 424
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->b:Liop;

    invoke-interface {v3}, Liop;->getSession()Lipc;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    .line 425
    .local v1, "h5Session":Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;
    if-eqz v1, :cond_0

    .line 426
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getWebProvider()Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;

    move-result-object v0

    .line 427
    .local v0, "h5ContentProvider":Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;
    if-eqz v0, :cond_0

    .line 428
    new-instance v3, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView$9;

    invoke-direct {v3, p0}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView$9;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;)V

    invoke-interface {v0, p1, v3}, Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;->getContent(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;)V

    goto :goto_0
.end method

.method private a(Z)V
    .locals 2
    .param p1, "show"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 454
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->l:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 455
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->l:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 456
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->a()V

    .line 458
    :cond_0
    return-void

    .line 455
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "miniAppId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 936
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 937
    const/4 v5, 0x0

    .line 966
    :goto_0
    return-object v5

    .line 941
    :cond_0
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i(Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    move-result-object v0

    .line 942
    .local v0, "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    if-eqz v0, :cond_2

    .line 943
    invoke-static {}, Lhlt;->a()Lhlt;

    iget-wide v6, v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    iget-wide v8, v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->agent:J

    .line 944
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->corpId:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 943
    invoke-static {v6, v7, v8}, Lhlt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 949
    .local v5, "url":Ljava/lang/String;
    :goto_1
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->b:Liop;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->b:Liop;

    invoke-interface {v6}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 950
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->b:Liop;

    invoke-interface {v6}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "query"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 952
    .local v1, "query":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 954
    :try_start_0
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 955
    .local v3, "uri":Landroid/net/Uri;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 956
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    .line 957
    .local v4, "uriBuilder":Landroid/net/Uri$Builder;
    const-string/jumbo v6, "query"

    invoke-virtual {v4, v6, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 965
    .end local v1    # "query":Ljava/lang/String;
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v4    # "uriBuilder":Landroid/net/Uri$Builder;
    :cond_1
    :goto_2
    const-string/jumbo v6, "NavbarView"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "wrapperKeepAliveUrl"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string/jumbo v9, "url="

    aput-object v9, v7, v8

    const/4 v8, 0x2

    aput-object v5, v7, v8

    const/4 v8, 0x3

    const-string/jumbo v9, "miniAppId="

    aput-object v9, v7, v8

    const/4 v8, 0x4

    aput-object p1, v7, v8

    .line 2082
    const-string/jumbo v8, "mini_task"

    invoke-static {v8, v6, v7}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 946
    .end local v5    # "url":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lhlt;->a()Lhlt;

    invoke-static {p1}, Lhlt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "url":Ljava/lang/String;
    goto :goto_1

    .line 959
    .restart local v1    # "query":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 960
    .local v2, "t":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method private b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 499
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->i:Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lhdn$e;->text_color_black:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;->setTextColor(I)V

    .line 500
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lhdn$e;->ui_common_theme_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 501
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lhdn$e;->ui_common_theme_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 503
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lhdn$e;->ui_common_theme_icon_bg_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 504
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lhdn$e;->ui_common_theme_icon_bg_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 505
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->f:Landroid/widget/ImageView;

    sget v1, Lhdn$g;->menu_overflow:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 506
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->o:Landroid/widget/RelativeLayout;

    sget v1, Lhdn$g;->ui_common_action_icon_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 507
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->n:Landroid/widget/RelativeLayout;

    sget v1, Lhdn$g;->ui_common_action_icon_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 508
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->l:Landroid/widget/RelativeLayout;

    sget v1, Lhdn$g;->ui_common_action_icon_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 509
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->m:Landroid/widget/RelativeLayout;

    sget v1, Lhdn$g;->ui_common_action_icon_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 511
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->d()V

    .line 512
    return-void
.end method

.method static synthetic b(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 91
    .line 3668
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->a:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 3669
    const-string/jumbo v0, "NavbarView"

    new-array v3, v6, [Ljava/lang/Object;

    const-string/jumbo v4, "closeMicroApp"

    aput-object v4, v3, v1

    const-string/jumbo v1, "mActivity == null"

    aput-object v1, v3, v2

    .line 4082
    const-string/jumbo v1, "mini_task"

    invoke-static {v1, v0, v3}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3676
    :goto_0
    return-void

    .line 3674
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;

    if-eqz v0, :cond_1

    .line 3675
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 3679
    :cond_1
    const-string/jumbo v0, "miniapp_close_app_enable"

    invoke-static {v0, v1}, Lhdo;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 3680
    const-string/jumbo v3, "NavbarView"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "closeMicroApp"

    aput-object v5, v4, v1

    const-string/jumbo v5, "isEnableClose="

    aput-object v5, v4, v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v6

    .line 5082
    const-string/jumbo v5, "mini_task"

    invoke-static {v5, v3, v4}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3681
    if-eqz v0, :cond_3

    .line 3682
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->a:Landroid/app/Activity;

    invoke-static {v0}, Lhrf;->b(Landroid/app/Activity;)V

    .line 3700
    :cond_2
    :goto_1
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "Page_Home_Tiny_APP_Detail"

    const-string/jumbo v2, "open_tiny_app_close_click"

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->a:Landroid/app/Activity;

    .line 3701
    invoke-static {v3}, Lhom;->a(Landroid/app/Activity;)Ljava/util/Map;

    move-result-object v3

    .line 3700
    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->customEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 3684
    :cond_3
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->a:Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 3685
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->a:Landroid/app/Activity;

    .line 5705
    if-eqz v0, :cond_4

    .line 5706
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 5707
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 5708
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v3, "keepAlive"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5709
    const-string/jumbo v3, "false"

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 3686
    :goto_2
    const-string/jumbo v3, "NavbarView"

    new-array v4, v6, [Ljava/lang/Object;

    const-string/jumbo v5, "closeMicroApp & isKeepAlive="

    aput-object v5, v4, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v4, v2

    .line 6082
    const-string/jumbo v1, "mini_task"

    invoke-static {v1, v3, v4}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3687
    if-eqz v0, :cond_5

    .line 3689
    :try_start_0
    invoke-static {}, Lhlq;->a()Lhlq;

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->a:Landroid/app/Activity;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lhlq;->a(Landroid/app/Activity;ZZ)Z

    .line 3690
    invoke-static {}, Lhlq;->a()Lhlq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lhlq;->a(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3691
    :catch_0
    move-exception v0

    .line 3692
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_4
    move v0, v2

    .line 5714
    goto :goto_2

    .line 3695
    :cond_5
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->a:Landroid/app/Activity;

    invoke-static {v0}, Lhrf;->b(Landroid/app/Activity;)V

    goto :goto_1
.end method

.method static synthetic c(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->g:Landroid/widget/ImageView;

    return-object v0
.end method

.method private c()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 515
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->i:Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->a:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lhdn$e;->white:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;->setTextColor(I)V

    .line 516
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->j:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->a:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lhdn$e;->white:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 517
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->h:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->a:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lhdn$e;->white:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 518
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->d:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->a:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lhdn$e;->ui_common_inverse_content_fg_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 519
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->e:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->a:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lhdn$e;->ui_common_inverse_content_fg_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 520
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->f:Landroid/widget/ImageView;

    sget v3, Lhdn$g;->ic_actbar_light_white_setting:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 523
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->s:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    .line 525
    .local v0, "colorInt":I
    const v2, 0x3f19999a    # 0.6f

    invoke-static {v0, v2}, Lhdo;->a(IF)I

    move-result v1

    .line 526
    .local v1, "selectedBgColor":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    .line 527
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->o:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lhdo;->a(II)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 528
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->n:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lhdo;->a(II)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 529
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->l:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lhdo;->a(II)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 530
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->m:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lhdo;->a(II)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 538
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->d()V

    .line 539
    return-void

    .line 532
    :cond_0
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->o:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lhdo;->a(II)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 533
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->n:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lhdo;->a(II)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 534
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->l:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lhdo;->a(II)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 535
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->m:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lhdo;->a(II)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->o:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private d()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 542
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->a:Landroid/app/Activity;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->a:Landroid/app/Activity;

    instance-of v2, v2, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->s:Landroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_0

    .line 543
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->s:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    .line 544
    .local v0, "colorInt":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 545
    const v2, 0x3f59999a    # 0.85f

    invoke-static {v0, v2}, Lhdo;->a(IF)I

    move-result v1

    .line 546
    .local v1, "colorNor":I
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->a:Landroid/app/Activity;

    check-cast v2, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;

    invoke-virtual {v2, v1}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;->a(I)V

    .line 549
    .end local v0    # "colorInt":I
    .end local v1    # "colorNor":I
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->l:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private e()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 803
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->a:Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 812
    :goto_0
    return-void

    .line 807
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->a:Landroid/app/Activity;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lhrf;->a(Landroid/app/Activity;ZZ)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 811
    :goto_1
    invoke-static {}, Lhlq;->a()Lhlq;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->a:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lhlq;->a(Landroid/app/Activity;Z)V

    goto :goto_0

    .line 808
    :catch_0
    move-exception v0

    .line 809
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic f(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->m:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->k:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;

    .prologue
    const/4 v4, 0x1

    .line 91
    .line 6718
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 6722
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->a:Landroid/app/Activity;

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "android.permission.SYSTEM_ALERT_WINDOW"

    aput-object v3, v1, v2

    new-instance v2, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView$12;

    invoke-direct {v2, p0}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView$12;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;)V

    invoke-static {v0, v4, v1, v2}, Lbyy;->a(Landroid/app/Activity;I[Ljava/lang/String;Lbzc;)V

    .line 6737
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "Page_Home_Tiny_APP_Detail"

    const-string/jumbo v2, "open_tiny_app_min_click"

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->a:Landroid/app/Activity;

    .line 6738
    invoke-static {v3}, Lhom;->a(Landroid/app/Activity;)Ljava/util/Map;

    move-result-object v3

    .line 6737
    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->customEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 91
    :cond_0
    return-void
.end method

.method static synthetic i(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;)V
    .locals 9
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 91
    .line 6894
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->b:Liop;

    if-nez v0, :cond_1

    .line 6895
    :cond_0
    const-string/jumbo v0, "NavbarView"

    new-array v1, v7, [Ljava/lang/Object;

    const-string/jumbo v2, "backIm"

    aput-object v2, v1, v5

    const-string/jumbo v2, "mActivity == null || mH5Page == null"

    aput-object v2, v1, v6

    .line 7082
    const-string/jumbo v2, "mini_task"

    invoke-static {v2, v0, v1}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6896
    :goto_0
    return-void

    .line 6899
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->b:Liop;

    invoke-interface {v0}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v0

    .line 6900
    const-string/jumbo v1, "appId"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6901
    invoke-direct {p0, v0}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6902
    const-string/jumbo v2, "NavbarView"

    new-array v3, v8, [Ljava/lang/Object;

    const-string/jumbo v4, "backIm"

    aput-object v4, v3, v5

    const-string/jumbo v4, "url="

    aput-object v4, v3, v6

    aput-object v1, v3, v7

    .line 8082
    const-string/jumbo v4, "mini_task"

    invoke-static {v4, v2, v3}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6904
    invoke-static {v0}, Lhom;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6905
    new-array v2, v8, [Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->a:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lhdn$k;->dt_open_application_doing:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const-string/jumbo v3, " "

    aput-object v3, v2, v6

    aput-object v0, v2, v7

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6907
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.workapp.lightapp.microapp.TOP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6908
    const-string/jumbo v3, "url"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6909
    const-string/jumbo v1, "title"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6911
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    invoke-virtual {v0, v2}, Ldq;->a(Landroid/content/Intent;)Z

    .line 6913
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->a:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/ding/home.html"

    new-instance v2, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView$4;

    invoke-direct {v2, p0}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView$4;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;)V

    .line 6914
    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 6924
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->e()V

    .line 6926
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "Page_Home_Tiny_APP_Detail"

    const-string/jumbo v2, "open_tiny_app_back_im_click"

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->a:Landroid/app/Activity;

    .line 6927
    invoke-static {v3}, Lhom;->a(Landroid/app/Activity;)Ljava/util/Map;

    move-result-object v3

    .line 6926
    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->customEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0
.end method

.method static synthetic j(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;

    .prologue
    .line 91
    .line 8970
    invoke-static {}, Lhlt;->a()Lhlt;

    move-result-object v0

    const-string/jumbo v1, "onDDShare"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lhlt;->a(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 8972
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "Page_Home_Tiny_APP_Detail"

    const-string/jumbo v2, "open_tiny_app_share_click"

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->a:Landroid/app/Activity;

    .line 8973
    invoke-static {v3}, Lhom;->a(Landroid/app/Activity;)Ljava/util/Map;

    move-result-object v3

    .line 8972
    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->customEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 91
    return-void
.end method

.method static synthetic k(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;

    .prologue
    .line 91
    .line 9742
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 9744
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 9745
    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 9746
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    .line 9747
    new-instance v2, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView$2;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView$2;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;Landroid/graphics/Bitmap;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 91
    :cond_0
    return-void
.end method

.method static synthetic l(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->e()V

    return-void
.end method

.method static synthetic n(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;

    .prologue
    .line 91
    .line 9815
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->a:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 9816
    const-string/jumbo v0, "NavbarView"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "showFloatingLayer"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "mActivity == null"

    aput-object v3, v1, v2

    .line 10082
    const-string/jumbo v2, "mini_task"

    invoke-static {v2, v0, v1}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9817
    :goto_0
    return-void

    .line 9821
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->b:Liop;

    if-eqz v0, :cond_1

    .line 9822
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->b:Liop;

    invoke-interface {v0}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v0

    .line 9823
    const-string/jumbo v1, "appId"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9824
    invoke-static {}, Lheh;->a()Lheh;

    move-result-object v1

    .line 10168
    iput-object v0, v1, Lheh;->f:Ljava/lang/String;

    .line 9825
    invoke-static {v0}, Lhom;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9829
    :goto_1
    invoke-static {}, Lheh;->a()Lheh;

    move-result-object v1

    .line 11156
    iput-object v0, v1, Lheh;->e:Ljava/lang/String;

    .line 12044
    invoke-static {}, Lhee$a;->a()Lhee;

    move-result-object v0

    .line 9831
    new-instance v1, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView$3;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView$3;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;)V

    .line 12072
    iput-object v1, v0, Lhee;->b:Lheg;

    .line 13044
    invoke-static {}, Lhee$a;->a()Lhee;

    move-result-object v0

    .line 9876
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lhee;->a(Landroid/app/Activity;)V

    goto :goto_0

    .line 9827
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->i:Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->i:Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string/jumbo v0, ""

    goto :goto_1
.end method

.method static synthetic o(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;)Liop;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->b:Liop;

    return-object v0
.end method


# virtual methods
.method public getContentBgView()Landroid/graphics/drawable/ColorDrawable;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->s:Landroid/graphics/drawable/ColorDrawable;

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->c:Landroid/view/View;

    return-object v0
.end method

.method public getDivider()Landroid/view/View;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->p:Landroid/view/View;

    return-object v0
.end method

.method public getHdividerInTitle()Landroid/view/View;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->q:Landroid/view/View;

    return-object v0
.end method

.method public getMainTitleView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->i:Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;

    return-object v0
.end method

.method public getOptionMenuContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 397
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPopAnchor()Landroid/view/View;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->l:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getSubTitleView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->i:Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->i:Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public openTranslucentStatusBarSupport(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 372
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->d()V

    .line 373
    return-void
.end method

.method public releaseViewList()V
    .locals 0

    .prologue
    .line 364
    return-void
.end method

.method public resetTitleColor(I)V
    .locals 8
    .param p1, "color"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 348
    .line 1552
    const/4 v1, 0x3

    :try_start_0
    new-array v1, v1, [F

    .line 1553
    invoke-static {p1, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 1554
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x2

    aget v3, v1, v3

    sub-float/2addr v2, v3

    float-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const/4 v4, 0x1

    aget v1, v1, v4

    float-to-double v4, v1

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 1555
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    .line 1485
    :goto_0
    if-eqz v0, :cond_1

    .line 1486
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->b()V

    .line 1492
    :goto_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->c:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1495
    :goto_2
    return-void

    .line 1555
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1489
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1493
    :catch_0
    move-exception v0

    .line 1494
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public setBackCloseBtnImage(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 388
    return-void
.end method

.method public setBtIcon(Landroid/graphics/Bitmap;I)V
    .locals 0
    .param p1, "btIcon"    # Landroid/graphics/Bitmap;
    .param p2, "index"    # I

    .prologue
    .line 293
    return-void
.end method

.method public setH5Page(Liop;)V
    .locals 0
    .param p1, "h5Page"    # Liop;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->b:Liop;

    .line 298
    return-void
.end method

.method public setIH5TinyPopMenu(Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;)V
    .locals 0
    .param p1, "ih5TinyPopMenu"    # Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;

    .prologue
    .line 403
    return-void
.end method

.method public setImgTitle(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "imgTitle"    # Landroid/graphics/Bitmap;

    .prologue
    .line 214
    return-void
.end method

.method public setImgTitle(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0
    .param p1, "imgTitle"    # Landroid/graphics/Bitmap;
    .param p2, "contentDescription"    # Ljava/lang/String;

    .prologue
    .line 219
    return-void
.end method

.method public setOptionMenu(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 7
    .param p1, "params"    # Lcom/alibaba/fastjson/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 302
    if-eqz p1, :cond_1

    .line 303
    const-string/jumbo v5, "menus"

    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 305
    :try_start_0
    const-string/jumbo v5, "menus"

    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v3

    .line 306
    .local v3, "menus":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 307
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 308
    .local v1, "firstMenu":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v1, :cond_0

    .line 309
    const-string/jumbo v5, "icon"

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 310
    .local v2, "iconUrl":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    .end local v1    # "firstMenu":Lcom/alibaba/fastjson/JSONObject;
    .end local v2    # "iconUrl":Ljava/lang/String;
    .end local v3    # "menus":Lcom/alibaba/fastjson/JSONArray;
    :cond_0
    :goto_0
    const-string/jumbo v5, "showSystemMenu"

    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 326
    const-string/jumbo v5, "showSystemMenu"

    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->a(Z)V

    .line 329
    :cond_1
    return-void

    .line 313
    :catch_0
    move-exception v0

    .line 314
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 317
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const-string/jumbo v5, "title"

    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 318
    const-string/jumbo v5, "title"

    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1406
    .local v4, "text":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1407
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->j:Landroid/widget/TextView;

    if-eqz v5, :cond_3

    .line 1408
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->j:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1409
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->j:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1411
    :cond_3
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->g:Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    .line 1412
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->g:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 320
    .end local v4    # "text":Ljava/lang/String;
    :cond_4
    const-string/jumbo v5, "icon"

    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 321
    const-string/jumbo v5, "icon"

    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 322
    .restart local v2    # "iconUrl":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setOptionType(Lcom/alipay/mobile/h5container/api/H5Param$OptionType;)V
    .locals 0
    .param p1, "type"    # Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    .prologue
    .line 273
    return-void
.end method

.method public setOptionType(Lcom/alipay/mobile/h5container/api/H5Param$OptionType;IZ)V
    .locals 0
    .param p1, "type"    # Lcom/alipay/mobile/h5container/api/H5Param$OptionType;
    .param p2, "num"    # I
    .param p3, "byIndex"    # Z

    .prologue
    .line 278
    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "subTitle"    # Ljava/lang/String;

    .prologue
    .line 209
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->i:Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;

    invoke-virtual {v0, p1}, Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    return-void
.end method

.method public setTitleBarSearch(Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 382
    const/4 v0, 0x0

    return-object v0
.end method

.method public setTitleTxtColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 393
    return-void
.end method

.method public showBackButton(Z)V
    .locals 2
    .param p1, "visible"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 252
    if-eqz p1, :cond_0

    .line 253
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->o:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 257
    :goto_0
    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->o:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public showCloseButton(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 228
    return-void
.end method

.method public showOptionMenu(Z)V
    .locals 2
    .param p1, "visible"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 261
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->m:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 263
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->a()V

    .line 265
    invoke-static {}, Lhhq;->a()Lhhq;

    const-string/jumbo v0, "hybrid_set_option_menu_function_not_show_system_menu"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lhhq;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->a(Z)V

    .line 268
    :cond_0
    return-void

    .line 261
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showTitleDisclaimer(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 288
    return-void
.end method

.method public showTitleLoading(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 283
    return-void
.end method

.method public switchToBlueTheme()V
    .locals 0

    .prologue
    .line 358
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->b()V

    .line 359
    return-void
.end method

.method public switchToTitleBar()V
    .locals 0

    .prologue
    .line 378
    return-void
.end method

.method public switchToWhiteTheme()V
    .locals 0

    .prologue
    .line 353
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->c()V

    .line 354
    return-void
.end method
