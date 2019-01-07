.class final Lbjg$4;
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
        "Lbcj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lbjg;


# direct methods
.method constructor <init>(Lbjg;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lbjg;

    .prologue
    .line 183
    iput-object p1, p0, Lbjg$4;->b:Lbjg;

    iput-object p2, p0, Lbjg$4;->a:Ljava/util/List;

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
    .line 183
    .line 1186
    sget v0, Laxp$i;->dt_ding_add_receiver_success:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1187
    iget-object v0, p0, Lbjg$4;->b:Lbjg;

    invoke-static {v0}, Lbjg;->d(Lbjg;)Lcom/alibaba/wukong/Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1188
    iget-object v0, p0, Lbjg$4;->b:Lbjg;

    invoke-static {v0}, Lbjg;->d(Lbjg;)Lcom/alibaba/wukong/Callback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 183
    :cond_0
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
    .line 198
    iget-object v0, p0, Lbjg$4;->b:Lbjg;

    invoke-static {v0}, Lbjg;->a(Lbjg;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    .end local p2    # "reason":Ljava/lang/String;
    :goto_0
    return-void

    .line 201
    .restart local p2    # "reason":Ljava/lang/String;
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Lbjg;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 202
    iget-object v0, p0, Lbjg$4;->b:Lbjg;

    iget-object v1, p0, Lbjg$4;->a:Ljava/util/List;

    const/4 v2, 0x1

    invoke-static {v0, p2, v1, v2}, Lbjg;->a(Lbjg;Ljava/lang/CharSequence;Ljava/util/List;Z)V

    goto :goto_0

    .line 204
    :cond_1
    const-string/jumbo v0, ""

    if-nez p2, :cond_2

    .line 205
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Laxp$i;->dt_ding_add_receiver_fail:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 204
    .end local p2    # "reason":Ljava/lang/String;
    :cond_2
    invoke-static {v0, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 194
    return-void
.end method
