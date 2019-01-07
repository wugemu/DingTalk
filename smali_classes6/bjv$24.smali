.class final Lbjv$24;
.super Ljava/lang/Object;
.source "DingNavUtil.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbjv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lbjv$24;->a:Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 279
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 280
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "intent_key_ding_select_user_params"

    iget-object v2, p0, Lbjv$24;->a:Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 281
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 282
    return-object p1
.end method
