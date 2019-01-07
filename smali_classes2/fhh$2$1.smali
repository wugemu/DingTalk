.class final Lfhh$2$1;
.super Ljava/lang/Object;
.source "DepartmentViewHolder.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfhh$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfhh$2;


# direct methods
.method constructor <init>(Lfhh$2;)V
    .locals 0
    .param p1, "this$1"    # Lfhh$2;

    .prologue
    .line 147
    iput-object p1, p0, Lfhh$2$1;->a:Lfhh$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 150
    const-string/jumbo v0, "org_id"

    iget-object v1, p0, Lfhh$2$1;->a:Lfhh$2;

    iget-object v1, v1, Lfhh$2;->a:Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->getOrgObject()Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v1

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 151
    return-object p1
.end method
