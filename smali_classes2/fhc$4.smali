.class final Lfhc$4;
.super Ljava/lang/Object;
.source "ContactSubDepartmentViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfhc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/user/contact/homepage/AlphaDeviceItem;

.field final synthetic c:Lfhc;


# direct methods
.method constructor <init>(Lfhc;Ljava/lang/String;Lcom/alibaba/android/user/contact/homepage/AlphaDeviceItem;)V
    .locals 0
    .param p1, "this$0"    # Lfhc;

    .prologue
    .line 396
    iput-object p1, p0, Lfhc$4;->c:Lfhc;

    iput-object p2, p0, Lfhc$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lfhc$4;->b:Lcom/alibaba/android/user/contact/homepage/AlphaDeviceItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 399
    iget-object v0, p0, Lfhc$4;->a:Ljava/lang/String;

    invoke-static {v0, v5}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 400
    iget-object v0, p0, Lfhc$4;->c:Lfhc;

    invoke-static {v0}, Lfhc;->e(Lfhc;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->setVisibility(I)V

    .line 402
    invoke-static {}, Lfvv;->a()Lfvv;

    move-result-object v0

    const-string/jumbo v1, "contact_smart_device_list_h5_enable"

    .line 1217
    invoke-virtual {v0, v1, v5, v5}, Lfvv;->a(Ljava/lang/String;ZZ)Z

    move-result v0

    .line 402
    if-eqz v0, :cond_0

    .line 404
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    iget-object v1, p0, Lfhc$4;->c:Lfhc;

    invoke-static {v1}, Lfhc;->a(Lfhc;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lfhc$4;->b:Lcom/alibaba/android/user/contact/homepage/AlphaDeviceItem;

    invoke-virtual {v2}, Lcom/alibaba/android/user/contact/homepage/AlphaDeviceItem;->getOrgId()J

    move-result-wide v2

    .line 2031
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(J)Ljava/lang/String;

    move-result-object v2

    .line 2033
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "https://tms.dingtalk.com/markets/dingtalk/smartdevicelist?wh_ttid=phone&corpId="

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 404
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    :goto_0
    return-void

    .line 408
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lfhc$4;->c:Lfhc;

    invoke-static {v1}, Lfhc;->a(Lfhc;)Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/contact/alpha_device.html"

    new-instance v2, Lfhc$4$1;

    invoke-direct {v2, p0}, Lfhc$4$1;-><init>(Lfhc$4;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method
