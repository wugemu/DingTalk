.class final Lfzu$47$1;
.super Ljava/lang/Object;
.source "SpaceNavigator.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfzu$47;->a(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfzu$47;


# direct methods
.method constructor <init>(Lfzu$47;)V
    .locals 0
    .param p1, "this$0"    # Lfzu$47;

    .prologue
    .line 3437
    iput-object p1, p0, Lfzu$47$1;->a:Lfzu$47;

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
    .line 3440
    const-string/jumbo v0, "intent_key_args"

    iget-object v1, p0, Lfzu$47$1;->a:Lfzu$47;

    iget-object v1, v1, Lfzu$47;->b:Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3441
    return-object p1
.end method
