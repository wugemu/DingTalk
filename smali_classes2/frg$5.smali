.class final Lfrg$5;
.super Ljava/lang/Object;
.source "AlipayLoginView.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfrg;
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
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfrg;


# direct methods
.method constructor <init>(Lfrg;)V
    .locals 0
    .param p1, "this$0"    # Lfrg;

    .prologue
    .line 279
    iput-object p1, p0, Lfrg$5;->a:Lfrg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 279
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .line 1282
    iget-object v0, p0, Lfrg$5;->a:Lfrg;

    invoke-virtual {v0}, Lfrg;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1283
    iget-object v0, p0, Lfrg$5;->a:Lfrg;

    .line 2066
    iget-object v0, v0, Lfrg;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 1283
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 1284
    if-eqz p1, :cond_0

    .line 1285
    iget-object v0, p0, Lfrg$5;->a:Lfrg;

    invoke-static {v0, p1}, Lfrg;->a(Lfrg;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    .line 279
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 296
    const-string/jumbo v0, "AlipayLoginView"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, p1, v1}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    iget-object v0, p0, Lfrg$5;->a:Lfrg;

    invoke-virtual {v0}, Lfrg;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 302
    :goto_0
    return-void

    .line 300
    :cond_0
    iget-object v0, p0, Lfrg$5;->a:Lfrg;

    .line 1066
    iget-object v0, v0, Lfrg;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 300
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 301
    invoke-static {p2}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 292
    return-void
.end method
