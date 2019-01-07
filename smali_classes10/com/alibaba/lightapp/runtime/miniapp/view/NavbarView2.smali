.class public Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;
.super Ljava/lang/Object;
.source "NavbarView2.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/view/H5TitleView;


# instance fields
.field public a:Landroid/widget/RelativeLayout;

.field public b:Z

.field private c:Landroid/app/Activity;

.field private d:Liop;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/view/ViewGroup;

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
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-boolean v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->r:Z

    .line 123
    iput-boolean v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->b:Z

    .line 125
    iput-object v4, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->s:Landroid/graphics/drawable/ColorDrawable;

    .line 131
    if-eqz p1, :cond_0

    instance-of v1, p1, Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 132
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "context is null or not instanceof Activity"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 135
    :cond_1
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->c:Landroid/app/Activity;

    .line 137
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->c:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/nebula/R$color;->h5_nav_bar:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->s:Landroid/graphics/drawable/ColorDrawable;

    .line 138
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->c:Landroid/app/Activity;

    sget v2, Lhdn$i;->miniapp_toolbar_layout2:I

    invoke-static {v1, v2, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->e:Landroid/view/View;

    .line 139
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->e:Landroid/view/View;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->s:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 141
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->e:Landroid/view/View;

    sget v2, Lhdn$h;->right_divider:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->p:Landroid/view/View;

    .line 142
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->e:Landroid/view/View;

    sget v2, Lhdn$h;->horizontal_line:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->q:Landroid/view/View;

    .line 144
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->e:Landroid/view/View;

    sget v2, Lhdn$h;->right_layout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->a:Landroid/widget/RelativeLayout;

    .line 145
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->e:Landroid/view/View;

    sget v2, Lhdn$h;->more_and_close_layout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->l:Landroid/widget/RelativeLayout;

    .line 147
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->e:Landroid/view/View;

    sget v2, Lhdn$h;->more_layout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->m:Landroid/widget/RelativeLayout;

    .line 148
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->e:Landroid/view/View;

    sget v2, Lhdn$h;->more_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->h:Landroid/widget/TextView;

    .line 150
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->e:Landroid/view/View;

    sget v2, Lhdn$h;->close_layout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->n:Landroid/widget/RelativeLayout;

    .line 151
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->e:Landroid/view/View;

    sget v2, Lhdn$h;->close_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->g:Landroid/widget/TextView;

    .line 153
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->e:Landroid/view/View;

    sget v2, Lhdn$h;->back_layout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->o:Landroid/widget/RelativeLayout;

    .line 154
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->e:Landroid/view/View;

    sget v2, Lhdn$h;->back_icon:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->f:Landroid/widget/TextView;

    .line 155
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->a()V

    .line 157
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->e:Landroid/view/View;

    sget v2, Lhdn$h;->title_bar_name:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->i:Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;

    .line 158
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->i:Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;

    new-instance v2, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2$1;

    invoke-direct {v2, p0}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2$1;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;->setOnDoubleTapListener(Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView$b;)V

    .line 165
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->e:Landroid/view/View;

    sget v2, Lhdn$h;->title_bar_hint:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->j:Landroid/widget/TextView;

    .line 167
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->e:Landroid/view/View;

    sget v2, Lhdn$h;->title_wrapper_view:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->k:Landroid/view/ViewGroup;

    .line 168
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 169
    .local v0, "transition":Landroid/animation/LayoutTransition;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->k:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 171
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->m:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2$2;

    invoke-direct {v2, p0}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2$2;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->o:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2$3;

    invoke-direct {v2, p0}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2$3;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->n:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2$4;

    invoke-direct {v2, p0}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2$4;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
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

    .line 972
    const/4 v7, 0x0

    .line 973
    .local v7, "mMeasureParent":Landroid/view/ViewGroup;
    const/4 v8, 0x0

    .line 974
    .local v8, "maxWidth":I
    const/4 v5, 0x0

    .line 975
    .local v5, "itemView":Landroid/view/View;
    const/4 v4, 0x0

    .line 977
    .local v4, "itemType":I
    move-object v0, p1

    .line 978
    .local v0, "adapter":Landroid/widget/ListAdapter;
    invoke-static {v11, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 979
    .local v10, "widthMeasureSpec":I
    invoke-static {v11, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 980
    .local v2, "heightMeasureSpec":I
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 981
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 982
    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v9

    .line 983
    .local v9, "positionType":I
    if-eq v9, v4, :cond_0

    .line 984
    move v4, v9

    .line 985
    const/4 v5, 0x0

    .line 988
    :cond_0
    if-nez v7, :cond_1

    .line 989
    new-instance v7, Landroid/widget/FrameLayout;

    .end local v7    # "mMeasureParent":Landroid/view/ViewGroup;
    iget-object v11, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->c:Landroid/app/Activity;

    invoke-direct {v7, v11}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 992
    .restart local v7    # "mMeasureParent":Landroid/view/ViewGroup;
    :cond_1
    invoke-interface {v0, v3, v5, v7}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 993
    invoke-virtual {v5, v10, v2}, Landroid/view/View;->measure(II)V

    .line 995
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 997
    .local v6, "itemWidth":I
    if-le v6, v8, :cond_2

    .line 998
    move v8, v6

    .line 981
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1002
    .end local v6    # "itemWidth":I
    .end local v9    # "positionType":I
    :cond_3
    iget-object v11, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->c:Landroid/app/Activity;

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
    .line 754
    if-nez p0, :cond_0

    .line 755
    const/4 v0, 0x0

    .line 768
    :goto_0
    return-object v0

    .line 757
    :cond_0
    const/4 v0, 0x0

    .line 759
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 760
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 759
    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 761
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 762
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 763
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :catch_0
    move-exception v2

    .line 764
    .local v2, "outOfMemoryError":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 765
    const-string/jumbo v3, "NavbarView2"

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

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "miniAppId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 908
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 909
    const/4 v5, 0x0

    .line 938
    :goto_0
    return-object v5

    .line 913
    :cond_0
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i(Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    move-result-object v0

    .line 914
    .local v0, "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    if-eqz v0, :cond_2

    .line 915
    invoke-static {}, Lhlt;->a()Lhlt;

    iget-wide v6, v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    iget-wide v8, v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->agent:J

    .line 916
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->corpId:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 915
    invoke-static {v6, v7, v8}, Lhlt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 921
    .local v5, "url":Ljava/lang/String;
    :goto_1
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->d:Liop;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->d:Liop;

    invoke-interface {v6}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 922
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->d:Liop;

    invoke-interface {v6}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "query"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 924
    .local v1, "query":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 926
    :try_start_0
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 927
    .local v3, "uri":Landroid/net/Uri;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 928
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    .line 929
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

    .line 937
    .end local v1    # "query":Ljava/lang/String;
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v4    # "uriBuilder":Landroid/net/Uri$Builder;
    :cond_1
    :goto_2
    const-string/jumbo v6, "NavbarView2"

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

    .line 918
    .end local v5    # "url":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lhlt;->a()Lhlt;

    invoke-static {p1}, Lhlt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "url":Ljava/lang/String;
    goto :goto_1

    .line 931
    .restart local v1    # "query":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 932
    .local v2, "t":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method private a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 391
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->d:Liop;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->d:Liop;

    invoke-interface {v2}, Liop;->getSession()Lipc;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->d:Liop;

    invoke-interface {v2}, Liop;->getSession()Lipc;

    move-result-object v2

    invoke-interface {v2}, Lipc;->getPages()Ljava/util/Stack;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 392
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->d:Liop;

    invoke-interface {v2}, Liop;->getSession()Lipc;

    move-result-object v2

    invoke-interface {v2}, Lipc;->getPages()Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v0

    .line 393
    .local v0, "pageSize":I
    iget-boolean v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->b:Z

    if-eqz v2, :cond_2

    .line 394
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->o:Landroid/widget/RelativeLayout;

    .line 396
    :cond_0
    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 399
    .end local v0    # "pageSize":I
    :cond_1
    return-void

    .line 396
    .restart local v0    # "pageSize":I
    :cond_2
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->o:Landroid/widget/RelativeLayout;

    const/4 v3, 0x1

    if-gt v0, v3, :cond_0

    const/16 v1, 0x8

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;

    .prologue
    .line 81
    .line 2951
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->c:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2957
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->d:Liop;

    if-eqz v0, :cond_1

    .line 2958
    const-string/jumbo v0, "h5ToolbarBack"

    .line 2959
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->d:Liop;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Liop;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 2966
    :cond_0
    :goto_0
    return-void

    .line 2961
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->c:Landroid/app/Activity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2963
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2964
    :catch_0
    move-exception v0

    .line 2965
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;Landroid/view/View;)V
    .locals 13
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    const/4 v12, 0x6

    const/4 v11, 0x5

    const/4 v10, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 81
    .line 2491
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->c:Landroid/app/Activity;

    if-eqz v0, :cond_5

    .line 2495
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->t:Landroid/widget/ListPopupWindow;

    if-nez v0, :cond_4

    .line 2496
    new-instance v0, Landroid/widget/ListPopupWindow;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->c:Landroid/app/Activity;

    const/4 v4, 0x0

    sget v5, Landroid/support/v7/appcompat/R$attr;->listPopupWindowStyle:I

    sget v6, Lhdn$l;->NavListPopupWindow2:I

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->t:Landroid/widget/ListPopupWindow;

    .line 2499
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->t:Landroid/widget/ListPopupWindow;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->c:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lhdn$g;->navbar_popup_drop_background:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2574
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2578
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->d:Liop;

    if-eqz v0, :cond_a

    .line 2579
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->d:Liop;

    invoke-interface {v0}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v0

    .line 2580
    if-eqz v0, :cond_a

    const-string/jumbo v3, "SHOW_SHARE_POP_MENU"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2581
    const-string/jumbo v3, "SHOW_SHARE_POP_MENU"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    move v5, v0

    .line 2584
    :goto_0
    if-eqz v5, :cond_0

    .line 2585
    new-instance v0, Lhoo$a;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->c:Landroid/app/Activity;

    sget v4, Lhdn$k;->lightapp_nav_drop_item_share:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lhdn$g;->nav_more_drop_item_share:I

    invoke-direct {v0, v10, v3, v4}, Lhoo$a;-><init>(ILjava/lang/String;I)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2590
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->d:Liop;

    if-eqz v0, :cond_9

    .line 2591
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->d:Liop;

    invoke-interface {v0}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v0

    .line 2592
    if-eqz v0, :cond_9

    const-string/jumbo v3, "SHOW_BACK_HOME"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2593
    const-string/jumbo v3, "SHOW_BACK_HOME"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    move v4, v0

    .line 2596
    :goto_1
    if-eqz v4, :cond_1

    .line 2597
    new-instance v0, Lhoo$a;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->c:Landroid/app/Activity;

    sget v7, Lhdn$k;->miniapp_nav_drop_item_back_to_home:I

    invoke-virtual {v3, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v7, Lhdn$g;->nav_more_drop_item_home:I

    invoke-direct {v0, v11, v3, v7}, Lhoo$a;-><init>(ILjava/lang/String;I)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2617
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->d:Liop;

    if-eqz v0, :cond_6

    .line 2618
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->d:Liop;

    invoke-interface {v0}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v0

    .line 2619
    if-eqz v0, :cond_6

    const-string/jumbo v3, "keepAlive"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2620
    const-string/jumbo v3, "keepAlive"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2621
    const-string/jumbo v3, "false"

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v3, v2

    .line 2602
    :goto_2
    if-eqz v3, :cond_7

    const-string/jumbo v0, "miniapp_minimize_disable"

    invoke-static {v0, v1}, Lhdo;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    .line 2603
    :goto_3
    if-eqz v0, :cond_2

    .line 2604
    new-instance v7, Lhoo$a;

    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->c:Landroid/app/Activity;

    sget v9, Lhdn$k;->lightapp_nav_drop_item_minimize:I

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lhdn$g;->nav_more_drop_item_minimize:I

    invoke-direct {v7, v1, v8, v9}, Lhoo$a;-><init>(ILjava/lang/String;I)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2606
    :cond_2
    invoke-static {}, Lhhq;->a()Lhhq;

    const-string/jumbo v7, "f_lightapp_nav_show_mini_info"

    invoke-static {v7, v1}, Lhhq;->a(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2607
    new-instance v7, Lhoo$a;

    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->c:Landroid/app/Activity;

    sget v9, Lhdn$k;->miniapp_nav_drop_item_about:I

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lhdn$g;->nav_more_drop_item_show_appinfo:I

    invoke-direct {v7, v12, v8, v9}, Lhoo$a;-><init>(ILjava/lang/String;I)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2610
    :cond_3
    const-string/jumbo v7, "NavbarView2"

    const/16 v8, 0x9

    new-array v8, v8, [Ljava/lang/Object;

    const-string/jumbo v9, "createDropMenu"

    aput-object v9, v8, v2

    const-string/jumbo v2, "isBizKeepAlive="

    aput-object v2, v8, v1

    const/4 v2, 0x2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v8, v2

    const-string/jumbo v2, "showMinimize="

    aput-object v2, v8, v10

    const/4 v2, 0x4

    .line 2611
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v8, v2

    const-string/jumbo v0, "showShare="

    aput-object v0, v8, v11

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v8, v12

    const/4 v0, 0x7

    const-string/jumbo v2, "showBackHome"

    aput-object v2, v8, v0

    const/16 v0, 0x8

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v8, v0

    .line 2610
    invoke-static {v7, v8}, Lhmv;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2501
    new-instance v0, Lhoo;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->c:Landroid/app/Activity;

    invoke-direct {v0, v2, v6}, Lhoo;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 2502
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->t:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2, v0}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2504
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->c:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lhdn$f;->nav_more_menu_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 2505
    invoke-direct {p0, v0}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->a(Lhoo;)I

    move-result v0

    .line 2506
    if-le v2, v0, :cond_8

    .line 2507
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->t:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 2511
    :goto_4
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->t:Landroid/widget/ListPopupWindow;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->c:Landroid/app/Activity;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V

    .line 2512
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->t:Landroid/widget/ListPopupWindow;

    const/4 v2, -0x2

    invoke-virtual {v0, v2}, Landroid/widget/ListPopupWindow;->setHeight(I)V

    .line 2513
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->t:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 2514
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->t:Landroid/widget/ListPopupWindow;

    .line 2515
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->t:Landroid/widget/ListPopupWindow;

    new-instance v2, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2$5;

    invoke-direct {v2, p0, v6, v0}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2$5;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;Ljava/util/List;Landroid/widget/ListPopupWindow;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2546
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->t:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 2548
    :cond_4
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->t:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    .line 81
    :cond_5
    return-void

    :cond_6
    move v3, v1

    .line 2626
    goto/16 :goto_2

    :cond_7
    move v0, v2

    .line 2602
    goto/16 :goto_3

    .line 2509
    :cond_8
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->t:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2, v0}, Landroid/widget/ListPopupWindow;->setContentWidth(I)V

    goto :goto_4

    :cond_9
    move v4, v2

    goto/16 :goto_1

    :cond_a
    move v5, v2

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;Ljava/lang/String;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 81
    .line 15852
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 15853
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 15854
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 15855
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 15856
    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15857
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->c:Landroid/app/Activity;

    invoke-static {v0, v1}, Lhou;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 15859
    const-string/jumbo v1, "NavbarView2"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string/jumbo v3, "float_onClick"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v3, "RuntimeNavigator.open , name="

    aput-object v3, v2, v0

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->c:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->c:Landroid/app/Activity;

    .line 15860
    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v2, v3

    .line 15859
    invoke-static {v1, v2}, Lhmv;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    :cond_0
    return-void

    .line 15860
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 428
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->i:Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lhdn$e;->text_color_black:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;->setTextColor(I)V

    .line 429
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lhdn$e;->ui_common_theme_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 430
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lhdn$e;->ui_common_theme_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 432
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lhdn$e;->ui_common_theme_icon_bg_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 433
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lhdn$e;->ui_common_theme_icon_bg_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 434
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->o:Landroid/widget/RelativeLayout;

    sget v1, Lhdn$g;->ui_common_action_icon_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 435
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->n:Landroid/widget/RelativeLayout;

    sget v1, Lhdn$g;->ui_common_action_icon_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 436
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->m:Landroid/widget/RelativeLayout;

    sget v1, Lhdn$g;->ui_common_action_icon_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 438
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->p:Landroid/view/View;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lhdn$e;->ui_common_content_fg_color_alpha_12:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 439
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->l:Landroid/widget/RelativeLayout;

    sget v1, Lhdn$g;->mini_toolbar_right_corner_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 441
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->d()V

    .line 442
    return-void
.end method

.method static synthetic b(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 81
    .line 3630
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->c:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 3631
    const-string/jumbo v0, "NavbarView2"

    new-array v3, v6, [Ljava/lang/Object;

    const-string/jumbo v4, "closeMicroApp"

    aput-object v4, v3, v1

    const-string/jumbo v1, "mActivity == null"

    aput-object v1, v3, v2

    .line 4082
    const-string/jumbo v1, "mini_task"

    invoke-static {v1, v0, v3}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3638
    :goto_0
    return-void

    .line 3636
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->c:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;

    if-eqz v0, :cond_1

    .line 3637
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 3641
    :cond_1
    invoke-static {}, Lhhr;->a()Lhhr;

    move-result-object v0

    const-string/jumbo v3, "hybrid_enable_click_close_keep_alive_v2"

    invoke-virtual {v0, v3, v1}, Lhhr;->b(Ljava/lang/String;Z)Z

    move-result v0

    .line 3643
    const-string/jumbo v3, "NavbarView2"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "closeMicroApp"

    aput-object v5, v4, v1

    const-string/jumbo v5, "isEnableKeepAlive="

    aput-object v5, v4, v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v6

    .line 5082
    const-string/jumbo v5, "mini_task"

    invoke-static {v5, v3, v4}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3644
    if-eqz v0, :cond_5

    .line 3645
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->c:Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 3646
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->c:Landroid/app/Activity;

    .line 5675
    if-eqz v0, :cond_3

    .line 5676
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 5677
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 5678
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v3, "keepAlive"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5679
    const-string/jumbo v3, "false"

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 3647
    :goto_1
    const-string/jumbo v3, "NavbarView2"

    new-array v4, v6, [Ljava/lang/Object;

    const-string/jumbo v5, "closeMicroApp & isKeepAlive="

    aput-object v5, v4, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v4, v2

    .line 6082
    const-string/jumbo v1, "mini_task"

    invoke-static {v1, v3, v4}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3648
    if-eqz v0, :cond_4

    .line 3650
    :try_start_0
    invoke-static {}, Lhlq;->a()Lhlq;

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->c:Landroid/app/Activity;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lhlq;->a(Landroid/app/Activity;ZZ)Z

    .line 3651
    invoke-static {}, Lhlq;->a()Lhlq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->c:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lhlq;->a(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3663
    :cond_2
    :goto_2
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "Page_Home_Tiny_APP_Detail"

    const-string/jumbo v2, "open_tiny_app_close_click"

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->c:Landroid/app/Activity;

    .line 3664
    invoke-static {v3}, Lhom;->a(Landroid/app/Activity;)Ljava/util/Map;

    move-result-object v3

    .line 3663
    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->customEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 5684
    goto :goto_1

    .line 3652
    :catch_0
    move-exception v0

    .line 3653
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 3656
    :cond_4
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->c:Landroid/app/Activity;

    invoke-static {v0}, Lhrf;->b(Landroid/app/Activity;)V

    goto :goto_2

    .line 3660
    :cond_5
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->c:Landroid/app/Activity;

    invoke-static {v0}, Lhrf;->b(Landroid/app/Activity;)V

    goto :goto_2
.end method

.method private c()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 445
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->i:Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->c:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lhdn$e;->ui_common_inverse_content_fg_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;->setTextColor(I)V

    .line 446
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->h:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->c:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lhdn$e;->ui_common_inverse_content_fg_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 447
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->j:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->c:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lhdn$e;->ui_common_inverse_content_fg_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 448
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->f:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->c:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lhdn$e;->ui_common_inverse_content_fg_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 449
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->g:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->c:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lhdn$e;->ui_common_inverse_content_fg_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 450
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->p:Landroid/view/View;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->c:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lhdn$e;->ui_common_inverse_content_fg_color_alpha_28:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 451
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->l:Landroid/widget/RelativeLayout;

    sget v3, Lhdn$g;->mini_toolbar_right_corner_deep_bg:I

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 453
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->s:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    .line 455
    .local v0, "colorInt":I
    const v2, 0x3f19999a    # 0.6f

    invoke-static {v0, v2}, Lhdo;->a(IF)I

    move-result v1

    .line 456
    .local v1, "selectedBgColor":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    .line 457
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->o:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lhdo;->a(II)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 458
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->n:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lhdo;->a(II)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 459
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->m:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lhdo;->a(II)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 466
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->d()V

    .line 467
    return-void

    .line 461
    :cond_0
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->o:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lhdo;->a(II)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 462
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->n:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lhdo;->a(II)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 463
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->m:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lhdo;->a(II)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;

    .prologue
    const/4 v4, 0x1

    .line 81
    .line 6688
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->c:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 6692
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->c:Landroid/app/Activity;

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "android.permission.SYSTEM_ALERT_WINDOW"

    aput-object v3, v1, v2

    new-instance v2, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2$6;

    invoke-direct {v2, p0}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2$6;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;)V

    invoke-static {v0, v4, v1, v2}, Lbyy;->a(Landroid/app/Activity;I[Ljava/lang/String;Lbzc;)V

    .line 6707
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "Page_Home_Tiny_APP_Detail"

    const-string/jumbo v2, "open_tiny_app_min_click"

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->c:Landroid/app/Activity;

    .line 6708
    invoke-static {v3}, Lhom;->a(Landroid/app/Activity;)Ljava/util/Map;

    move-result-object v3

    .line 6707
    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->customEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 81
    :cond_0
    return-void
.end method

.method private d()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 470
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->c:Landroid/app/Activity;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->c:Landroid/app/Activity;

    instance-of v2, v2, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->s:Landroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_0

    .line 471
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->s:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    .line 472
    .local v0, "colorInt":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 473
    const v2, 0x3f59999a    # 0.85f

    invoke-static {v0, v2}, Lhdo;->a(IF)I

    move-result v1

    .line 474
    .local v1, "colorNor":I
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->c:Landroid/app/Activity;

    check-cast v2, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;

    invoke-virtual {v2, v1}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappBaseUIActivity;->a(I)V

    .line 477
    .end local v0    # "colorInt":I
    .end local v1    # "colorNor":I
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;)V
    .locals 9
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 81
    .line 6866
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->c:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->d:Liop;

    if-nez v0, :cond_1

    .line 6867
    :cond_0
    const-string/jumbo v0, "NavbarView2"

    new-array v1, v7, [Ljava/lang/Object;

    const-string/jumbo v2, "backIm"

    aput-object v2, v1, v5

    const-string/jumbo v2, "mActivity == null || mH5Page == null"

    aput-object v2, v1, v6

    .line 7082
    const-string/jumbo v2, "mini_task"

    invoke-static {v2, v0, v1}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6868
    :goto_0
    return-void

    .line 6871
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->d:Liop;

    invoke-interface {v0}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v0

    .line 6872
    const-string/jumbo v1, "appId"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6873
    invoke-direct {p0, v0}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6874
    const-string/jumbo v2, "NavbarView2"

    new-array v3, v8, [Ljava/lang/Object;

    const-string/jumbo v4, "backIm"

    aput-object v4, v3, v5

    const-string/jumbo v4, "url="

    aput-object v4, v3, v6

    aput-object v1, v3, v7

    .line 8082
    const-string/jumbo v4, "mini_task"

    invoke-static {v4, v2, v3}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6876
    invoke-static {v0}, Lhom;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6877
    new-array v2, v8, [Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->c:Landroid/app/Activity;

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

    .line 6879
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.workapp.lightapp.microapp.TOP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6880
    const-string/jumbo v3, "url"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6881
    const-string/jumbo v1, "title"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6883
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    invoke-virtual {v0, v2}, Ldq;->a(Landroid/content/Intent;)Z

    .line 6885
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->c:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/ding/home.html"

    new-instance v2, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2$9;

    invoke-direct {v2, p0}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2$9;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;)V

    .line 6886
    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 6896
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->e()V

    .line 6898
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "Page_Home_Tiny_APP_Detail"

    const-string/jumbo v2, "open_tiny_app_back_im_click"

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->c:Landroid/app/Activity;

    .line 6899
    invoke-static {v3}, Lhom;->a(Landroid/app/Activity;)Ljava/util/Map;

    move-result-object v3

    .line 6898
    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->customEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0
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
    .line 773
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->c:Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 782
    :goto_0
    return-void

    .line 777
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->c:Landroid/app/Activity;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lhrf;->a(Landroid/app/Activity;ZZ)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 781
    :goto_1
    invoke-static {}, Lhlq;->a()Lhlq;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->c:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lhlq;->a(Landroid/app/Activity;Z)V

    goto :goto_0

    .line 778
    :catch_0
    move-exception v0

    .line 779
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic e(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;

    .prologue
    .line 81
    .line 8942
    invoke-static {}, Lhlt;->a()Lhlt;

    move-result-object v0

    const-string/jumbo v1, "onDDShare"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lhlt;->a(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 8944
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "Page_Home_Tiny_APP_Detail"

    const-string/jumbo v2, "open_tiny_app_share_click"

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->c:Landroid/app/Activity;

    .line 8945
    invoke-static {v3}, Lhom;->a(Landroid/app/Activity;)Ljava/util/Map;

    move-result-object v3

    .line 8944
    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->customEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 81
    return-void
.end method

.method static synthetic f(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;

    .prologue
    .line 9671
    invoke-static {}, Lhlt;->a()Lhlt;

    move-result-object v0

    const-string/jumbo v1, "onBackHomeClick"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lhlt;->a(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 81
    return-void
.end method

.method static synthetic g(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;

    .prologue
    const/4 v3, 0x0

    .line 81
    .line 10552
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->c:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->d:Liop;

    if-nez v0, :cond_1

    .line 10553
    :cond_0
    const-string/jumbo v0, "NavbarView2"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "showAPPInfo"

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string/jumbo v3, "mActivity == null || mH5Page==null"

    aput-object v3, v1, v2

    .line 11082
    const-string/jumbo v2, "mini_task"

    invoke-static {v2, v0, v1}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10554
    :goto_0
    return-void

    .line 10557
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->d:Liop;

    invoke-interface {v0}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v0

    .line 10558
    const-string/jumbo v1, "SHOW_SHARE_POP_MENU"

    invoke-static {v0, v1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v1

    .line 10559
    const-string/jumbo v2, "appId"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 10560
    const-string/jumbo v3, "ddOriginUrl"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10561
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 10562
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->c:Landroid/app/Activity;

    const-class v5, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 10563
    const-string/jumbo v4, "appId"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10564
    const-string/jumbo v2, "SHOW_SHARE_POP_MENU"

    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 10565
    const-string/jumbo v1, "ddOriginUrl"

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10566
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->c:Landroid/app/Activity;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static synthetic h(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;

    .prologue
    .line 81
    .line 11712
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->c:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 11714
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 11715
    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 11716
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    .line 11717
    new-instance v2, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2$7;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2$7;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;Landroid/graphics/Bitmap;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 81
    :cond_0
    return-void
.end method

.method static synthetic i(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->c:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->e()V

    return-void
.end method

.method static synthetic k(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;

    .prologue
    .line 81
    .line 11785
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->c:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 11786
    const-string/jumbo v0, "NavbarView2"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "showFloatingLayer"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "mActivity == null"

    aput-object v3, v1, v2

    .line 12082
    const-string/jumbo v2, "mini_task"

    invoke-static {v2, v0, v1}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11787
    :goto_0
    return-void

    .line 11791
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->d:Liop;

    if-eqz v0, :cond_1

    .line 11792
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->d:Liop;

    invoke-interface {v0}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v0

    .line 11793
    const-string/jumbo v1, "appId"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11794
    invoke-static {}, Lheh;->a()Lheh;

    move-result-object v1

    .line 12168
    iput-object v0, v1, Lheh;->f:Ljava/lang/String;

    .line 11795
    invoke-static {v0}, Lhom;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11799
    :goto_1
    invoke-static {}, Lheh;->a()Lheh;

    move-result-object v1

    .line 13156
    iput-object v0, v1, Lheh;->e:Ljava/lang/String;

    .line 14044
    invoke-static {}, Lhee$a;->a()Lhee;

    move-result-object v0

    .line 11801
    new-instance v1, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2$8;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2$8;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;)V

    .line 14072
    iput-object v1, v0, Lhee;->b:Lheg;

    .line 15044
    invoke-static {}, Lhee$a;->a()Lhee;

    move-result-object v0

    .line 11848
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->c:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lhee;->a(Landroid/app/Activity;)V

    goto :goto_0

    .line 11797
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->i:Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->i:Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string/jumbo v0, ""

    goto :goto_1
.end method

.method static synthetic l(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;)Liop;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->d:Liop;

    return-object v0
.end method


# virtual methods
.method public getContentBgView()Landroid/graphics/drawable/ColorDrawable;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->s:Landroid/graphics/drawable/ColorDrawable;

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->e:Landroid/view/View;

    return-object v0
.end method

.method public getDivider()Landroid/view/View;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->q:Landroid/view/View;

    return-object v0
.end method

.method public getHdividerInTitle()Landroid/view/View;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->q:Landroid/view/View;

    return-object v0
.end method

.method public getMainTitleView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->i:Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;

    return-object v0
.end method

.method public getOptionMenuContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 369
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPopAnchor()Landroid/view/View;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->m:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getSubTitleView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->i:Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->i:Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;

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
    .line 344
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->d()V

    .line 345
    return-void
.end method

.method public releaseViewList()V
    .locals 0

    .prologue
    .line 336
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

    .line 320
    .line 1480
    const/4 v1, 0x3

    :try_start_0
    new-array v1, v1, [F

    .line 1481
    invoke-static {p1, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 1482
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

    .line 1483
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    .line 1414
    :goto_0
    if-eqz v0, :cond_1

    .line 1415
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->b()V

    .line 1421
    :goto_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->e:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1424
    :goto_2
    return-void

    .line 1483
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1418
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1422
    :catch_0
    move-exception v0

    .line 1423
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public setBackCloseBtnImage(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 360
    return-void
.end method

.method public setBtIcon(Landroid/graphics/Bitmap;I)V
    .locals 0
    .param p1, "btIcon"    # Landroid/graphics/Bitmap;
    .param p2, "index"    # I

    .prologue
    .line 283
    return-void
.end method

.method public setH5Page(Liop;)V
    .locals 3
    .param p1, "h5Page"    # Liop;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 287
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->d:Liop;

    .line 288
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->d:Liop;

    if-eqz v1, :cond_1

    .line 289
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->d:Liop;

    invoke-interface {v1}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v0

    .line 290
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 297
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 294
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    const-string/jumbo v1, "SHOW_BACK_HOME"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 296
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->a()V

    goto :goto_0
.end method

.method public setIH5TinyPopMenu(Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;)V
    .locals 0
    .param p1, "ih5TinyPopMenu"    # Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;

    .prologue
    .line 375
    return-void
.end method

.method public setImgTitle(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "imgTitle"    # Landroid/graphics/Bitmap;

    .prologue
    .line 211
    return-void
.end method

.method public setImgTitle(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0
    .param p1, "imgTitle"    # Landroid/graphics/Bitmap;
    .param p2, "contentDescription"    # Ljava/lang/String;

    .prologue
    .line 216
    return-void
.end method

.method public setOptionMenu(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .param p1, "params"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 301
    return-void
.end method

.method public setOptionType(Lcom/alipay/mobile/h5container/api/H5Param$OptionType;)V
    .locals 0
    .param p1, "type"    # Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    .prologue
    .line 263
    return-void
.end method

.method public setOptionType(Lcom/alipay/mobile/h5container/api/H5Param$OptionType;IZ)V
    .locals 0
    .param p1, "type"    # Lcom/alipay/mobile/h5container/api/H5Param$OptionType;
    .param p2, "num"    # I
    .param p3, "byIndex"    # Z

    .prologue
    .line 268
    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "subTitle"    # Ljava/lang/String;

    .prologue
    .line 206
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->i:Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;

    invoke-virtual {v0, p1}, Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    return-void
.end method

.method public setTitleBarSearch(Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 354
    const/4 v0, 0x0

    return-object v0
.end method

.method public setTitleTxtColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 365
    return-void
.end method

.method public showBackButton(Z)V
    .locals 2
    .param p1, "visible"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 249
    if-eqz p1, :cond_0

    .line 250
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->o:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 254
    :goto_0
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->o:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public showCloseButton(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 225
    return-void
.end method

.method public showOptionMenu(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 258
    return-void
.end method

.method public showTitleDisclaimer(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 278
    return-void
.end method

.method public showTitleLoading(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 273
    return-void
.end method

.method public switchToBlueTheme()V
    .locals 0

    .prologue
    .line 330
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->b()V

    .line 331
    return-void
.end method

.method public switchToTitleBar()V
    .locals 0

    .prologue
    .line 350
    return-void
.end method

.method public switchToWhiteTheme()V
    .locals 0

    .prologue
    .line 325
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->c()V

    .line 326
    return-void
.end method
