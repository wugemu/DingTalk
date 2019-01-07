.class final Lfgp$2;
.super Ljava/lang/Object;
.source "OrgApplyAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfgp;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

.field final synthetic b:I

.field final synthetic c:Lfgp;


# direct methods
.method constructor <init>(Lfgp;Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;I)V
    .locals 0
    .param p1, "this$0"    # Lfgp;

    .prologue
    .line 258
    iput-object p1, p0, Lfgp$2;->c:Lfgp;

    iput-object p2, p0, Lfgp$2;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    iput p3, p0, Lfgp$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 261
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lfgp$2;->c:Lfgp;

    invoke-static {v1}, Lfgp;->a(Lfgp;)Landroid/app/Activity;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/org_apply_detail.html"

    new-instance v2, Lfgp$2$1;

    invoke-direct {v2, p0}, Lfgp$2$1;-><init>(Lfgp$2;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 270
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lfgp$2;->c:Lfgp;

    invoke-static {v1}, Lfgp;->c(Lfgp;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 271
    iget-object v0, p0, Lfgp$2;->c:Lfgp;

    invoke-static {v0, v3}, Lfgp;->a(Lfgp;Z)Z

    .line 272
    iget-object v0, p0, Lfgp$2;->c:Lfgp;

    invoke-virtual {v0}, Lfgp;->notifyDataSetChanged()V

    .line 273
    return-void
.end method
