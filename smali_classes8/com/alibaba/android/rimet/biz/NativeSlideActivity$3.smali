.class final Lcom/alibaba/android/rimet/biz/NativeSlideActivity$3;
.super Ljava/lang/Object;
.source "NativeSlideActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/NativeSlideActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/NativeSlideActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/NativeSlideActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/NativeSlideActivity;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity$3;->a:Lcom/alibaba/android/rimet/biz/NativeSlideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 107
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    .line 108
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity$3;->a:Lcom/alibaba/android/rimet/biz/NativeSlideActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/biz/NativeSlideActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity$3;->a:Lcom/alibaba/android/rimet/biz/NativeSlideActivity;

    invoke-static {v1}, Lcom/alibaba/android/rimet/biz/NativeSlideActivity;->a(Lcom/alibaba/android/rimet/biz/NativeSlideActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 109
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity$3;->a:Lcom/alibaba/android/rimet/biz/NativeSlideActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity$3;->a:Lcom/alibaba/android/rimet/biz/NativeSlideActivity;

    const-class v3, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/rimet/biz/NativeSlideActivity;->startActivity(Landroid/content/Intent;)V

    .line 110
    invoke-static {}, Lcod;->a()Lcod;

    move-result-object v0

    sget-object v1, Lcod;->c:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcod;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity$3;->a:Lcom/alibaba/android/rimet/biz/NativeSlideActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/biz/NativeSlideActivity;->finish()V

    .line 112
    return-void
.end method
