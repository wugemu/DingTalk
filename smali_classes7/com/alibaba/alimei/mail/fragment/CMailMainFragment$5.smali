.class final Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$5;
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

.field final synthetic b:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;Lcom/alibaba/alimei/framework/model/AbsBaseModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    .prologue
    .line 926
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$5;->b:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$5;->a:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 4
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 945
    if-eqz p1, :cond_0

    .line 946
    const-string/jumbo v0, "AbsCMailFragment"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "queryFolderStateCount exception"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    :cond_0
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 926
    check-cast p1, Ljava/lang/Integer;

    .line 1929
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$5;->b:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->F()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1933
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$5;->a:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$5;->b:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->n(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1937
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 1938
    :goto_0
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$5;->b:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->g(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Ladq;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1939
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$5;->b:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->g(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Ladq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$5;->a:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    invoke-interface {v1, v2, v0}, Ladq;->a(Lcom/alibaba/alimei/framework/model/AbsBaseModel;I)V

    .line 926
    :cond_0
    return-void

    .line 1937
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method
