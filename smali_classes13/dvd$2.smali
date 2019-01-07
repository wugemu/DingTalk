.class final Ldvd$2;
.super Ljava/lang/Object;
.source "ForwardBatchSelectHandler.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldvd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:J

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Ldvd;


# direct methods
.method constructor <init>(Ldvd;IJLjava/util/List;)V
    .locals 1
    .param p1, "this$0"    # Ldvd;

    .prologue
    .line 145
    iput-object p1, p0, Ldvd$2;->d:Ldvd;

    iput p2, p0, Ldvd$2;->a:I

    iput-wide p3, p0, Ldvd$2;->b:J

    iput-object p5, p0, Ldvd$2;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 148
    const-string/jumbo v0, "im_navigator_from"

    const-string/jumbo v1, "msg"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    const-string/jumbo v0, "intent_key_forward_count"

    iget v1, p0, Ldvd$2;->a:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 150
    const-string/jumbo v0, "intent_key_im_forward_mode"

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 151
    const-string/jumbo v0, "intent_key_time_stamp"

    iget-wide v2, p0, Ldvd$2;->b:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 152
    iget-object v0, p0, Ldvd$2;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldvd$2;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 154
    const-string/jumbo v1, "message"

    iget-object v0, p0, Ldvd$2;->c:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 156
    :cond_0
    const-string/jumbo v0, "count_limit"

    iget v1, p0, Ldvd$2;->a:I

    invoke-static {v1}, Ldvd;->a(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 157
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 158
    return-object p1
.end method
