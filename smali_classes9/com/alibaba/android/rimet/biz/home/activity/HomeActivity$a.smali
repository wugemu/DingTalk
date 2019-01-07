.class final Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;
.super Lcmr;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/view/View;

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V
    .locals 1

    .prologue
    .line 2207
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-direct {p0}, Lcmr;-><init>()V

    .line 2208
    const v0, 0x7f1105bb

    invoke-virtual {p1, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->b:Landroid/view/View;

    .line 2209
    const v0, 0x7f1105bc

    invoke-virtual {p1, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->c:Landroid/view/View;

    .line 2210
    const v0, 0x7f1105c0

    invoke-virtual {p1, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->d:Landroid/widget/TextView;

    .line 2211
    const v0, 0x7f1105c6

    invoke-virtual {p1, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->e:Landroid/widget/TextView;

    .line 2212
    const v0, 0x7f1105cc

    invoke-virtual {p1, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->f:Landroid/widget/TextView;

    .line 2213
    invoke-virtual {p1}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->getImmersiveStatusBarPlaceholderId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->g:Landroid/view/View;

    .line 2215
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->h:I

    .line 2216
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->i:I

    .line 2217
    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;)Z
    .locals 7
    .param p1, "customThemeObject"    # Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    const v4, 0x7f100454

    .line 2222
    if-eqz p1, :cond_6

    iget-object v2, p1, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->navigationBar:Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;

    if-eqz v2, :cond_6

    .line 2223
    iget-object v2, p1, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->navigationBar:Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;->bgImageValue:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    .line 2224
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->c:Landroid/view/View;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p1, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->navigationBar:Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;->bgImageValue:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2225
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-virtual {v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->isImmersiveStatusBarInitSuccess()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2226
    iget-object v2, p1, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->navigationBar:Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;

    iget v2, v2, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;->bgColorValue:I

    if-eqz v2, :cond_3

    .line 2227
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    iget-object v3, p1, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->navigationBar:Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;

    iget v3, v3, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;->bgColorValue:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->setImmersiveStatusBarBackgroundColor(I)V

    .line 2231
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->g:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2232
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->c:Landroid/view/View;

    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->c:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    iget v4, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->i:I

    iget-object v5, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-virtual {v5}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->getStatusBarHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->c:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    iget-object v6, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->c:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 2233
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 2234
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-virtual {v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->getStatusBarHeight()I

    move-result v2

    iget v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->h:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2235
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->b:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2269
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    :goto_1
    if-eqz p1, :cond_7

    iget-object v2, p1, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->navigationBar:Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;

    if-eqz v2, :cond_7

    iget-object v2, p1, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->navigationBar:Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;

    iget v2, v2, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;->titleColorValue:I

    if-eqz v2, :cond_7

    .line 2270
    iget-object v2, p1, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->navigationBar:Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;

    iget v0, v2, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;->titleColorValue:I

    .line 2274
    .local v0, "color":I
    :goto_2
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2275
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2276
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2277
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->v(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lecw;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2278
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->v(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lecw;

    move-result-object v2

    invoke-virtual {v2, v0}, Lecw;->a(I)V

    .line 2279
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->v(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lecw;

    move-result-object v2

    invoke-virtual {v2}, Lecw;->invalidateSelf()V

    .line 2281
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->w(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lecw;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2282
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->w(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lecw;

    move-result-object v2

    invoke-virtual {v2, v0}, Lecw;->a(I)V

    .line 2283
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->w(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lecw;

    move-result-object v2

    invoke-virtual {v2}, Lecw;->invalidateSelf()V

    .line 2285
    :cond_2
    const/4 v2, 0x1

    return v2

    .line 2229
    .end local v0    # "color":I
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->setImmersiveStatusBarBackgroundColor(I)V

    goto/16 :goto_0

    .line 2237
    :cond_4
    iget-object v2, p1, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->navigationBar:Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;

    iget v2, v2, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;->bgColorValue:I

    if-eqz v2, :cond_5

    .line 2238
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->c:Landroid/view/View;

    iget-object v3, p1, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->navigationBar:Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;

    iget v3, v3, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;->bgColorValue:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2239
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-virtual {v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->isImmersiveStatusBarInitSuccess()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2240
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    iget-object v3, p1, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->navigationBar:Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;

    iget v3, v3, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;->bgColorValue:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->setImmersiveStatusBarBackgroundColor(I)V

    .line 2241
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->g:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2242
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->c:Landroid/view/View;

    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->c:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    iget v4, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->i:I

    iget-object v5, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->c:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    iget-object v6, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->c:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 2243
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 2244
    .restart local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->h:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2245
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->b:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 2248
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_5
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->c:Landroid/view/View;

    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-virtual {v3}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2249
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-virtual {v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->isImmersiveStatusBarInitSuccess()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2250
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-virtual {v3}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->setImmersiveStatusBarBackgroundColor(I)V

    .line 2251
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->g:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2252
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->c:Landroid/view/View;

    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->c:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    iget v4, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->i:I

    iget-object v5, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->c:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    iget-object v6, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->c:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 2253
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 2254
    .restart local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->h:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2255
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->b:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 2259
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_6
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->c:Landroid/view/View;

    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-virtual {v3}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2260
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-virtual {v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->isImmersiveStatusBarInitSuccess()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2261
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-virtual {v3}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->setImmersiveStatusBarBackgroundColor(I)V

    .line 2262
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->g:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2263
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->c:Landroid/view/View;

    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->c:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    iget v4, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->i:I

    iget-object v5, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->c:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    iget-object v6, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->c:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 2264
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 2265
    .restart local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->h:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2266
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->b:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 2272
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_7
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-virtual {v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100480

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .restart local v0    # "color":I
    goto/16 :goto_2
.end method
