.class final Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$5;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

.field final synthetic b:I

.field final synthetic c:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 972
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$5;->c:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    iput-object p2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$5;->a:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    iput p3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$5;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 975
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$5;->a:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    const/4 v1, 0x3

    iget v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$5;->b:I

    iget v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$5;->b:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->a(III)V

    .line 976
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$5;->c:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->h(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$5;->b:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->setRedCount(I)V

    .line 977
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$5;->c:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->h(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;

    move-result-object v0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    const v2, 0x7f0923ee

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->setIcon(Ljava/lang/String;)V

    .line 978
    return-void
.end method
