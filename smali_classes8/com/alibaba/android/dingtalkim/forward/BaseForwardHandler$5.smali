.class final Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler$5;
.super Ljava/lang/Object;
.source "BaseForwardHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;->onFail(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;

    .prologue
    .line 391
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler$5;->c:Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;

    iput p2, p0, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler$5;->a:I

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler$5;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 394
    iget v0, p0, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler$5;->a:I

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_0

    .line 395
    sget v0, Lctk$i;->dt_im_trans_to_multiple_error_param_invalid:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 401
    :goto_0
    return-void

    .line 396
    :cond_0
    iget v0, p0, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler$5;->a:I

    const/16 v1, 0x3eb

    if-ne v0, v1, :cond_1

    .line 397
    sget v0, Lctk$i;->dt_im_trans_to_multiple_error_target_invalid:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0

    .line 399
    :cond_1
    iget v0, p0, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler$5;->a:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler$5;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
