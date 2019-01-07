.class public final Ldip$1;
.super Ljava/lang/Object;
.source "RobotNavigator.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;

.field final synthetic b:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Ldip$1;->a:Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;

    iput-object p2, p0, Ldip$1;->b:Landroid/os/Bundle;

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
    const-string/jumbo v0, "intent_key_robot_template_object"

    iget-object v1, p0, Ldip$1;->a:Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 69
    iget-object v0, p0, Ldip$1;->b:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Ldip$1;->b:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 72
    :cond_0
    return-object p1
.end method
