.class final Lcom/alibaba/android/rimet/utils/UrlUtils$21;
.super Ljava/lang/Object;
.source "UrlUtils.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/utils/UrlUtils;->e(Landroid/app/Activity;Landroid/net/Uri;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 2043
    iput-object p1, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$21;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1
    .param p1, "rewriteIntent"    # Landroid/content/Intent;

    .prologue
    .line 2046
    iget-object v0, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$21;->a:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 2047
    iget-object v0, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$21;->a:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2049
    :cond_0
    return-object p1
.end method
