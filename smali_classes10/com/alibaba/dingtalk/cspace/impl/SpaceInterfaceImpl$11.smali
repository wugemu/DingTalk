.class final Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$11;
.super Ljava/lang/Object;
.source "SpaceInterfaceImpl.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;->a(Landroid/app/Activity;JLcma;)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDelayProgressDialog;

.field final synthetic c:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;Lcma;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDelayProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;

    .prologue
    .line 2358
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$11;->c:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$11;->a:Lcma;

    iput-object p3, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$11;->b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDelayProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 2358
    check-cast p1, Ljava/lang/Void;

    .line 3361
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$11;->a:Lcma;

    if-eqz v0, :cond_0

    .line 3362
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$11;->a:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 3365
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$11;->b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDelayProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDelayProgressDialog;->dismiss()V

    .line 2358
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 2375
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$11;->a:Lcma;

    if-eqz v0, :cond_0

    .line 2376
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$11;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2379
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$11;->b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDelayProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDelayProgressDialog;->dismiss()V

    .line 2380
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 2371
    return-void
.end method
