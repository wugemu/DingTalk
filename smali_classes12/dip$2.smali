.class final Ldip$2;
.super Ljava/lang/Object;
.source "RobotNavigator.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldip;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;Lcom/alibaba/wukong/im/Conversation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

.field final synthetic b:Lcom/alibaba/wukong/im/Conversation;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Ldip$2;->a:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    iput-object p2, p0, Ldip$2;->b:Lcom/alibaba/wukong/im/Conversation;

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
    .line 88
    const-string/jumbo v0, "intent_key_robot_object"

    iget-object v1, p0, Ldip$2;->a:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 89
    iget-object v0, p0, Ldip$2;->b:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    .line 90
    const-string/jumbo v0, "conversation"

    iget-object v1, p0, Ldip$2;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 92
    :cond_0
    return-object p1
.end method
