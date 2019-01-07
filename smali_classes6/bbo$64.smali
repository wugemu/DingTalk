.class final Lbbo$64;
.super Ljava/lang/Object;
.source "DingDataCenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbo;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

.field final synthetic b:Lcom/alibaba/wukong/Callback;

.field final synthetic c:Z

.field final synthetic d:I

.field final synthetic e:Lbbo;


# direct methods
.method constructor <init>(Lbbo;Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/wukong/Callback;ZI)V
    .locals 0
    .param p1, "this$0"    # Lbbo;

    .prologue
    .line 1147
    iput-object p1, p0, Lbbo$64;->e:Lbbo;

    iput-object p2, p0, Lbbo$64;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iput-object p3, p0, Lbbo$64;->b:Lcom/alibaba/wukong/Callback;

    iput-boolean p4, p0, Lbbo$64;->c:Z

    iput p5, p0, Lbbo$64;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 1147
    .line 5150
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;->Unknown:Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;

    .line 5151
    iget-object v1, p0, Lbbo$64;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v1}, Lbkh;->e(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5152
    iget-object v0, p0, Lbbo$64;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->ab()Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;

    move-result-object v0

    .line 5155
    :cond_0
    sget-object v1, Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;->ConfirmedFromApp:Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;

    if-eq v0, v1, :cond_2

    .line 5156
    iget-object v0, p0, Lbbo$64;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->e(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5157
    iget-object v0, p0, Lbbo$64;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    sget-object v1, Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;->ConfirmedFromApp:Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;)V

    .line 5159
    :cond_1
    iget-object v0, p0, Lbbo$64;->e:Lbbo;

    .line 6139
    iget-object v0, v0, Lbbo;->f:Lbgp;

    .line 5159
    iget-object v1, p0, Lbbo$64;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;->ConfirmedFromApp:Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;

    invoke-interface {v0, v1, v2}, Lbgp;->a(Ljava/lang/String;Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;)I

    .line 5160
    iget-object v0, p0, Lbbo$64;->e:Lbbo;

    invoke-virtual {v0}, Lbbo;->e()V

    .line 5163
    :cond_2
    iget-object v0, p0, Lbbo$64;->e:Lbbo;

    iget-object v1, p0, Lbbo$64;->b:Lcom/alibaba/wukong/Callback;

    .line 7139
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lbbo;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    .line 1147
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 1174
    iget-object v0, p0, Lbbo$64;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->e(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1175
    iget-boolean v0, p0, Lbbo$64;->c:Z

    if-eqz v0, :cond_0

    .line 1176
    iget-object v0, p0, Lbbo$64;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget v1, p0, Lbbo$64;->d:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->h(I)V

    .line 1178
    :cond_0
    iget-object v0, p0, Lbbo$64;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    sget-object v1, Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;->Unconfirmed:Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;)V

    .line 1182
    :cond_1
    iget-boolean v0, p0, Lbbo$64;->c:Z

    if-eqz v0, :cond_2

    .line 1183
    iget-object v0, p0, Lbbo$64;->e:Lbbo;

    .line 2139
    iget-object v0, v0, Lbbo;->f:Lbgp;

    .line 1183
    iget-object v1, p0, Lbbo$64;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lbbo$64;->d:I

    invoke-interface {v0, v1, v2}, Lbgp;->a(Ljava/lang/String;I)I

    .line 1185
    :cond_2
    iget-object v0, p0, Lbbo$64;->e:Lbbo;

    .line 3139
    iget-object v0, v0, Lbbo;->f:Lbgp;

    .line 1185
    iget-object v1, p0, Lbbo$64;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;->Unconfirmed:Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;

    invoke-interface {v0, v1, v2}, Lbgp;->a(Ljava/lang/String;Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;)I

    .line 1188
    iget-object v0, p0, Lbbo$64;->e:Lbbo;

    invoke-virtual {v0}, Lbbo;->e()V

    .line 1190
    iget-object v0, p0, Lbbo$64;->e:Lbbo;

    .line 4139
    iget-object v0, v0, Lbbo;->b:Lbbq;

    .line 1190
    new-instance v1, Lbbo$64$1;

    invoke-direct {v1, p0, p2}, Lbbo$64$1;-><init>(Lbbo$64;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lbbq;->a(Ljava/lang/Runnable;)V

    .line 1197
    iget-object v0, p0, Lbbo$64;->e:Lbbo;

    iget-object v1, p0, Lbbo$64;->b:Lcom/alibaba/wukong/Callback;

    .line 5139
    invoke-virtual {v0, v1, p1, p2}, Lbbo;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 1168
    return-void
.end method
