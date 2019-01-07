.class final Lfzu$45;
.super Ljava/lang/Object;
.source "SpaceNavigator.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfzu;->a(Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;)V
    .locals 0

    .prologue
    .line 3343
    iput-object p1, p0, Lfzu$45;->a:Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;

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
    .line 3346
    const-string/jumbo v0, "intent_key_args"

    iget-object v1, p0, Lfzu$45;->a:Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3347
    return-object p1
.end method
