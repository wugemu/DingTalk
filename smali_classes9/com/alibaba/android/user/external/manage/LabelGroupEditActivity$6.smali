.class final Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$6;
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
        "Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;",
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
    .line 267
    iput-object p1, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$6;->a:Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 267
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;

    .line 1271
    invoke-static {}, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "saveOrUpdateLabelGroup ok"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1273
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$6;->a:Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1277
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$6;->a:Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->dismissLoadingDialog()V

    .line 1279
    if-eqz p1, :cond_0

    iget-wide v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;->id:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 1280
    :cond_0
    invoke-static {}, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "saveOrUpdateLabelGroup\'s returned object or group id is null"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1281
    :cond_1
    :goto_0
    return-void

    .line 1284
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$6;->a:Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->a(Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;)Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;

    .line 1286
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$6;->a:Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->f(Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 296
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$6;->a:Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->dismissLoadingDialog()V

    .line 297
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-static {}, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "saveOrUpdateLabelGroup err %s,%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 292
    return-void
.end method
