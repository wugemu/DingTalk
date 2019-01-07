.class final Lbjv$16;
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
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

.field final synthetic c:I


# direct methods
.method constructor <init>(Landroid/os/Bundle;Lcom/alibaba/android/ding/base/objects/DingCreateInfo;I)V
    .locals 0

    .prologue
    .line 917
    iput-object p1, p0, Lbjv$16;->a:Landroid/os/Bundle;

    iput-object p2, p0, Lbjv$16;->b:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    iput p3, p0, Lbjv$16;->c:I

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
    .line 921
    iget-object v1, p0, Lbjv$16;->a:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 922
    iget-object v0, p0, Lbjv$16;->a:Landroid/os/Bundle;

    .line 926
    .local v0, "finalBundle":Landroid/os/Bundle;
    :goto_0
    const-string/jumbo v1, "intent_key_create_ding_info"

    iget-object v2, p0, Lbjv$16;->b:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 927
    iget v1, p0, Lbjv$16;->c:I

    if-lez v1, :cond_0

    .line 928
    iget v1, p0, Lbjv$16;->c:I

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 930
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 931
    return-object p1

    .line 924
    .end local v0    # "finalBundle":Landroid/os/Bundle;
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .restart local v0    # "finalBundle":Landroid/os/Bundle;
    goto :goto_0
.end method
