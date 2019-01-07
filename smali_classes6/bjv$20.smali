.class final Lbjv$20;
.super Ljava/lang/Object;
.source "DingNavUtil.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbjv;->a(Landroid/app/Activity;Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;JJJLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:J

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;JJJLjava/lang/String;)V
    .locals 0

    .prologue
    .line 1012
    iput-object p1, p0, Lbjv$20;->a:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    iput-wide p2, p0, Lbjv$20;->b:J

    iput-wide p4, p0, Lbjv$20;->c:J

    iput-wide p6, p0, Lbjv$20;->d:J

    iput-object p8, p0, Lbjv$20;->e:Ljava/lang/String;

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
    .line 1015
    const-string/jumbo v0, "intent_key_repeat_mode_data"

    iget-object v1, p0, Lbjv$20;->a:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1016
    const-string/jumbo v0, "intent_key_menu_seed"

    iget-wide v2, p0, Lbjv$20;->b:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1017
    const-string/jumbo v0, "intent_key_start_date"

    iget-wide v2, p0, Lbjv$20;->c:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1018
    const-string/jumbo v0, "intent_key_deadline_date"

    iget-wide v2, p0, Lbjv$20;->d:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1019
    const-string/jumbo v0, "intent_key_source"

    iget-object v1, p0, Lbjv$20;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1020
    return-object p1
.end method
