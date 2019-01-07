.class final Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$14;
.super Ljava/lang/Object;
.source "SpaceInterfaceImpl.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcma;)V
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
        "Lcom/alibaba/alimei/cspace/model/DentryModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;

    .prologue
    .line 2531
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$14;->b:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$14;->a:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2531
    check-cast p1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 3534
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$14;->a:Lcma;

    invoke-static {p1}, Lgoc;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 2531
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 2544
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$14;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2545
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 2539
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$14;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onProgress(Ljava/lang/Object;I)V

    .line 2540
    return-void
.end method
