.class final Lfhh$2;
.super Ljava/lang/Object;
.source "DepartmentViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfhh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;

.field final synthetic b:Lfhh;


# direct methods
.method constructor <init>(Lfhh;Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;)V
    .locals 0
    .param p1, "this$0"    # Lfhh;

    .prologue
    .line 143
    iput-object p1, p0, Lfhh$2;->b:Lfhh;

    iput-object p2, p0, Lfhh$2;->a:Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 146
    iget-object v0, p0, Lfhh$2;->b:Lfhh;

    invoke-static {v0}, Lfhh;->a(Lfhh;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfhh$2;->a:Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->getOrgObject()Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lfhh$2;->b:Lfhh;

    invoke-static {v0}, Lfhh;->a(Lfhh;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/add_2_org.html"

    new-instance v2, Lfhh$2$1;

    invoke-direct {v2, p0}, Lfhh$2$1;-><init>(Lfhh$2;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 155
    const-string/jumbo v0, "invite_new_members_enter"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 160
    :cond_0
    return-void
.end method
