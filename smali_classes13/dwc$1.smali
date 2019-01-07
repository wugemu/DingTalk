.class final Ldwc$1;
.super Ljava/lang/Object;
.source "FeedsFloatWindowViewHolder.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldwc;
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
.field final synthetic a:Ldwc;


# direct methods
.method constructor <init>(Ldwc;)V
    .locals 0
    .param p1, "this$0"    # Ldwc;

    .prologue
    .line 61
    iput-object p1, p0, Ldwc$1;->a:Ldwc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 61
    check-cast p1, Ljava/lang/String;

    .line 1064
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1065
    iget-object v0, p0, Ldwc$1;->a:Ldwc;

    .line 2023
    invoke-virtual {v0}, Ldwc;->d()V

    .line 3101
    :cond_0
    :goto_0
    return-void

    .line 1068
    :cond_1
    iget-object v1, p0, Ldwc$1;->a:Ldwc;

    .line 3093
    :try_start_0
    iget-object v0, v1, Ldwc;->b:Lhdf;

    if-eqz v0, :cond_0

    .line 3094
    iget-object v0, v1, Ldwc;->b:Lhdf;

    invoke-interface {v0, p1}, Lhdf;->loadUrl(Ljava/lang/String;)V

    .line 3095
    iget-object v0, v1, Ldwc;->b:Lhdf;

    invoke-interface {v0}, Lhdf;->handleResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3097
    :catch_0
    move-exception v0

    .line 3098
    const-string/jumbo v2, "im"

    const/4 v3, 0x0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "load float url err "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    .line 3099
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    .line 3098
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3100
    invoke-virtual {v1}, Ldwc;->d()V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 77
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "load float url err "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Ldwc$1;->a:Ldwc;

    .line 1023
    invoke-virtual {v0}, Ldwc;->d()V

    .line 80
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 73
    return-void
.end method
