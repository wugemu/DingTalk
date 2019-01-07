.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$2;
.super Ljava/lang/Object;
.source "WifiFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;)V
    .locals 1
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;

    .prologue
    .line 637
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$2;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 638
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$2;->a:Z

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 643
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$2;->a:Z

    if-eqz v1, :cond_0

    .line 659
    :goto_0
    return-void

    .line 646
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$2;->a:Z

    .line 648
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$2;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;->d:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;

    new-instance v2, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$2$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$2$1;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$2;)V

    .line 1136
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseBleFragment;->c()Lbsw$a;

    move-result-object v1

    .line 1137
    if-eqz v1, :cond_1

    .line 1138
    invoke-interface {v1, v2}, Lbsw$a;->j(Lbsy$b;)V

    .line 654
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 655
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "_field_event_id"

    const-string/jumbo v2, "2101"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    const-string/jumbo v1, "spm"

    const-string/jumbo v2, "a2q0r.11900330.1.cancel"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "Page_Smart_Device_Set_Network"

    const-string/jumbo v3, "Page_Smart_Device_Set_Network_Button-cancel"

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->customEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 658
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "WifiFragment"

    const-string/jumbo v3, "Page_Smart_Device_set_network_cancel"

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method
