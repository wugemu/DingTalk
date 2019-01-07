.class final Lfzu$49$1;
.super Ljava/lang/Object;
.source "SpaceNavigator.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfzu$49;->a(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfzu$49;


# direct methods
.method constructor <init>(Lfzu$49;)V
    .locals 0
    .param p1, "this$0"    # Lfzu$49;

    .prologue
    .line 3537
    iput-object p1, p0, Lfzu$49$1;->a:Lfzu$49;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 3540
    const-string/jumbo v0, "intent_key_args"

    iget-object v1, p0, Lfzu$49$1;->a:Lfzu$49;

    iget-object v1, v1, Lfzu$49;->b:Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3541
    return-object p1
.end method
