.class final Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$5;
.super Ljava/lang/Object;
.source "LabelGroupEditActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;
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
.field final synthetic a:Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$5;->a:Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 192
    .line 1196
    invoke-static {}, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "deleteLabelGroup ok"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1198
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$5;->a:Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1202
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$5;->a:Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->dismissLoadingDialog()V

    .line 1204
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$5;->a:Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->e(Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;)V

    .line 192
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 214
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$5;->a:Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->dismissLoadingDialog()V

    .line 215
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-static {}, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "deleteLabelGroup err %s,%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 210
    return-void
.end method
