.class public final Lagt;
.super Lyq;
.source "MailContactBuildTask.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0}, Lyq;-><init>()V

    .line 24
    iput-object p1, p0, Lagt;->a:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method protected final b_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const-string/jumbo v0, "MailContactBuildTask"

    return-object v0
.end method

.method protected final c()Z
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 29
    iget-object v3, p0, Lagt;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 42
    :cond_0
    :goto_0
    return v6

    .line 32
    :cond_1
    invoke-static {}, Lxn;->b()Landroid/content/Context;

    move-result-object v1

    .line 33
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_0

    .line 36
    invoke-static {}, Lxn;->g()Lxz;

    move-result-object v3

    iget-object v4, p0, Lagt;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lxz;->b(Ljava/lang/String;)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v0

    .line 37
    .local v0, "account":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    if-eqz v0, :cond_0

    .line 40
    new-instance v2, Lcom/alibaba/alimei/sdk/lookup/MailContactService$a;

    invoke-virtual {v0}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v4

    iget-object v3, p0, Lagt;->a:Ljava/lang/String;

    invoke-direct {v2, v1, v4, v5, v3}, Lcom/alibaba/alimei/sdk/lookup/MailContactService$a;-><init>(Landroid/content/Context;JLjava/lang/String;)V

    .line 41
    .local v2, "runnable":Lcom/alibaba/alimei/sdk/lookup/MailContactService$a;
    invoke-virtual {v2}, Lcom/alibaba/alimei/sdk/lookup/MailContactService$a;->run()V

    goto :goto_0
.end method
