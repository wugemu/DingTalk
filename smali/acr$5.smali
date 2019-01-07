.class final Lacr$5;
.super Ljava/lang/Object;
.source "MultiMailManager.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Labg;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lacr;


# direct methods
.method constructor <init>(Lacr;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lacr;

    .prologue
    .line 862
    iput-object p1, p0, Lacr$5;->b:Lacr;

    iput-object p2, p0, Lacr$5;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 862
    check-cast p1, Labg;

    .line 1865
    if-eqz p1, :cond_0

    iget-object v0, p1, Labg;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p1, Labg;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1866
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    const/4 v0, 0x1

    invoke-static {v0}, Lacn;->c(Z)V

    .line 1868
    :cond_0
    const-string/jumbo v0, "tryUnbindOrgEmail.unbindV6"

    const-string/jumbo v1, "onDataReceived"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2246
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v0

    .line 1869
    iget-object v1, p0, Lacr$5;->a:Ljava/lang/String;

    new-instance v2, Lacr$5$1;

    invoke-direct {v2, p0}, Lacr$5$1;-><init>(Lacr$5;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/alimei/framework/account/AccountApi;->removeAccount(Ljava/lang/String;Lxv;)V

    .line 862
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 892
    const-string/jumbo v0, "tryUnbindOrgEmail.unbindV6"

    invoke-static {v0, p1, p2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 888
    return-void
.end method
