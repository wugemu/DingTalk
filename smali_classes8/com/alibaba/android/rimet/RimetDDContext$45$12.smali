.class final Lcom/alibaba/android/rimet/RimetDDContext$45$12;
.super Ljava/lang/Object;
.source "RimetDDContext.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/RimetDDContext$45;->a(Landroid/app/Activity;Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoObjectsFetcher;Lcom/alibaba/wukong/im/Message;ZLandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoObjectsFetcher;

.field final synthetic d:Lcom/alibaba/wukong/im/Message;

.field final synthetic e:Z

.field final synthetic f:Lcom/alibaba/android/rimet/RimetDDContext$45;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/RimetDDContext$45;Landroid/os/Bundle;Landroid/app/Activity;Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoObjectsFetcher;Lcom/alibaba/wukong/im/Message;Z)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/rimet/RimetDDContext$45;

    .prologue
    .line 735
    iput-object p1, p0, Lcom/alibaba/android/rimet/RimetDDContext$45$12;->f:Lcom/alibaba/android/rimet/RimetDDContext$45;

    iput-object p2, p0, Lcom/alibaba/android/rimet/RimetDDContext$45$12;->a:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/alibaba/android/rimet/RimetDDContext$45$12;->b:Landroid/app/Activity;

    iput-object p4, p0, Lcom/alibaba/android/rimet/RimetDDContext$45$12;->c:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoObjectsFetcher;

    iput-object p5, p0, Lcom/alibaba/android/rimet/RimetDDContext$45$12;->d:Lcom/alibaba/wukong/im/Message;

    iput-boolean p6, p0, Lcom/alibaba/android/rimet/RimetDDContext$45$12;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 738
    iget-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext$45$12;->a:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 739
    iget-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext$45$12;->a:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 741
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext$45$12;->b:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext$45$12;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext$45$12;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 742
    const-string/jumbo v0, "orientation"

    iget-object v1, p0, Lcom/alibaba/android/rimet/RimetDDContext$45$12;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 744
    :cond_1
    const-string/jumbo v0, "photoList_fetcher"

    iget-object v1, p0, Lcom/alibaba/android/rimet/RimetDDContext$45$12;->c:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoObjectsFetcher;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 745
    const-string/jumbo v0, "current_photo"

    iget-object v1, p0, Lcom/alibaba/android/rimet/RimetDDContext$45$12;->d:Lcom/alibaba/wukong/im/Message;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 746
    const-string/jumbo v0, "is_encrypt_fragment"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 747
    const-string/jumbo v0, "showOrigin"

    iget-boolean v1, p0, Lcom/alibaba/android/rimet/RimetDDContext$45$12;->e:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 748
    return-object p1
.end method
