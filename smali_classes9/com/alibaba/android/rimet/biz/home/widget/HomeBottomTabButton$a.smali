.class final Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton$a;
.super Lcmr;
.source "HomeBottomTabButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton$a;->a:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    invoke-direct {p0}, Lcmr;-><init>()V

    .line 268
    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;)Z
    .locals 5
    .param p1, "customThemeObject"    # Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 272
    if-eqz p1, :cond_4

    iget-object v1, p1, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->tabbar:Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$TabBar;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->tabbar:Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$TabBar;

    iget v1, v1, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$TabBar;->textColorValue:I

    if-eqz v1, :cond_4

    .line 273
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton$a;->a:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    iget-object v2, p1, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->tabbar:Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$TabBar;

    iget v2, v2, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$TabBar;->textColorValue:I

    invoke-static {v1, v2}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->a(Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;I)I

    .line 277
    :goto_0
    if-eqz p1, :cond_5

    iget-object v1, p1, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->iconValue:Ljava/util/HashMap;

    if-eqz v1, :cond_5

    iget-object v1, p1, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->iconValue:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton$a;->a:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    invoke-static {v2}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->a(Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 278
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton$a;->a:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p1, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->iconValue:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton$a;->a:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    invoke-static {v4}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->a(Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {v2, v3}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->a(Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 279
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton$a;->a:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton$a;->a:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    invoke-static {v2}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->b(Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->a()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->a(Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;Landroid/view/View;I)V

    .line 280
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton$a;->a:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    invoke-static {v1}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->b(Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton$a;->a:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    invoke-static {v2}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->c(Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 295
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton$a;->a:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    invoke-static {v1}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->f(Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 296
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton$a;->a:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    invoke-static {v1}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->f(Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton$a;->a:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    invoke-static {v2}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->d(Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 298
    :cond_1
    if-eqz p1, :cond_7

    iget-object v1, p1, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->tabbar:Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$TabBar;

    if-eqz v1, :cond_7

    iget-object v1, p1, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->tabbar:Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$TabBar;

    iget v1, v1, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$TabBar;->selectTextColorValue:I

    if-eqz v1, :cond_7

    .line 299
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton$a;->a:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    iget-object v2, p1, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->tabbar:Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$TabBar;

    iget v2, v2, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$TabBar;->selectTextColorValue:I

    invoke-static {v1, v2}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->b(Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;I)I

    .line 303
    :goto_2
    if-eqz p1, :cond_8

    iget-object v1, p1, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->iconValue:Ljava/util/HashMap;

    if-eqz v1, :cond_8

    iget-object v1, p1, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->iconValue:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton$a;->a:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    invoke-static {v2}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->g(Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 304
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton$a;->a:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p1, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->iconValue:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton$a;->a:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    invoke-static {v4}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->g(Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {v2, v3}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->b(Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 305
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton$a;->a:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton$a;->a:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    invoke-static {v2}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->h(Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->a()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->a(Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;Landroid/view/View;I)V

    .line 306
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton$a;->a:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    invoke-static {v1}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->h(Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton$a;->a:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    invoke-static {v2}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->i(Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 321
    :cond_2
    :goto_3
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton$a;->a:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    invoke-static {v1}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->k(Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 322
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton$a;->a:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    invoke-static {v1}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->k(Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton$a;->a:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    invoke-static {v2}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->j(Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 324
    :cond_3
    const/4 v1, 0x1

    return v1

    .line 275
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton$a;->a:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    const v2, 0x7f10047a

    invoke-static {v2}, Leda;->b(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->a(Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;I)I

    goto/16 :goto_0

    .line 282
    :cond_5
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton$a;->a:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    invoke-static {v1}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->c(Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton$a;->a:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    invoke-static {v1}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->c(Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Lecw;

    if-eqz v1, :cond_6

    .line 283
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton$a;->a:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    invoke-static {v1}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->c(Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lecw;

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton$a;->a:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    invoke-static {v2}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->d(Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;)I

    move-result v2

    invoke-virtual {v1, v2}, Lecw;->a(I)V

    .line 284
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton$a;->a:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    invoke-static {v1}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->c(Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto/16 :goto_1

    .line 285
    :cond_6
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton$a;->a:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    invoke-static {v1}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->e(Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 287
    new-instance v0, Lecw;

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton$a;->a:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    invoke-static {v1}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->e(Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton$a;->a:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    invoke-static {v2}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->d(Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lecw;-><init>(Ljava/lang/String;I)V

    .line 288
    .local v0, "drawable":Lecw;
    invoke-static {}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->b()I

    move-result v1

    .line 1079
    iput v1, v0, Lecw;->b:I

    .line 289
    invoke-static {}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->b()I

    move-result v1

    .line 2070
    iput v1, v0, Lecw;->a:I

    .line 290
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton$a;->a:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    invoke-static {v1, v0}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->a(Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 291
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton$a;->a:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton$a;->a:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    invoke-static {v2}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->b(Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->b()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->a(Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;Landroid/view/View;I)V

    .line 292
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton$a;->a:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    invoke-static {v1}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->b(Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton$a;->a:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    invoke-static {v2}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->c(Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 301
    .end local v0    # "drawable":Lecw;
    :cond_7
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton$a;->a:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    const v2, 0x7f1004d1

    invoke-static {v2}, Leda;->b(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->b(Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;I)I

    goto/16 :goto_2

    .line 308
    :cond_8
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton$a;->a:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    invoke-static {v1}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->i(Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton$a;->a:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    invoke-static {v1}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->i(Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Lecw;

    if-eqz v1, :cond_9

    .line 309
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton$a;->a:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    invoke-static {v1}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->i(Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lecw;

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton$a;->a:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    invoke-static {v2}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->j(Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;)I

    move-result v2

    invoke-virtual {v1, v2}, Lecw;->a(I)V

    .line 310
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton$a;->a:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    invoke-static {v1}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->i(Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto/16 :goto_3

    .line 311
    :cond_9
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton$a;->a:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    invoke-static {v1}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->e(Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 313
    new-instance v0, Lecw;

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton$a;->a:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    invoke-static {v1}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->e(Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton$a;->a:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    invoke-static {v2}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->j(Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lecw;-><init>(Ljava/lang/String;I)V

    .line 314
    .restart local v0    # "drawable":Lecw;
    invoke-static {}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->b()I

    move-result v1

    .line 2079
    iput v1, v0, Lecw;->b:I

    .line 315
    invoke-static {}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->b()I

    move-result v1

    .line 3070
    iput v1, v0, Lecw;->a:I

    .line 316
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton$a;->a:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    invoke-static {v1, v0}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->b(Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 317
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton$a;->a:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton$a;->a:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    invoke-static {v2}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->h(Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->b()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->a(Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;Landroid/view/View;I)V

    .line 318
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton$a;->a:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    invoke-static {v1}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->h(Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton$a;->a:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    invoke-static {v2}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->i(Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3
.end method
