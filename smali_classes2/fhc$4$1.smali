.class final Lfhc$4$1;
.super Ljava/lang/Object;
.source "ContactSubDepartmentViewHolder.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfhc$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfhc$4;


# direct methods
.method constructor <init>(Lfhc$4;)V
    .locals 0
    .param p1, "this$1"    # Lfhc$4;

    .prologue
    .line 408
    iput-object p1, p0, Lfhc$4$1;->a:Lfhc$4;

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
    .line 411
    const-string/jumbo v0, "org_id"

    iget-object v1, p0, Lfhc$4$1;->a:Lfhc$4;

    iget-object v1, v1, Lfhc$4;->b:Lcom/alibaba/android/user/contact/homepage/AlphaDeviceItem;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/homepage/AlphaDeviceItem;->getOrgId()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 412
    const-string/jumbo v0, "org_name"

    iget-object v1, p0, Lfhc$4$1;->a:Lfhc$4;

    iget-object v1, v1, Lfhc$4;->b:Lcom/alibaba/android/user/contact/homepage/AlphaDeviceItem;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/homepage/AlphaDeviceItem;->getOrgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 413
    return-object p1
.end method
