.class final Lfls$20;
.super Ljava/lang/Object;
.source "ContactUtils.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfls;->a(Landroid/app/Activity;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;


# direct methods
.method constructor <init>(Lcma;)V
    .locals 0

    .prologue
    .line 1488
    iput-object p1, p0, Lfls$20;->a:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1488
    check-cast p1, Ljava/lang/Boolean;

    .line 3022
    invoke-static {p1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v3

    .line 2494
    iget-object v4, p0, Lfls$20;->a:Lcma;

    if-nez v3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v4, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 2495
    invoke-static {v3}, Lflw;->a(Z)V

    .line 2497
    const-string/jumbo v0, "pref_key_contact_match_switch_last_time"

    invoke-static {}, Lcms;->u()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcpk;->b(Ljava/lang/String;J)V

    .line 2499
    const-string/jumbo v0, "match_contact"

    const-string/jumbo v4, "checkPhonebookMatch success, phonebookMatchSwitch=%b"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v4, v1}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1488
    return-void

    :cond_0
    move v0, v2

    .line 2494
    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1509
    const-string/jumbo v0, "match_contact"

    const-string/jumbo v1, "checkPhonebookMatch exception, code=%s, reason=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1510
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 1505
    return-void
.end method
