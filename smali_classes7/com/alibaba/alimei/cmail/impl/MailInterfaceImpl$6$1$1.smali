.class final Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$1$1;
.super Ljava/lang/Object;
.source "MailInterfaceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$1;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$1;

    .prologue
    .line 1771
    iput-object p1, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$1$1;->a:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1775
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1776
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "conversation_id"

    iget-object v2, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$1$1;->a:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$1;

    iget-object v2, v2, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1777
    const-string/jumbo v1, "im_navigator_from"

    const-string/jumbo v2, "cmail"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1778
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$1$1;->a:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$1;

    iget-object v2, v2, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$1;->b:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6;

    iget-object v2, v2, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6;->b:Landroid/app/Activity;

    iget-object v3, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$1$1;->a:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$1;

    iget-object v3, v3, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$1;->a:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Z)V

    .line 1779
    return-void
.end method
