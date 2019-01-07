.class final Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment$2;
.super Ljava/lang/Object;
.source "AbsCMailFragment.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;
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
.field final synthetic a:Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;

    .prologue
    .line 579
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 1
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 590
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 594
    :goto_0
    return-void

    .line 593
    :cond_0
    sget v0, Laxo$i;->dd_cmail_token_fail:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 579
    .line 1582
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->F()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1585
    sget v0, Laxo$i;->dd_cmail_token_success:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 579
    :cond_0
    return-void
.end method
