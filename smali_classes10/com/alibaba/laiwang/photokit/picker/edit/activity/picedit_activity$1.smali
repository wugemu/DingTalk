.class final Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity$1;
.super Ljava/lang/Object;
.source "picedit_activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;


# direct methods
.method constructor <init>(Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity$1;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 178
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity$1;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;

    invoke-static {v1}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->a(Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity$1;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity$1;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;

    invoke-static {v2}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->a(Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lhbx;->a(Landroid/content/Context;Landroid/net/Uri;)V

    .line 182
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 183
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity$1;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->setResult(ILandroid/content/Intent;)V

    .line 185
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity$1;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;

    invoke-virtual {v1}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->finish()V

    .line 186
    return-void
.end method
