.class final Ldas$1;
.super Ljava/lang/Object;
.source "ChannelSessionOwnViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lddm;

.field final synthetic c:Ldas;


# direct methods
.method constructor <init>(Ldas;JLddm;)V
    .locals 0
    .param p1, "this$0"    # Ldas;

    .prologue
    .line 54
    iput-object p1, p0, Ldas$1;->c:Ldas;

    iput-wide p2, p0, Ldas$1;->a:J

    iput-object p4, p0, Ldas$1;->b:Lddm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 57
    iget-wide v0, p0, Ldas$1;->a:J

    invoke-static {}, Lddf;->a()Lddi;

    move-result-object v2

    invoke-interface {v2}, Lddi;->c()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 58
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->r:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->setWidgetHiden(Ljava/lang/String;Z)V

    .line 61
    :cond_0
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "contact_servewindow_button_list_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Ldas$1;->c:Ldas;

    iget-object v1, p0, Ldas$1;->b:Lddm;

    invoke-static {v0, v1}, Ldas;->a(Ldas;Lddm;)V

    .line 64
    return-void
.end method
