.class final Lfhc$2$1;
.super Ljava/lang/Object;
.source "ContactSubDepartmentViewHolder.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfhc$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfhc$2;


# direct methods
.method constructor <init>(Lfhc$2;)V
    .locals 0
    .param p1, "this$1"    # Lfhc$2;

    .prologue
    .line 341
    iput-object p1, p0, Lfhc$2$1;->a:Lfhc$2;

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
    .line 344
    const-string/jumbo v0, "display_enterprise_oid"

    iget-object v1, p0, Lfhc$2$1;->a:Lfhc$2;

    iget-object v1, v1, Lfhc$2;->a:Lcom/alibaba/android/user/contact/homepage/MicroAppItem;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/homepage/MicroAppItem;->getOrgId()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 345
    const-string/jumbo v0, "key_org_role"

    iget-object v1, p0, Lfhc$2$1;->a:Lfhc$2;

    iget-object v1, v1, Lfhc$2;->a:Lcom/alibaba/android/user/contact/homepage/MicroAppItem;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/homepage/MicroAppItem;->getRole()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 346
    return-object p1
.end method
