.class final Lfhb$4$1;
.super Ljava/lang/Object;
.source "ContactItemViewHolder.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfhb$4;->run()V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfhb$4;


# direct methods
.method constructor <init>(Lfhb$4;)V
    .locals 0
    .param p1, "this$1"    # Lfhb$4;

    .prologue
    .line 161
    iput-object p1, p0, Lfhb$4$1;->a:Lfhb$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 161
    check-cast p1, Ljava/lang/Boolean;

    .line 1164
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1165
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.common_contact_change"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1166
    iget-object v1, p0, Lfhb$4$1;->a:Lfhb$4;

    iget-object v1, v1, Lfhb$4;->c:Lfhb;

    invoke-static {v1}, Lfhb;->a(Lfhb;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 161
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 177
    invoke-static {p2}, Lcms;->a(Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 173
    return-void
.end method
