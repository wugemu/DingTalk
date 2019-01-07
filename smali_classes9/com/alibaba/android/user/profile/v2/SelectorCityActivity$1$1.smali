.class final Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$1$1;
.super Ljava/lang/Object;
.source "SelectorCityActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$1;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$1$1;->a:Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 197
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$1$1;->a:Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$1;->a:Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->dismissLoadingDialog()V

    .line 198
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$1$1;->a:Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$1;->a:Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->f(Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;)V

    .line 199
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$1$1;->a:Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$1;->a:Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->g(Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;)Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$a;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$1$1;->a:Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$1;

    iget-object v1, v1, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$1;->a:Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->b(Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;)Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->list()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$a;->a(Ljava/util/List;)V

    .line 200
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$1$1;->a:Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$1;->a:Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->h(Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$1$1;->a:Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$1;

    iget-object v1, v1, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$1;->a:Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->g(Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;)Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 201
    return-void
.end method
