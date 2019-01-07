.class final Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity$2;
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
    .line 189
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity$2;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 192
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity$2;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;

    invoke-static {v1}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->a(Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity$2;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity$2;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;

    invoke-static {v2}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->a(Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lhbx;->a(Landroid/content/Context;Landroid/net/Uri;)V

    .line 196
    :cond_0
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity$2;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity$2;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;

    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity$2;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;

    invoke-static {v3}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->b(Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lhbx;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v2, v3}, Lhbx;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->a(Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;Landroid/net/Uri;)Landroid/net/Uri;

    .line 197
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity$2;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;

    invoke-static {v1}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->a(Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_1

    .line 198
    sget v1, Liff$f;->sdcard_unavailable:I

    invoke-static {v1}, Lhcn;->a(I)V

    .line 199
    const-string/jumbo v1, "Pick"

    const-string/jumbo v2, "saveBitmapToUri uri is null!"

    invoke-static {v1, v2}, Lhcw;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :goto_0
    return-void

    .line 203
    :cond_1
    const-string/jumbo v1, "Pick"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "picedit_activity bitmapToUri uri="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity$2;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;

    invoke-static {v4}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->a(Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lhcw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 205
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity$2;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;

    invoke-static {v1}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->a(Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 206
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity$2;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->setResult(ILandroid/content/Intent;)V

    .line 208
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity$2;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;

    invoke-virtual {v1}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->finish()V

    goto :goto_0
.end method
