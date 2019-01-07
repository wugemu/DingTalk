.class final Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$1$1;
.super Ljava/lang/Object;
.source "CreateOrgStep4Fragment.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
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
        "Ljava/util/Map",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$1;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$1;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$1$1;->c:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$1;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$1$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$1$1;->b:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 97
    check-cast p1, Ljava/util/Map;

    .line 1100
    if-eqz p1, :cond_0

    .line 1101
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$1$1;->c:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$1;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$1$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$1$1;->b:Landroid/content/Intent;

    invoke-static {v0, v1, v2, p1}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$1;->a(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$1;Landroid/content/Context;Landroid/content/Intent;Ljava/util/Map;)V

    :goto_0
    return-void

    .line 1103
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$1$1;->c:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$1;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$1$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$1$1;->b:Landroid/content/Intent;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$1;->a(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$1;Landroid/content/Context;Landroid/content/Intent;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 114
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$1$1;->c:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$1;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$1$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$1$1;->b:Landroid/content/Intent;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$1;->a(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$1;Landroid/content/Context;Landroid/content/Intent;Ljava/util/Map;)V

    .line 115
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 110
    return-void
.end method
