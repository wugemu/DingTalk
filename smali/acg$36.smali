.class final Lacg$36;
.super Ljava/lang/Object;
.source "MailNavigator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lacg;->f(Landroid/content/Context;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcma;

.field final synthetic c:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcma;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 2915
    iput-object p1, p0, Lacg$36;->a:Ljava/lang/String;

    iput-object p2, p0, Lacg$36;->b:Lcma;

    iput-object p3, p0, Lacg$36;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 2918
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v2

    .line 2919
    .local v2, "manager":Lacr;
    invoke-virtual {v2}, Lacr;->g()Z

    move-result v0

    .line 2920
    .local v0, "agentMailValid":Z
    invoke-virtual {v2}, Lacr;->f()Z

    move-result v1

    .line 2922
    .local v1, "dingtalkMailValid":Z
    if-nez v0, :cond_0

    if-eqz v1, :cond_4

    .line 2924
    :cond_0
    invoke-static {}, Lacg;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2925
    if-eqz v0, :cond_3

    .line 2927
    const-string/jumbo v3, "MailNavigator"

    const-string/jumbo v4, "tryLoginForMultiMails agentMailValid"

    invoke-static {v3, v4}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2928
    invoke-static {}, Lacp;->a()Lacp;

    const/4 v3, 0x1

    invoke-static {v3}, Lacp;->a(Z)V

    .line 2929
    invoke-static {}, Lacr;->m()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lacg;->a(Ljava/lang/String;)V

    .line 2941
    :cond_1
    :goto_0
    iget-object v3, p0, Lacg$36;->b:Lcma;

    if-eqz v3, :cond_2

    .line 2942
    iget-object v3, p0, Lacg$36;->b:Lcma;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 2952
    :cond_2
    :goto_1
    return-void

    .line 2931
    :cond_3
    const-string/jumbo v3, "MailNavigator"

    const-string/jumbo v4, "tryLoginForMultiMails dingtalkMailValid"

    invoke-static {v3, v4}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2933
    invoke-virtual {v2}, Lacr;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lacg;->a(Ljava/lang/String;)V

    .line 2935
    const/4 v3, 0x0

    invoke-static {v3}, Lafg;->a(Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2936
    const-string/jumbo v3, "logoutAbnormal"

    iget-object v4, p0, Lacg$36;->a:Ljava/lang/String;

    invoke-static {v3, v4}, Lafg;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2946
    :cond_4
    iget-object v3, p0, Lacg$36;->b:Lcma;

    if-eqz v3, :cond_5

    .line 2947
    iget-object v3, p0, Lacg$36;->b:Lcma;

    const-string/jumbo v4, "2016"

    const-string/jumbo v5, "need login first"

    invoke-interface {v3, v4, v5}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2950
    :cond_5
    iget-object v3, p0, Lacg$36;->c:Landroid/content/Context;

    invoke-static {v3}, Lacg;->b(Landroid/content/Context;)V

    goto :goto_1
.end method
