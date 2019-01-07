.class final Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$72;
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
    .line 4190
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$72;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 4193
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$72;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->n(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    .line 4194
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$72;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    new-instance v1, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$72$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$72$1;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$72;)V

    invoke-static {v0, p1, v1}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->a(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Landroid/view/View;Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$d;)V

    .line 4229
    return-void
.end method
