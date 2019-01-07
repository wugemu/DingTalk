.class final Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$14$1;
.super Ljava/lang/Object;
.source "CMailMainFragment.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$14;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxv",
        "<",
        "Lxv$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$14;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$14;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$14;

    .prologue
    .line 1829
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$14$1;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 1
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 1851
    const-string/jumbo v0, "trustAServerCerficate"

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 1852
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1829
    .line 2832
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$14$1;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$14;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$14;->b:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->F()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2837
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$14$1;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$14;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$14;->b:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$14$1$1;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$14$1$1;-><init>(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$14$1;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1829
    :cond_0
    return-void
.end method
