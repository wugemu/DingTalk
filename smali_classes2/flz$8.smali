.class final Lflz$8;
.super Ljava/lang/Object;
.source "UserNavigator.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflz;->a(Landroid/app/Activity;JILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(JILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 150
    iput-wide p1, p0, Lflz$8;->a:J

    iput p3, p0, Lflz$8;->b:I

    iput-object p4, p0, Lflz$8;->c:Ljava/lang/String;

    iput-object p5, p0, Lflz$8;->d:Ljava/lang/String;

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
    .line 153
    iget-wide v0, p0, Lflz$8;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 154
    const-string/jumbo v0, "UserNavigator nav2SendFriendRequestPage(),uid 0"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    :cond_0
    const-string/jumbo v0, "user_id"

    iget-wide v2, p0, Lflz$8;->a:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 157
    const-string/jumbo v0, "fr_source"

    iget v1, p0, Lflz$8;->b:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 158
    const-string/jumbo v0, "fr_source_title"

    iget-object v1, p0, Lflz$8;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    const-string/jumbo v0, "keyword"

    iget-object v1, p0, Lflz$8;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    return-object p1
.end method
