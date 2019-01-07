.class final Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$3;
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
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

.field final synthetic b:Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$3;->b:Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$3;->a:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

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
    .line 261
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$3;->b:Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$3;->a:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->a(Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;Z)V

    .line 262
    return-void
.end method
