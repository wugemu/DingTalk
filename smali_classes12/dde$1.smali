.class final Ldde$1;
.super Ljava/lang/Object;
.source "CategoryUtil.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldde;->a(Landroid/app/Activity;FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:F


# direct methods
.method constructor <init>(ZF)V
    .locals 0

    .prologue
    .line 65
    iput-boolean p1, p0, Ldde$1;->a:Z

    iput p2, p0, Ldde$1;->b:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 68
    const-string/jumbo v0, "intent_key_category_edit"

    iget-boolean v1, p0, Ldde$1;->a:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 69
    const-string/jumbo v0, "intent_key_default_smart_hour"

    iget v1, p0, Ldde$1;->b:F

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 70
    return-object p1
.end method
