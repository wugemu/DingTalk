.class final Lcom/alibaba/android/rimet/utils/UrlUtils$1;
.super Ljava/lang/Object;
.source "UrlUtils.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/app/Activity;Landroid/net/Uri;Landroid/content/Intent;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$1;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "rewriteIntent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 224
    iget-object v1, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$1;->a:Landroid/content/Intent;

    invoke-static {v1}, Lcoy;->a(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    .line 225
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 228
    :cond_0
    return-object p1
.end method
