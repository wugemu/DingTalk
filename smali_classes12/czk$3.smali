.class final Lczk$3;
.super Ljava/lang/Object;
.source "UserPictureViewHolder.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lczk;
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

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:J

.field final synthetic j:Ljava/lang/String;

.field final synthetic k:Ljava/lang/String;

.field final synthetic l:I

.field final synthetic m:I

.field final synthetic n:Ljava/lang/String;

.field final synthetic o:I

.field final synthetic p:Ljava/lang/String;

.field final synthetic q:Lczk;


# direct methods
.method constructor <init>(Lczk;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lczk;

    .prologue
    .line 407
    iput-object p1, p0, Lczk$3;->q:Lczk;

    iput-object p2, p0, Lczk$3;->a:Ljava/lang/String;

    iput-wide p3, p0, Lczk$3;->b:J

    iput p5, p0, Lczk$3;->c:I

    iput-object p6, p0, Lczk$3;->d:Ljava/lang/String;

    iput-object p7, p0, Lczk$3;->e:Ljava/lang/String;

    iput-object p8, p0, Lczk$3;->f:Ljava/lang/String;

    iput-object p9, p0, Lczk$3;->g:Ljava/lang/String;

    iput-object p10, p0, Lczk$3;->h:Ljava/lang/String;

    iput-wide p11, p0, Lczk$3;->i:J

    iput-object p13, p0, Lczk$3;->j:Ljava/lang/String;

    iput-object p14, p0, Lczk$3;->k:Ljava/lang/String;

    move/from16 v0, p15

    iput v0, p0, Lczk$3;->l:I

    move/from16 v0, p16

    iput v0, p0, Lczk$3;->m:I

    move-object/from16 v0, p17

    iput-object v0, p0, Lczk$3;->n:Ljava/lang/String;

    move/from16 v0, p18

    iput v0, p0, Lczk$3;->o:I

    move-object/from16 v0, p19

    iput-object v0, p0, Lczk$3;->p:Ljava/lang/String;

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
    .line 409
    const-string/jumbo v0, "intent_key_emotion_package_id"

    iget-object v1, p0, Lczk$3;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 410
    const-string/jumbo v0, "intent_key_emotion_id"

    iget-wide v2, p0, Lczk$3;->b:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 411
    const-string/jumbo v0, "intent_key_emotion_type"

    iget v1, p0, Lczk$3;->c:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 412
    const-string/jumbo v0, "intent_key_emotion_media_id"

    iget-object v1, p0, Lczk$3;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 413
    const-string/jumbo v0, "intent_key_emotion_auth_media_id"

    iget-object v1, p0, Lczk$3;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 414
    const-string/jumbo v0, "intent_key_emotion_auth_code"

    iget-object v1, p0, Lczk$3;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 415
    const-string/jumbo v0, "intent_key_emotion_url"

    iget-object v1, p0, Lczk$3;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 416
    const-string/jumbo v0, "intent_key_emotion_auth_entity"

    iget-object v1, p0, Lczk$3;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    const-string/jumbo v0, "intent_key_emotion_topic_id"

    iget-wide v2, p0, Lczk$3;->i:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 418
    const-string/jumbo v0, "3rd_emotion_id"

    iget-object v1, p0, Lczk$3;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 419
    const-string/jumbo v0, "p_name"

    iget-object v1, p0, Lczk$3;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    const-string/jumbo v0, "3rd_emotion_width"

    iget v1, p0, Lczk$3;->l:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 421
    const-string/jumbo v0, "3rd_emotion_height"

    iget v1, p0, Lczk$3;->m:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 422
    const-string/jumbo v0, "pr_uuid"

    iget-object v1, p0, Lczk$3;->n:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 423
    const-string/jumbo v0, "pr_type"

    iget v1, p0, Lczk$3;->o:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 424
    const-string/jumbo v0, "pr_url"

    iget-object v1, p0, Lczk$3;->p:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 425
    return-object p1
.end method
