.class public final Lfvw$1;
.super Ljava/lang/Object;
.source "NoLoginSwitchService.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfvw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/user/model/DeviceSwitchObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfvw;


# direct methods
.method public constructor <init>(Lfvw;)V
    .locals 0
    .param p1, "this$0"    # Lfvw;

    .prologue
    .line 67
    iput-object p1, p0, Lfvw$1;->a:Lfvw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 67
    check-cast p1, Ljava/util/List;

    .line 1070
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 1071
    :cond_0
    :goto_0
    return-void

    .line 1074
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/model/DeviceSwitchObject;

    .line 1075
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/alibaba/android/user/model/DeviceSwitchObject;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1079
    iget-object v2, p0, Lfvw$1;->a:Lfvw;

    invoke-static {v2}, Lfvw;->a(Lfvw;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, v0, Lcom/alibaba/android/user/model/DeviceSwitchObject;->name:Ljava/lang/String;

    iget-boolean v0, v0, Lcom/alibaba/android/user/model/DeviceSwitchObject;->show:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1082
    :cond_3
    iget-object v0, p0, Lfvw$1;->a:Lfvw;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lfvw;->a(Lfvw;Z)Z

    .line 1084
    iget-object v0, p0, Lfvw$1;->a:Lfvw;

    invoke-static {v0}, Lfvw;->b(Lfvw;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 94
    const-string/jumbo v0, "fetchSwitchData exception, code=%s, reason=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lfxo;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lfvw$1;->a:Lfvw;

    invoke-static {v0, p1, p2}, Lfvw;->a(Lfvw;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 90
    return-void
.end method
