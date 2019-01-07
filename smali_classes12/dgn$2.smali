.class final Ldgn$2;
.super Ljava/lang/Object;
.source "ChatDetailImageViewHolder.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldgn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:J

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:I

.field final synthetic j:I

.field final synthetic k:Ljava/lang/String;

.field final synthetic l:I

.field final synthetic m:Ljava/lang/String;

.field final synthetic n:Ldgn;


# direct methods
.method constructor <init>(Ldgn;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Ldgn;

    .prologue
    .line 268
    iput-object p1, p0, Ldgn$2;->n:Ldgn;

    iput-object p2, p0, Ldgn$2;->a:Ljava/lang/String;

    iput-wide p3, p0, Ldgn$2;->b:J

    iput p5, p0, Ldgn$2;->c:I

    iput-object p6, p0, Ldgn$2;->d:Ljava/lang/String;

    iput-object p7, p0, Ldgn$2;->e:Ljava/lang/String;

    iput-wide p8, p0, Ldgn$2;->f:J

    iput-object p10, p0, Ldgn$2;->g:Ljava/lang/String;

    iput-object p11, p0, Ldgn$2;->h:Ljava/lang/String;

    iput p12, p0, Ldgn$2;->i:I

    iput p13, p0, Ldgn$2;->j:I

    iput-object p14, p0, Ldgn$2;->k:Ljava/lang/String;

    move/from16 v0, p15

    iput v0, p0, Ldgn$2;->l:I

    move-object/from16 v0, p16

    iput-object v0, p0, Ldgn$2;->m:Ljava/lang/String;

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
    .line 271
    const-string/jumbo v0, "intent_key_emotion_package_id"

    iget-object v1, p0, Ldgn$2;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    const-string/jumbo v0, "intent_key_emotion_id"

    iget-wide v2, p0, Ldgn$2;->b:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 273
    const-string/jumbo v0, "intent_key_emotion_type"

    iget v1, p0, Ldgn$2;->c:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 274
    const-string/jumbo v0, "intent_key_emotion_media_id"

    iget-object v1, p0, Ldgn$2;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    const-string/jumbo v0, "intent_key_emotion_url"

    iget-object v1, p0, Ldgn$2;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    const-string/jumbo v0, "intent_key_emotion_topic_id"

    iget-wide v2, p0, Ldgn$2;->f:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 277
    const-string/jumbo v0, "3rd_emotion_id"

    iget-object v1, p0, Ldgn$2;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    const-string/jumbo v0, "p_name"

    iget-object v1, p0, Ldgn$2;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    const-string/jumbo v0, "3rd_emotion_width"

    iget v1, p0, Ldgn$2;->i:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 280
    const-string/jumbo v0, "3rd_emotion_height"

    iget v1, p0, Ldgn$2;->j:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 281
    const-string/jumbo v0, "pr_uuid"

    iget-object v1, p0, Ldgn$2;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    const-string/jumbo v0, "pr_type"

    iget v1, p0, Ldgn$2;->l:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 283
    const-string/jumbo v0, "pr_url"

    iget-object v1, p0, Ldgn$2;->m:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    return-object p1
.end method
