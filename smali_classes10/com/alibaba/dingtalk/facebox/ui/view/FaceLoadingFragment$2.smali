.class final Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment$2;
.super Ljava/lang/Object;
.source "FaceLoadingFragment.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;
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
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment$2;->b:Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;

    iput-wide p2, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment$2;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 251
    check-cast p1, Ljava/lang/Long;

    .line 1254
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment$2;->b:Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment$2;->a:J

    invoke-static {v0, v2, v3, v4, v5}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;->a(Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;JJ)V

    .line 1256
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment$2;->b:Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;->c(Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1257
    const-string/jumbo v0, "FaceRecord"

    const-string/jumbo v1, "FaceEmployee"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[FaceRecord] getUidByCorpIdAndStaffId success, uid="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 1258
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1257
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1259
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment$2;->b:Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;->a(Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;J)V

    .line 251
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 269
    const-string/jumbo v2, "FaceRecord"

    const-string/jumbo v3, "FaceEmployee"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "[FaceRecord] getUidByCorpIdAndStaffId fail:code="

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "; msg="

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p2, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment$2;->b:Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;

    invoke-static {v2}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;->c(Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 273
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v0

    .line 274
    .local v0, "uid":J
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment$2;->b:Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;

    iget-wide v4, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment$2;->a:J

    invoke-static {v2, v0, v1, v4, v5}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;->a(Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;JJ)V

    .line 275
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment$2;->b:Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;

    invoke-static {v2, v0, v1}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;->a(Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;J)V

    .line 277
    .end local v0    # "uid":J
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 265
    return-void
.end method
