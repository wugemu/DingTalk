.class final Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$81;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->a(Lcom/alibaba/android/dingtalk/ads/base/models/AdsAlertStyleObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog$Item;

.field final synthetic b:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog$Item;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 4542
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$81;->b:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    iput-object p2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$81;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog$Item;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 4546
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$81;->b:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$81;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog$Item;

    invoke-static {v0, v1}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->a(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog$Item;)V

    .line 4547
    return-void
.end method
