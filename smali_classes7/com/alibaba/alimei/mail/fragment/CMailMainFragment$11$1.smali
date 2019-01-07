.class final Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$11$1;
.super Ljava/lang/Object;
.source "CMailMainFragment.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$11;->onClick(Landroid/view/View;)V
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
.field final synthetic a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$11;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$11;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$11;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$11$1;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 1
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 299
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$11$1;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$11;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$11;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    :goto_0
    return-void

    .line 302
    :cond_0
    sget v0, Laxo$i;->dd_cmail_token_fail:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 287
    .line 1290
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$11$1;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$11;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$11;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->F()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1294
    sget v0, Laxo$i;->dd_cmail_token_success:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 287
    :cond_0
    return-void
.end method
