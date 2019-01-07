.class final Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity$3;
.super Ljava/lang/Object;
.source "DisbandOrgActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity$3;->a:Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 194
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "contact_dissolve_service_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 196
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity$3;->a:Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;

    const-string/jumbo v2, "https://h5.dingtalk.com/40plan/appoint-custom/index.html?from=dissolve"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    return-void
.end method
