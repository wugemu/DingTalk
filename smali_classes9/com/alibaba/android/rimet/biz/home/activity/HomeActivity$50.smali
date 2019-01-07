.class final Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$50;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lemc$a;


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
    .line 2898
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$50;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 4
    .param p1, "result"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2901
    .line 2902
    move v0, p1

    .local v0, "hasShowedDlg":Z
    if-nez p1, :cond_0

    .line 2903
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$50;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v1}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->A(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Z

    move-result v0

    .line 2906
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$50;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v1}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->B(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$50;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v1}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->C(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 2907
    const-string/jumbo v1, "general"

    sget-object v2, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->a:Ljava/lang/String;

    const-string/jumbo v3, "showAnim in tryShowSessionGuide"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2908
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$50;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v1}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->D(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    .line 2909
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$50;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->e(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Z)Z

    .line 2911
    :cond_1
    return-void
.end method
