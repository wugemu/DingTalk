.class final Lbjg$3;
.super Ljava/lang/Object;
.source "AddReceiverHelper.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbjg;
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
.field final synthetic a:Lbjg;


# direct methods
.method constructor <init>(Lbjg;)V
    .locals 0
    .param p1, "this$0"    # Lbjg;

    .prologue
    .line 154
    iput-object p1, p0, Lbjg$3;->a:Lbjg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 154
    .line 1157
    sget v0, Laxp$i;->dt_ding_add_receiver_success:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1158
    iget-object v0, p0, Lbjg$3;->a:Lbjg;

    invoke-static {v0}, Lbjg;->d(Lbjg;)Lcom/alibaba/wukong/Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1159
    iget-object v0, p0, Lbjg$3;->a:Lbjg;

    invoke-static {v0}, Lbjg;->d(Lbjg;)Lcom/alibaba/wukong/Callback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 154
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 169
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 165
    return-void
.end method
