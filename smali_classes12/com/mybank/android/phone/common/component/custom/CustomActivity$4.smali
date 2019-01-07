.class final Lcom/mybank/android/phone/common/component/custom/CustomActivity$4;
.super Ljava/lang/Object;
.source "CustomActivity.java"

# interfaces
.implements Llhg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mybank/android/phone/common/component/custom/CustomActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Llhg",
        "<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mybank/android/phone/common/component/custom/CustomActivity;


# direct methods
.method constructor <init>(Lcom/mybank/android/phone/common/component/custom/CustomActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mybank/android/phone/common/component/custom/CustomActivity;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/mybank/android/phone/common/component/custom/CustomActivity$4;->a:Lcom/mybank/android/phone/common/component/custom/CustomActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 206
    check-cast p1, Ljava/lang/Throwable;

    .line 1209
    instance-of v0, p1, Lcom/mybank/android/phone/common/component/custom/RpcBizException;

    if-eqz v0, :cond_0

    .line 1210
    iget-object v1, p0, Lcom/mybank/android/phone/common/component/custom/CustomActivity$4;->a:Lcom/mybank/android/phone/common/component/custom/CustomActivity;

    check-cast p1, Lcom/mybank/android/phone/common/component/custom/RpcBizException;

    invoke-virtual {p1}, Lcom/mybank/android/phone/common/component/custom/RpcBizException;->getResult()Lcom/mybank/mrpc/result/CommonResult;

    move-result-object v0

    iget-object v2, p0, Lcom/mybank/android/phone/common/component/custom/CustomActivity$4;->a:Lcom/mybank/android/phone/common/component/custom/CustomActivity;

    .line 2097
    if-nez v0, :cond_1

    .line 2098
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Ljfw$d;->common_text_request_result_null_error:I

    .line 2099
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2098
    invoke-interface {v2, v0}, Ljff;->b(Ljava/lang/String;)V

    .line 2115
    :cond_0
    :goto_0
    return-void

    .line 2103
    :cond_1
    instance-of v1, v0, Lcom/mybank/mrpc/result/CommonResult;

    if-eqz v1, :cond_0

    .line 2104
    check-cast v0, Lcom/mybank/mrpc/result/CommonResult;

    .line 2105
    iget-boolean v1, v0, Lcom/mybank/mrpc/result/CommonResult;->success:Z

    if-nez v1, :cond_0

    .line 2107
    iget-object v1, v0, Lcom/mybank/mrpc/result/CommonResult;->resultView:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2111
    iget v1, v0, Lcom/mybank/mrpc/result/CommonResult;->showType:I

    if-eqz v1, :cond_3

    .line 2114
    iget v1, v0, Lcom/mybank/mrpc/result/CommonResult;->showType:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 2115
    iget-object v0, v0, Lcom/mybank/mrpc/result/CommonResult;->resultView:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljff;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 2117
    :cond_2
    iget v1, v0, Lcom/mybank/mrpc/result/CommonResult;->showType:I

    const/16 v3, 0x9

    if-eq v1, v3, :cond_0

    .line 2120
    iget v1, v0, Lcom/mybank/mrpc/result/CommonResult;->showType:I

    const/4 v3, 0x4

    if-eq v1, v3, :cond_0

    .line 2123
    :cond_3
    iget-object v0, v0, Lcom/mybank/mrpc/result/CommonResult;->resultView:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljff;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
