.class final Lacp$26;
.super Ljava/lang/Object;
.source "MailDialogManager.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacp;
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
.field final synthetic a:Lacp;


# direct methods
.method constructor <init>(Lacp;)V
    .locals 0
    .param p1, "this$0"    # Lacp;

    .prologue
    .line 1183
    iput-object p1, p0, Lacp$26;->a:Lacp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 1183
    check-cast p1, Ljava/lang/String;

    .line 2186
    if-nez p1, :cond_0

    .line 2187
    const-string/jumbo v0, "MailDialogManager"

    const-string/jumbo v1, "caiNiaoScribePhone data == null"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2188
    iget-object v0, p0, Lacp$26;->a:Lacp;

    invoke-static {v0}, Lacp;->b(Lacp;)Landroid/content/Context;

    move-result-object v0

    sget v1, Laxo$i;->mail_guide_subscribe_success:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhcn;->a(Ljava/lang/String;)V

    .line 2189
    const-string/jumbo v0, "pref_key_mail_cainiao_subscribe"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    :goto_0
    return-void

    .line 2191
    :cond_0
    const-string/jumbo v0, "MailDialogManager"

    const-string/jumbo v1, "caiNiaoScribePhone data != null"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2192
    iget-object v0, p0, Lacp$26;->a:Lacp;

    invoke-static {v0}, Lacp;->b(Lacp;)Landroid/content/Context;

    move-result-object v0

    sget v1, Laxo$i;->mail_guide_subscribe_failure:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhcn;->a(Ljava/lang/String;)V

    .line 3122
    const-string/jumbo v0, "mail_cainiao_guide_sub_fail"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 1203
    const-string/jumbo v0, "MailDialogManager"

    invoke-static {v0, p1, p2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2122
    const-string/jumbo v0, "mail_cainiao_guide_sub_fail"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 1205
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 1199
    return-void
.end method
