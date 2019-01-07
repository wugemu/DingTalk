.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$1;
.super Ljava/lang/Object;
.source "WifiFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;

    .prologue
    .line 601
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .line 604
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;

    .line 1515
    iget-object v2, v2, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;->a:Ljava/util/List;

    .line 604
    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$b;

    .line 605
    .local v0, "data":Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$b;
    iget-boolean v2, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$b;->c:Z

    if-eqz v2, :cond_1

    .line 606
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;->d:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->h(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;)V

    .line 607
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 608
    .local v1, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;->d:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->m()Lbsw$b;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 609
    const-string/jumbo v2, "device_type"

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;->d:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->m()Lbsw$b;

    move-result-object v3

    invoke-interface {v3}, Lbsw$b;->c()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    const-string/jumbo v2, "device_server"

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;->d:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->m()Lbsw$b;

    move-result-object v3

    invoke-interface {v3}, Lbsw$b;->e()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    :cond_0
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "WifiFragment"

    const-string/jumbo v4, "oa_bravo_attendance_wifi_other_click"

    invoke-interface {v2, v3, v4, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 627
    .end local v1    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;->b()V

    .line 629
    return-void

    .line 614
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;->d:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$b;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;Ljava/lang/String;)V

    .line 616
    iget-boolean v2, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$b;->b:Z

    if-eqz v2, :cond_2

    .line 617
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;->d:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->b(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;Ljava/lang/String;)V

    .line 618
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;->d:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->i(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 619
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;->d:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$b;->a:Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 621
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;->d:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->i(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 623
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;->d:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 624
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;->d:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;->d:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;

    invoke-static {v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-static {v2, v3}, Lcms;->b(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0
.end method
