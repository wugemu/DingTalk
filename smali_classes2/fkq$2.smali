.class final Lfkq$2;
.super Ljava/lang/Object;
.source "OrgApplyFormModel.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfkq;->a(JLcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;Lcma;)V
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
        "Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lfkq;


# direct methods
.method constructor <init>(Lfkq;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfkq;

    .prologue
    .line 64
    iput-object p1, p0, Lfkq$2;->b:Lfkq;

    iput-object p2, p0, Lfkq$2;->a:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 64
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;

    .line 1068
    const-string/jumbo v0, "OrgApplyFormModel"

    const-string/jumbo v1, "updateForm: Data update success."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1070
    iget-object v0, p0, Lfkq$2;->b:Lfkq;

    invoke-static {v0, p1}, Lfkq;->a(Lfkq;Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;)Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;

    .line 1071
    iget-object v0, p0, Lfkq$2;->a:Lcma;

    iget-object v1, p0, Lfkq$2;->b:Lfkq;

    invoke-static {v1}, Lfkq;->a(Lfkq;)Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;

    move-result-object v1

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 64
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "error"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 81
    const-string/jumbo v0, "OrgApplyFormModel"

    const-string/jumbo v1, "updateForm: Data update failed."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lfkq$2;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 77
    return-void
.end method
