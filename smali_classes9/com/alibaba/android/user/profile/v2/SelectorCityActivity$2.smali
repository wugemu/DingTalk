.class final Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$2;
.super Ljava/lang/Object;
.source "SelectorCityActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$2;->a:Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 225
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$2;->a:Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->i(Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;)Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$2;->a:Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$2;->a:Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->i(Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;)Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->a(Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;Z)V

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$2;->a:Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->j(Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;)Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 228
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$2;->a:Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$2;->a:Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->j(Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;)Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->a(Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;Z)V

    goto :goto_0

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$2;->a:Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->k(Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;)Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 230
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$2;->a:Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$2;->a:Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->k(Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;)Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->a(Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;Z)V

    goto :goto_0

    .line 231
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$2;->a:Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->l(Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;)Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$2;->a:Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$2;->a:Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->l(Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;)Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->a(Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;Z)V

    goto :goto_0
.end method
