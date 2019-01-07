.class public final Leig$1;
.super Ljava/lang/Object;
.source "PhotoDealHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Leig$1;->a:Landroid/app/Activity;

    iput-object p2, p0, Leig$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 39
    if-nez p2, :cond_1

    .line 41
    iget-object v0, p0, Leig$1;->a:Landroid/app/Activity;

    iget-object v1, p0, Leig$1;->b:Ljava/lang/String;

    .line 1104
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1105
    const-string/jumbo v3, "image/*"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1106
    const-string/jumbo v3, "android.intent.extra.STREAM"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1107
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    invoke-static {v2}, Lcoy;->a(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v3, v4, v2}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    if-ne p2, v3, :cond_2

    .line 44
    invoke-static {}, Lify;->a()Lify;

    move-result-object v0

    iget-object v1, p0, Leig$1;->b:Ljava/lang/String;

    new-instance v2, Leig$1$1;

    invoke-direct {v2, p0}, Leig$1$1;-><init>(Leig$1;)V

    invoke-virtual {v0, v1, v2}, Lify;->a(Ljava/lang/String;Lifv;)V

    goto :goto_0

    .line 80
    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 82
    iget-object v0, p0, Leig$1;->a:Landroid/app/Activity;

    iget-object v1, p0, Leig$1;->b:Ljava/lang/String;

    const-string/jumbo v2, "image/jpeg"

    invoke-static {v0, v1, v2}, Lcom/alibaba/laiwang/photokit/utils/ImageUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 83
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const v1, 0x7f09220e

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Leig$1;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Leig$1;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Leig$1;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 87
    :cond_3
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 89
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v0

    iget-object v1, p0, Leig$1;->a:Landroid/app/Activity;

    const-wide/16 v2, 0x0

    iget-object v4, p0, Leig$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;JLjava/lang/String;)V

    .line 90
    iget-object v0, p0, Leig$1;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Leig$1;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
