.class final Ldwn$4;
.super Ljava/lang/Object;
.source "WorkItemBoxViewHolder.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldwn;
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
        "Lcom/alibaba/android/dingtalkim/models/ActionResultObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/models/WorkItemObject;

.field final synthetic b:Ldwn;


# direct methods
.method constructor <init>(Ldwn;Lcom/alibaba/android/dingtalkim/models/WorkItemObject;)V
    .locals 0
    .param p1, "this$0"    # Ldwn;

    .prologue
    .line 229
    iput-object p1, p0, Ldwn$4;->b:Ldwn;

    iput-object p2, p0, Ldwn$4;->a:Lcom/alibaba/android/dingtalkim/models/WorkItemObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 229
    check-cast p1, Lcom/alibaba/android/dingtalkim/models/ActionResultObject;

    .line 1232
    if-nez p1, :cond_1

    .line 1233
    const-string/jumbo v0, "IM"

    const-string/jumbo v1, "WorkItemBoxViewHolder"

    const-string/jumbo v2, "doActionImpl2#onDataReceived actionResultObject is null"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1240
    :cond_0
    :goto_0
    return-void

    .line 1237
    :cond_1
    iget-boolean v0, p1, Lcom/alibaba/android/dingtalkim/models/ActionResultObject;->success:Z

    .line 1238
    if-nez v0, :cond_3

    .line 1239
    iget-object v1, p0, Ldwn$4;->b:Ldwn;

    .line 2269
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/models/ActionResultObject;->failureActionModels:Ljava/util/List;

    .line 2270
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2272
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/ActionObject;

    .line 2273
    if-nez v0, :cond_2

    .line 2274
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "OneBox"

    const-string/jumbo v2, "firstAction = null || secondAction = null"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2277
    :cond_2
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;

    iget-object v3, v1, Ldwn;->d:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p1, Lcom/alibaba/android/dingtalkim/models/ActionResultObject;->message:Ljava/lang/String;

    .line 2278
    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lctk$i;->cancel:I

    new-instance v4, Ldwn$6;

    invoke-direct {v4, v1}, Ldwn$6;-><init>(Ldwn;)V

    .line 2279
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/models/ActionObject;->text:Ljava/lang/String;

    new-instance v4, Ldwn$5;

    invoke-direct {v4, v1, v0}, Ldwn$5;-><init>(Ldwn;Lcom/alibaba/android/dingtalkim/models/ActionObject;)V

    .line 2285
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2290
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 1243
    :cond_3
    iget-object v0, p0, Ldwn$4;->b:Ldwn;

    iget-object v1, p0, Ldwn$4;->a:Lcom/alibaba/android/dingtalkim/models/WorkItemObject;

    iget-object v2, p1, Lcom/alibaba/android/dingtalkim/models/ActionResultObject;->successActionModels:Ljava/util/List;

    invoke-static {v0, v1, v2}, Ldwn;->a(Ldwn;Lcom/alibaba/android/dingtalkim/models/WorkItemObject;Ljava/util/List;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 253
    const-string/jumbo v0, "im"

    invoke-static {v0, p1, p2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Ldwn$4;->b:Ldwn;

    .line 1061
    iget-object v0, v0, Ldwn;->d:Landroid/app/Activity;

    .line 254
    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    :goto_0
    return-void

    .line 257
    :cond_0
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 249
    return-void
.end method
