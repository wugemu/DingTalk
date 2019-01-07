.class final Leur$8;
.super Ljava/lang/Object;
.source "TeleConfRecordAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leur;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;

.field final synthetic b:Leur$c;

.field final synthetic c:Leur;


# direct methods
.method constructor <init>(Leur;Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;Leur$c;)V
    .locals 0
    .param p1, "this$0"    # Leur;

    .prologue
    .line 774
    iput-object p1, p0, Leur$8;->c:Leur;

    iput-object p2, p0, Leur$8;->a:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;

    iput-object p3, p0, Leur$8;->b:Leur$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 777
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Leur;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Goto voip call messing setting"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "call_record_voip_call_miss_help_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 780
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    iget-object v1, p0, Leur$8;->c:Leur;

    iget-object v1, v1, Leur;->b:Landroid/app/Activity;

    const-string/jumbo v2, "https://csmobile.alipay.com/detailSolution.htm?knowledgeType=1&scene=dd_gfdh&questionId=201602322549"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    const-string/jumbo v0, "conf_fir_enter_call_setting_guide"

    invoke-static {v0, v4}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 784
    iget-object v0, p0, Leur$8;->a:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->k:Ljava/lang/Boolean;

    .line 785
    iget-object v0, p0, Leur$8;->b:Leur$c;

    .line 1885
    iget-object v0, v0, Leur$c;->l:Landroid/view/View;

    .line 785
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 786
    return-void
.end method
