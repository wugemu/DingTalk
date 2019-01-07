.class final Lbjv$13;
.super Ljava/lang/Object;
.source "DingNavUtil.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbjv;->a(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/DingCreateInfo;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:I


# direct methods
.method constructor <init>(Landroid/os/Bundle;I)V
    .locals 0

    .prologue
    .line 802
    iput-object p1, p0, Lbjv$13;->a:Landroid/os/Bundle;

    iput p2, p0, Lbjv$13;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 805
    iget-object v0, p0, Lbjv$13;->a:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 806
    iget v0, p0, Lbjv$13;->b:I

    if-lez v0, :cond_0

    .line 807
    iget v0, p0, Lbjv$13;->b:I

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 809
    :cond_0
    return-object p1
.end method
