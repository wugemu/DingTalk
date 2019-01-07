.class final Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$17;
.super Ljava/lang/Object;
.source "CMailMainFragment.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;
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
        "Lcom/alibaba/alimei/sdk/model/FolderModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    .prologue
    .line 391
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$17;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 3
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 401
    const-string/jumbo v0, "AbsCMailFragment"

    const-string/jumbo v1, " returnToInbox: "

    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 391
    check-cast p1, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 1394
    if-eqz p1, :cond_0

    .line 1395
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$17;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->a(Lcom/alibaba/alimei/framework/model/AbsBaseModel;)V

    .line 391
    :cond_0
    return-void
.end method
