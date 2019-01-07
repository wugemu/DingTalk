.class final Lfgz$6;
.super Ljava/lang/Object;
.source "ContactHeaderViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfgz;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfgz;


# direct methods
.method constructor <init>(Lfgz;)V
    .locals 0
    .param p1, "this$0"    # Lfgz;

    .prologue
    .line 245
    iput-object p1, p0, Lfgz$6;->a:Lfgz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 248
    const-string/jumbo v0, "STATISTICS"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    const-class v1, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "homepage_contacts_square_click"

    invoke-interface {v0, v1, v2, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 249
    iget-object v0, p0, Lfgz$6;->a:Lfgz;

    invoke-static {v0}, Lfgz;->b(Lfgz;)Lfhi;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfgz$6;->a:Lfgz;

    .line 250
    invoke-static {v0}, Lfgz;->b(Lfgz;)Lfhi;

    move-result-object v0

    invoke-virtual {v0}, Lfhi;->a()Lfhi$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfgz$6;->a:Lfgz;

    .line 251
    invoke-static {v0}, Lfgz;->b(Lfgz;)Lfhi;

    move-result-object v0

    invoke-virtual {v0}, Lfhi;->a()Lfhi$a;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    iget-object v1, p0, Lfgz$6;->a:Lfgz;

    invoke-static {v1}, Lfgz;->a(Lfgz;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lfgz$6;->a:Lfgz;

    invoke-static {v2}, Lfgz;->b(Lfgz;)Lfhi;

    move-result-object v2

    invoke-virtual {v2}, Lfhi;->a()Lfhi$a;

    invoke-virtual {v0, v1, v4, v4}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :goto_0
    return-void

    .line 254
    :cond_0
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    iget-object v1, p0, Lfgz$6;->a:Lfgz;

    invoke-static {v1}, Lfgz;->a(Lfgz;)Landroid/content/Context;

    move-result-object v1

    .line 255
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 254
    invoke-virtual {v0, v1, v2, v4}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
