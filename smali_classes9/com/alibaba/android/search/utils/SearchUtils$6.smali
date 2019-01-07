.class final Lcom/alibaba/android/search/utils/SearchUtils$6;
.super Ljava/lang/Object;
.source "SearchUtils.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/utils/SearchUtils;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)V
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
    .line 1290
    iput-object p1, p0, Lcom/alibaba/android/search/utils/SearchUtils$6;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1294
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1295
    iget-object v0, p0, Lcom/alibaba/android/search/utils/SearchUtils$6;->a:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 1296
    iget-object v0, p0, Lcom/alibaba/android/search/utils/SearchUtils$6;->a:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1298
    :cond_0
    return-object p1
.end method
