.class final Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton$a;
.super Lcmr;
.source "HomeActionBarButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton$a;->a:Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;

    invoke-direct {p0}, Lcmr;-><init>()V

    .line 158
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
    .line 162
    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->navigationBar:Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->navigationBar:Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;

    iget v1, v1, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;->textColorValue:I

    if-eqz v1, :cond_1

    .line 163
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton$a;->a:Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;

    iget-object v2, p1, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->navigationBar:Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;

    iget v2, v2, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;->textColorValue:I

    invoke-static {v1, v2}, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->a(Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;I)I

    .line 167
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton$a;->a:Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;

    invoke-static {v1}, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->a(Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lecw;

    .line 168
    .local v0, "icon":Lecw;
    if-eqz v0, :cond_0

    .line 169
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton$a;->a:Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;

    invoke-static {v2}, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->b(Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;)I

    move-result v2

    invoke-virtual {v0, v2}, Lecw;->a(I)V

    .line 170
    invoke-virtual {v0}, Lecw;->invalidateSelf()V

    goto :goto_1

    .line 165
    .end local v0    # "icon":Lecw;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton$a;->a:Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;

    const v2, 0x7f1004d1

    invoke-static {v2}, Leda;->b(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->a(Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;I)I

    goto :goto_0

    .line 173
    :cond_2
    const/4 v1, 0x1

    return v1
.end method
