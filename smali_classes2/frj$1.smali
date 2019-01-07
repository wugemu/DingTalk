.class final Lfrj$1;
.super Ljava/lang/Object;
.source "FaceLoginPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfrj;->a(Ljava/lang/String;ILcma;)V
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
        "Lcom/alibaba/android/dingtalk/userbase/model/FaceIdInitObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcma;

.field final synthetic c:Lfrj;


# direct methods
.method constructor <init>(Lfrj;ILcma;)V
    .locals 0
    .param p1, "this$0"    # Lfrj;

    .prologue
    .line 77
    iput-object p1, p0, Lfrj$1;->c:Lfrj;

    iput p2, p0, Lfrj$1;->a:I

    iput-object p3, p0, Lfrj$1;->b:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 77
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/FaceIdInitObject;

    .line 1080
    const-string/jumbo v0, "FaceLoginPresenter"

    invoke-static {p1}, Lcoo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1081
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/FaceIdInitObject;->status:I

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/FaceIdInitObject;->zimId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1082
    iget-object v0, p0, Lfrj$1;->c:Lfrj;

    iget v1, p0, Lfrj$1;->a:I

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/FaceIdInitObject;->zimId:Ljava/lang/String;

    iget-object v3, p0, Lfrj$1;->b:Lcma;

    .line 2047
    invoke-virtual {v0, v1, v2, v3}, Lfrj;->b(ILjava/lang/String;Lcma;)V

    .line 1091
    :goto_0
    return-void

    .line 1084
    :cond_0
    if-eqz p1, :cond_3

    const/4 v0, 0x3

    iget v1, p0, Lfrj$1;->a:I

    if-ne v0, v1, :cond_3

    .line 1085
    const/16 v0, 0x1f

    iget v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/FaceIdInitObject;->status:I

    if-ne v0, v1, :cond_1

    .line 1086
    iget-object v0, p0, Lfrj$1;->b:Lcma;

    iget v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/FaceIdInitObject;->status:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1087
    :cond_1
    const/16 v0, 0x20

    iget v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/FaceIdInitObject;->status:I

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/FaceIdInitObject;->zimId:Ljava/lang/String;

    .line 1088
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1089
    iget-object v0, p0, Lfrj$1;->b:Lcma;

    iget v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/FaceIdInitObject;->status:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/FaceIdInitObject;->zimId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1091
    :cond_2
    iget-object v0, p0, Lfrj$1;->b:Lcma;

    const-string/jumbo v1, "1101"

    invoke-interface {v0, v1, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1094
    :cond_3
    iget-object v0, p0, Lfrj$1;->b:Lcma;

    const-string/jumbo v1, "1101"

    invoke-interface {v0, v1, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 106
    const-string/jumbo v0, "FaceLoginPresenter"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "code:"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", reason:"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    iget-object v0, p0, Lfrj$1;->b:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 102
    return-void
.end method
