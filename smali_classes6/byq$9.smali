.class final Lbyq$9;
.super Ljava/lang/Object;
.source "StartLiveUtils.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbyq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/android/dingtalk/live/rpc/model/StopLiveRspObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/wukong/Callback;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lbyq$9;->a:Landroid/app/Activity;

    iput-object p2, p0, Lbyq$9;->b:Ljava/lang/String;

    iput-object p3, p0, Lbyq$9;->c:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 305
    iget-object v0, p0, Lbyq$9;->a:Landroid/app/Activity;

    invoke-static {v0}, Lbyf;->b(Landroid/app/Activity;)V

    .line 306
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "stopLiveForStartNewLive failed, code="

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", reason="

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1013
    const-string/jumbo v1, "live"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lbyq$9;->c:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lbyq$9;->c:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    :cond_0
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 296
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 296
    .line 1299
    invoke-static {}, Lbtq;->a()Lbtq;

    move-result-object v0

    invoke-virtual {v0}, Lbtq;->e()V

    .line 1300
    iget-object v0, p0, Lbyq$9;->a:Landroid/app/Activity;

    iget-object v1, p0, Lbyq$9;->b:Ljava/lang/String;

    iget-object v2, p0, Lbyq$9;->c:Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v1, v2}, Lbyq;->b(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 296
    return-void
.end method
