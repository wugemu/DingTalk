.class final Lffr$2;
.super Ljava/lang/Object;
.source "OpenIdExManager.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lffr;
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
        "Ljava/util/List",
        "<",
        "Lcgc;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lffr;


# direct methods
.method constructor <init>(Lffr;Z)V
    .locals 0
    .param p1, "this$0"    # Lffr;

    .prologue
    .line 125
    iput-object p1, p0, Lffr$2;->b:Lffr;

    iput-boolean p2, p0, Lffr$2;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 125
    check-cast p1, Ljava/util/List;

    .line 1128
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1129
    :cond_0
    :goto_0
    return-void

    .line 1131
    :cond_1
    new-instance v12, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1132
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_2
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcgc;

    .line 1133
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcgc;->b:Lcet;

    if-eqz v1, :cond_2

    .line 1136
    new-instance v1, Lfrw;

    iget-object v2, v0, Lcgc;->b:Lcet;

    iget-object v2, v2, Lcet;->b:Ljava/lang/Long;

    .line 1137
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, v0, Lcgc;->b:Lcet;

    iget-object v4, v4, Lcet;->a:Ljava/lang/Long;

    .line 1138
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v6, v0, Lcgc;->b:Lcet;

    iget-object v6, v6, Lcet;->c:Ljava/lang/String;

    iget-object v7, v0, Lcgc;->b:Lcet;

    iget-object v7, v7, Lcet;->d:Ljava/lang/String;

    iget-object v8, v0, Lcgc;->b:Lcet;

    iget-object v8, v8, Lcet;->j:Ljava/lang/String;

    iget-object v9, v0, Lcgc;->b:Lcet;

    iget-object v9, v9, Lcet;->k:Ljava/lang/String;

    iget-object v0, v0, Lcgc;->b:Lcet;

    iget-object v0, v0, Lcet;->h:Ljava/lang/Long;

    .line 1143
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-direct/range {v1 .. v11}, Lfrw;-><init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1144
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1146
    :cond_3
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1147
    invoke-static {v12}, Lfbm;->a(Ljava/util/List;)V

    .line 1149
    :cond_4
    iget-boolean v0, p0, Lffr$2;->a:Z

    if-eqz v0, :cond_0

    .line 1151
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.workapp.msg.sender.update"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1152
    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 163
    const/4 v0, 0x0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "getUserEmployeeInfos failed, code="

    aput-object v2, v1, v4

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", reason="

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 159
    return-void
.end method
