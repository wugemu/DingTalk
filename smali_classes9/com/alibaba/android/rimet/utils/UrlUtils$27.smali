.class final Lcom/alibaba/android/rimet/utils/UrlUtils$27;
.super Ljava/lang/Object;
.source "UrlUtils.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/utils/UrlUtils;->c(Landroid/app/Activity;Landroid/net/Uri;Landroid/content/Intent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:J

.field final synthetic g:J

.field final synthetic h:J

.field final synthetic i:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$27;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$27;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$27;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$27;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$27;->e:Ljava/lang/String;

    iput-wide p6, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$27;->f:J

    iput-wide p8, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$27;->g:J

    iput-wide p10, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$27;->h:J

    iput-object p12, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$27;->i:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "rewriteIntent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 383
    const-string/jumbo v0, "from"

    iget-object v1, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$27;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 384
    const-string/jumbo v0, "to_page"

    iget-object v1, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$27;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    const-string/jumbo v0, "conversation_id"

    iget-object v1, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$27;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 386
    iget-object v0, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$27;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 387
    const-string/jumbo v0, "ding_id"

    iget-object v1, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$27;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$27;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 390
    const-string/jumbo v0, "confirm_ding"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 393
    :cond_1
    const-string/jumbo v0, "intent_key_event_id"

    iget-wide v2, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$27;->f:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 394
    const-string/jumbo v0, "intent_key_event_start_millis"

    iget-wide v2, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$27;->g:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 395
    const-string/jumbo v0, "intent_key_event_end_millis"

    iget-wide v2, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$27;->h:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 396
    const-string/jumbo v0, "url"

    iget-object v1, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$27;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    const/high16 v0, 0x34000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 399
    return-object p1
.end method
