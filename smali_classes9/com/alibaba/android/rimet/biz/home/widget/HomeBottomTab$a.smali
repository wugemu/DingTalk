.class final Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab$a;
.super Lcmr;
.source "HomeBottomTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;

.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;)V
    .locals 1

    .prologue
    .line 138
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab$a;->a:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;

    invoke-direct {p0}, Lcmr;-><init>()V

    .line 139
    const v0, 0x7f1116cb

    invoke-virtual {p1, v0}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab$a;->b:Landroid/view/View;

    .line 140
    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;)Z
    .locals 3
    .param p1, "customThemeObject"    # Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const v1, 0x7f100454

    .line 144
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->tabbar:Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$TabBar;

    if-eqz v0, :cond_2

    .line 145
    iget-object v0, p1, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->tabbar:Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$TabBar;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$TabBar;->bgImageValue:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab$a;->b:Landroid/view/View;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p1, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->tabbar:Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$TabBar;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$TabBar;->bgImageValue:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 155
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 147
    :cond_0
    iget-object v0, p1, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->tabbar:Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$TabBar;

    iget v0, v0, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$TabBar;->bgColorValue:I

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab$a;->b:Landroid/view/View;

    iget-object v1, p1, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->tabbar:Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$TabBar;

    iget v1, v1, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$TabBar;->bgColorValue:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab$a;->b:Landroid/view/View;

    invoke-static {v1}, Leda;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 153
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab$a;->b:Landroid/view/View;

    invoke-static {v1}, Leda;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method
