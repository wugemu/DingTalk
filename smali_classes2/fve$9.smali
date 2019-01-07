.class final Lfve$9;
.super Ljava/lang/Object;
.source "UserBusinessProfilePresenter.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfve;->a(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;JILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

.field final synthetic e:Lfve;


# direct methods
.method constructor <init>(Lfve;JILjava/lang/String;Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;)V
    .locals 0
    .param p1, "this$0"    # Lfve;

    .prologue
    .line 222
    iput-object p1, p0, Lfve$9;->e:Lfve;

    iput-wide p2, p0, Lfve$9;->a:J

    iput p4, p0, Lfve$9;->b:I

    iput-object p5, p0, Lfve$9;->c:Ljava/lang/String;

    iput-object p6, p0, Lfve$9;->d:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

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
    .line 225
    const-string/jumbo v0, "user_id"

    iget-wide v2, p0, Lfve$9;->a:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 226
    const-string/jumbo v0, "fr_source"

    iget v1, p0, Lfve$9;->b:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 227
    const-string/jumbo v0, "fr_source_title"

    iget-object v1, p0, Lfve$9;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    iget-object v0, p0, Lfve$9;->d:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 229
    const-string/jumbo v0, "keyword"

    iget-object v1, p0, Lfve$9;->d:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    .line 230
    invoke-virtual {v1}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "keyword"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 229
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    :cond_0
    return-object p1
.end method
