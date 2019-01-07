.class final Lfrg$3;
.super Ljava/lang/Object;
.source "AlipayLoginView.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfrg;->b(Ljava/lang/String;Ljava/lang/String;)V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lfrg;


# direct methods
.method constructor <init>(Lfrg;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lfrg;

    .prologue
    .line 170
    iput-object p1, p0, Lfrg$3;->c:Lfrg;

    iput-object p2, p0, Lfrg$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lfrg$3;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 170
    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    .line 1173
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1174
    const-string/jumbo v0, "AlipayLoginView"

    const-string/jumbo v1, "token is empty"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1177
    :cond_0
    iget-object v0, p0, Lfrg$3;->c:Lfrg;

    invoke-virtual {v0}, Lfrg;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1178
    iget-object v0, p0, Lfrg$3;->c:Lfrg;

    .line 2066
    iget-object v0, v0, Lfrg;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 1178
    sget v1, Lezg$l;->login_verify_sms_need_verify:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1179
    iget-object v0, p0, Lfrg$3;->c:Lfrg;

    .line 3066
    iget-object v0, v0, Lfrg;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 1179
    iget-object v4, p0, Lfrg$3;->a:Ljava/lang/String;

    iget-object v5, p0, Lfrg$3;->b:Ljava/lang/String;

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lflz;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :cond_1
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
    .line 189
    const-string/jumbo v0, "AlipayLoginView"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, p1, v1}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    iget-object v0, p0, Lfrg$3;->c:Lfrg;

    invoke-virtual {v0}, Lfrg;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    :goto_0
    return-void

    .line 193
    :cond_0
    invoke-static {p2}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 185
    return-void
.end method
