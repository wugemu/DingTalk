.class final Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$a$1;
.super Ljava/lang/Object;
.source "SelectorCityActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

.field final synthetic b:Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$a;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$a;Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$a;

    .prologue
    .line 521
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$a$1;->b:Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$a;

    iput-object p2, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$a$1;->a:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

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
    .line 524
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$a$1;->b:Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$a;

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$a;->a:Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$a$1;->a:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->a(Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;Z)V

    .line 525
    return-void
.end method
