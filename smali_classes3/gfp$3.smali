.class final Lgfp$3;
.super Ljava/lang/Object;
.source "PermissionSettingPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgfp;->a(Ljava/lang/String;)V
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
        "Lcom/alibaba/dingtalk/cspace/model/CSpaceLinkShareAclResultObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lgfp;


# direct methods
.method constructor <init>(Lgfp;)V
    .locals 0
    .param p1, "this$0"    # Lgfp;

    .prologue
    .line 658
    iput-object p1, p0, Lgfp$3;->a:Lgfp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 658
    check-cast p1, Lcom/alibaba/dingtalk/cspace/model/CSpaceLinkShareAclResultObject;

    .line 1662
    iget-object v0, p0, Lgfp$3;->a:Lgfp;

    invoke-virtual {v0, p1}, Lgfp;->a(Lcom/alibaba/dingtalk/cspace/model/CSpaceLinkShareAclResultObject;)V

    .line 658
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 674
    iget-object v0, p0, Lgfp$3;->a:Lgfp;

    iget-object v1, p0, Lgfp$3;->a:Lgfp;

    .line 1062
    iget-object v1, v1, Lgfp;->k:Lcom/alibaba/dingtalk/cspace/model/CSpaceLinkShareAclResultObject;

    .line 674
    invoke-virtual {v0, v1}, Lgfp;->a(Lcom/alibaba/dingtalk/cspace/model/CSpaceLinkShareAclResultObject;)V

    .line 676
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "PermissionSettingPresenter"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "PermissionSettingPresenter"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, " setLinkShareAcl"

    aput-object v4, v2, v3

    .line 679
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, p1, p2, v3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 678
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 668
    return-void
.end method
