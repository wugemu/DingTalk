.class final Lcom/alibaba/android/user/impl/ContactInterfaceImpl$13;
.super Ljava/lang/Object;
.source "ContactInterfaceImpl.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->a(Landroid/app/Activity;Ljava/lang/String;IIIZLandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:I

.field final synthetic g:Lcom/alibaba/android/user/impl/ContactInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Landroid/os/Bundle;Ljava/lang/String;ZIII)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/impl/ContactInterfaceImpl;

    .prologue
    .line 488
    iput-object p1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$13;->g:Lcom/alibaba/android/user/impl/ContactInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$13;->a:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$13;->b:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$13;->c:Z

    iput p5, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$13;->d:I

    iput p6, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$13;->e:I

    iput p7, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$13;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 491
    iget-object v0, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$13;->a:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 492
    const-string/jumbo v0, "conversation_id"

    iget-object v1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$13;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 493
    const-string/jumbo v0, "filter_myself"

    iget-boolean v1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$13;->c:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 494
    const-string/jumbo v0, "choose_mode"

    iget v1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$13;->d:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 495
    const-string/jumbo v0, "count_limit"

    iget v1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$13;->e:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 496
    const-string/jumbo v0, "count_limit_tips"

    iget v1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$13;->f:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 498
    return-object p1
.end method
