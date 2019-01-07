.class final Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$85;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 4653
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$85;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

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
    .line 4656
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->a()Lcom/alibaba/android/dingtalk/userbase/AccountInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$85;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$85;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->ak(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->a(Landroid/app/Activity;Landroid/view/View;)V

    .line 4657
    return-void
.end method
