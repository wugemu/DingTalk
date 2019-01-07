.class final Lfbq$6;
.super Ljava/lang/Object;
.source "CertifyTaskImpl.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfbq;->a(Lcom/alibaba/wukong/Callback;)V
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
        "Lfrx;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/Callback;

.field final synthetic b:Lfbq;


# direct methods
.method constructor <init>(Lfbq;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lfbq;

    .prologue
    .line 205
    iput-object p1, p0, Lfbq$6;->b:Lfbq;

    iput-object p2, p0, Lfbq$6;->a:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 205
    check-cast p1, Lfrx;

    .line 1209
    iget-object v0, p0, Lfbq$6;->b:Lfbq;

    invoke-static {v0}, Lfbq;->d(Lfbq;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1213
    if-eqz p1, :cond_5

    iget-object v0, p1, Lfrx;->b:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lfrx;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1214
    iget-object v0, p0, Lfbq$6;->b:Lfbq;

    iget-object v1, p1, Lfrx;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lfbq;->a(Lfbq;Ljava/lang/String;)Ljava/lang/String;

    .line 1215
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1216
    iget-object v0, p1, Lfrx;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/model/RealVerifyStepItemObject;

    .line 1217
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/alibaba/android/user/model/RealVerifyStepItemObject;->properties:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 1221
    iget-object v0, v0, Lcom/alibaba/android/user/model/RealVerifyStepItemObject;->properties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/model/RealVerifyStepPropertyObject;

    .line 1222
    if-eqz v0, :cond_1

    .line 1223
    iget-wide v4, v0, Lcom/alibaba/android/user/model/RealVerifyStepPropertyObject;->code:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1228
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1229
    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1230
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1237
    :goto_1
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1238
    iget-object v1, p0, Lfbq$6;->a:Lcom/alibaba/wukong/Callback;

    if-eqz v1, :cond_3

    .line 1239
    iget-object v1, p0, Lfbq$6;->a:Lcom/alibaba/wukong/Callback;

    invoke-interface {v1, v0}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 1241
    :cond_3
    :goto_2
    return-void

    .line 1233
    :cond_4
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1242
    :cond_5
    iget-object v0, p0, Lfbq$6;->b:Lfbq;

    iget-object v1, p0, Lfbq$6;->a:Lcom/alibaba/wukong/Callback;

    const-string/jumbo v2, "-1"

    sget v3, Lezg$l;->dt_init_fail:I

    invoke-static {v0, v1, v2, v3}, Lfbq;->a(Lfbq;Lcom/alibaba/wukong/Callback;Ljava/lang/String;I)V

    .line 1243
    invoke-static {}, Lfbq;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setUpCertify return null"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 254
    iget-object v0, p0, Lfbq$6;->b:Lfbq;

    iget-object v1, p0, Lfbq$6;->a:Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v1, p1, p2}, Lfbq;->a(Lfbq;Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-static {}, Lfbq;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "certifyStep fail:%s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lfxo;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "process"    # I

    .prologue
    .line 250
    return-void
.end method
