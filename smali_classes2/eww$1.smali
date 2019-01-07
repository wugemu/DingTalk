.class public final Leww$1;
.super Ljava/lang/Object;
.source "TelePhoneContactManager.java"

# interfaces
.implements Leyo$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leww;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Leyo$d",
        "<",
        "Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Leww;


# direct methods
.method public constructor <init>(Leww;)V
    .locals 0
    .param p1, "this$0"    # Leww;

    .prologue
    .line 148
    iput-object p1, p0, Leww$1;->a:Leww;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 148
    check-cast p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactModel;

    .line 1151
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactModel;->offlineItems:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactModel;->offlineItems:Ljava/util/List;

    .line 1153
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1154
    :cond_0
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Leww;->b()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "The deletion contacts invalid"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    iget-object v0, p0, Leww$1;->a:Leww;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Leww;->a(Leww;Z)V

    .line 1156
    :cond_1
    :goto_0
    return-void

    .line 1159
    :cond_2
    invoke-static {}, Leww;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    .line 1160
    if-eqz v0, :cond_1

    .line 1161
    new-instance v1, Leww$1$1;

    invoke-direct {v1, p0, p1}, Leww$1$1;-><init>(Leww$1;Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactModel;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 176
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Leww;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Query deletion contacts fail "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Leww$1;->a:Leww;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Leww;->a(Leww;Z)V

    .line 178
    return-void
.end method
