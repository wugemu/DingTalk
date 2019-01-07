.class final Lcom/alibaba/android/rimet/biz/SlideActivity$2;
.super Ljava/lang/Object;
.source "SlideActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/SlideActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/SlideActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/SlideActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/SlideActivity;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/SlideActivity$2;->a:Lcom/alibaba/android/rimet/biz/SlideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/SlideActivity$2;->a:Lcom/alibaba/android/rimet/biz/SlideActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/biz/SlideActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/SlideActivity$2;->a:Lcom/alibaba/android/rimet/biz/SlideActivity;

    invoke-static {v1}, Lcom/alibaba/android/rimet/biz/SlideActivity;->a(Lcom/alibaba/android/rimet/biz/SlideActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 89
    const-string/jumbo v0, "login_click"

    const/4 v1, 0x0

    const-string/jumbo v2, "a2o5v.11792254.1.welcome_login"

    invoke-static {p1, v0, v1, v2}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->uploadClickProps(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 90
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->a()Lcom/alibaba/android/dingtalk/userbase/AccountInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/SlideActivity$2;->a:Lcom/alibaba/android/rimet/biz/SlideActivity;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->a(Landroid/content/Context;)V

    .line 91
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/SlideActivity$2;->a:Lcom/alibaba/android/rimet/biz/SlideActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/biz/SlideActivity;->finish()V

    .line 92
    return-void
.end method
