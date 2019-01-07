.class final Lflz$11;
.super Ljava/lang/Object;
.source "UserNavigator.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflz;->a(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:I


# direct methods
.method constructor <init>(JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 217
    iput-wide p1, p0, Lflz$11;->a:J

    iput-object p3, p0, Lflz$11;->b:Ljava/lang/String;

    iput-boolean p4, p0, Lflz$11;->c:Z

    iput-object p5, p0, Lflz$11;->d:Ljava/lang/String;

    iput-object p6, p0, Lflz$11;->e:Ljava/lang/String;

    iput p7, p0, Lflz$11;->f:I

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
    .line 220
    const-string/jumbo v0, "org_id"

    iget-wide v2, p0, Lflz$11;->a:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 221
    const-string/jumbo v0, "org_name"

    iget-object v1, p0, Lflz$11;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    const-string/jumbo v0, "key_personal_user"

    iget-boolean v1, p0, Lflz$11;->c:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 223
    const-string/jumbo v0, "intent_key_industry_code"

    iget-object v1, p0, Lflz$11;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    const-string/jumbo v0, "intent_key_add_members_jump_url"

    iget-object v1, p0, Lflz$11;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    const-string/jumbo v0, "intent_key_member_count_required"

    iget v1, p0, Lflz$11;->f:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 226
    return-object p1
.end method
