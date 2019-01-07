.class final Lcom/alibaba/lightapp/runtime/SecurityGuard$1;
.super Ljava/lang/Object;
.source "SecurityGuard.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/SecurityGuard;->a(Landroid/content/Context;Lcma;)V
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
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcma;

.field final synthetic c:Lcom/alibaba/lightapp/runtime/SecurityGuard;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/SecurityGuard;Landroid/content/Context;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/SecurityGuard;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/SecurityGuard$1;->c:Lcom/alibaba/lightapp/runtime/SecurityGuard;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/SecurityGuard$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/SecurityGuard$1;->b:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 56
    check-cast p1, Ljava/lang/String;

    .line 1059
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 1060
    const-string/jumbo v2, "checkSimulator onDataReceived "

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1061
    const-string/jumbo v2, "lightapp"

    const-string/jumbo v3, "SecurityGuard"

    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1064
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/SecurityGuard$1;->c:Lcom/alibaba/lightapp/runtime/SecurityGuard;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/SecurityGuard$1;->c:Lcom/alibaba/lightapp/runtime/SecurityGuard;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/SecurityGuard$1;->a:Landroid/content/Context;

    .line 2100
    new-instance v4, Landroid/content/ContextWrapper;

    invoke-direct {v4, v1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-static {v4}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v1

    .line 2101
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getStaticDataEncryptComp()Lcom/taobao/wireless/security/sdk/staticdataencrypt/IStaticDataEncryptComponent;

    move-result-object v1

    .line 2102
    :goto_0
    if-eqz v1, :cond_3

    .line 2103
    const/16 v4, 0x10

    const-string/jumbo v5, "000111"

    invoke-interface {v1, v4, v5, p1}, Lcom/taobao/wireless/security/sdk/staticdataencrypt/IStaticDataEncryptComponent;->staticSafeDecrypt(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2107
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2108
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x31

    if-eq v1, v3, :cond_2

    .line 3022
    :goto_1
    iput-boolean v0, v2, Lcom/alibaba/lightapp/runtime/SecurityGuard;->b:Z

    .line 1065
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/SecurityGuard$1;->c:Lcom/alibaba/lightapp/runtime/SecurityGuard;

    .line 4022
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alibaba/lightapp/runtime/SecurityGuard;->a:Z

    .line 1066
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/SecurityGuard$1;->b:Lcma;

    if-eqz v0, :cond_0

    .line 1067
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/SecurityGuard$1;->b:Lcma;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/SecurityGuard$1;->c:Lcom/alibaba/lightapp/runtime/SecurityGuard;

    .line 5022
    iget-boolean v1, v1, Lcom/alibaba/lightapp/runtime/SecurityGuard;->b:Z

    .line 1067
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 1074
    :cond_0
    :goto_2
    return-void

    .line 2101
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 2108
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 2112
    :cond_3
    new-instance v0, Lcom/alibaba/lightapp/runtime/SecurityGuard$WUAException;

    invoke-direct {v0, v3}, Lcom/alibaba/lightapp/runtime/SecurityGuard$WUAException;-><init>(Lcom/alibaba/lightapp/runtime/SecurityGuard;)V

    throw v0
    :try_end_0
    .catch Lcom/alibaba/lightapp/runtime/SecurityGuard$WUAException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1069
    :catch_0
    move-exception v0

    .line 1070
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/SecurityGuard$1;->b:Lcma;

    if-eqz v1, :cond_4

    .line 1071
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/SecurityGuard$1;->b:Lcma;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "local data transfer error!"

    invoke-interface {v1, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    :cond_4
    const-string/jumbo v1, "lightapp"

    const-string/jumbo v2, "SecurityGuard"

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 88
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 89
    .local v0, "stringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v1, "checkSimulator onException code "

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v2, " reason "

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 90
    const-string/jumbo v1, "lightapp"

    const-string/jumbo v2, "SecurityGuard"

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/SecurityGuard$1;->b:Lcma;

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/SecurityGuard$1;->b:Lcma;

    invoke-interface {v1, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/SecurityGuard$1;->b:Lcma;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/SecurityGuard$1;->b:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onProgress(Ljava/lang/Object;I)V

    .line 84
    :cond_0
    return-void
.end method
