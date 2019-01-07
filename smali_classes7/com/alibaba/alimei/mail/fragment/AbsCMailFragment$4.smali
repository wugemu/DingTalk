.class final Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment$4;
.super Ljava/lang/Object;
.source "AbsCMailFragment.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->a(Ljava/util/List;Ljava/lang/String;ZZ)V
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;

    .prologue
    .line 693
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment$4;->c:Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment$4;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment$4;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 1
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 712
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment$4;->c:Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 716
    :goto_0
    return-void

    .line 715
    :cond_0
    sget v0, Laxo$i;->dd_cmail_token_fail:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 693
    .line 1696
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment$4;->c:Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->F()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1699
    const-string/jumbo v0, "6"

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment$4;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1700
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment$4;->b:Z

    if-eqz v0, :cond_1

    .line 1701
    sget v0, Laxo$i;->dt_mail_follow_success:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1703
    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Laxo$i;->dt_mail_unfollow_success:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0

    .line 1706
    :cond_2
    sget v0, Laxo$i;->dd_cmail_token_success:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0
.end method
