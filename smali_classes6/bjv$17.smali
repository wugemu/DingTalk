.class final Lbjv$17;
.super Ljava/lang/Object;
.source "DingNavUtil.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbjv;->a(Landroid/app/Activity;IIZLjava/util/ArrayList;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Z

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:J

.field final synthetic f:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(IIZLjava/lang/String;JLjava/util/ArrayList;)V
    .locals 1

    .prologue
    .line 950
    iput p1, p0, Lbjv$17;->a:I

    iput p2, p0, Lbjv$17;->b:I

    iput-boolean p3, p0, Lbjv$17;->c:Z

    iput-object p4, p0, Lbjv$17;->d:Ljava/lang/String;

    iput-wide p5, p0, Lbjv$17;->e:J

    iput-object p7, p0, Lbjv$17;->f:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 953
    const-string/jumbo v0, "intent_key_remind_mode_index"

    iget v1, p0, Lbjv$17;->a:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 954
    const-string/jumbo v0, "intent_key_remind_type_value"

    iget v1, p0, Lbjv$17;->b:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 955
    const-string/jumbo v0, "intent_key_show_remind_type"

    iget-boolean v1, p0, Lbjv$17;->c:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 956
    const-string/jumbo v0, "intent_key_page_title"

    iget-object v1, p0, Lbjv$17;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 957
    const-string/jumbo v0, "intent_key_menu_seed"

    iget-wide v2, p0, Lbjv$17;->e:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 958
    const-string/jumbo v0, "intent_key_remind_type_resource_id"

    iget-object v1, p0, Lbjv$17;->f:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 959
    return-object p1
.end method
