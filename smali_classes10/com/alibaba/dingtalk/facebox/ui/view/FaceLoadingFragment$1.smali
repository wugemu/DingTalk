.class final Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment$1;
.super Ljava/lang/Object;
.source "FaceLoadingFragment.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;->a(J)V
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
.field final synthetic a:J

.field final synthetic b:Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment$1;->b:Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;

    iput-wide p2, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment$1;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 181
    check-cast p1, Ljava/lang/Boolean;

    .line 1184
    const-string/jumbo v0, "FaceRecord"

    const-string/jumbo v1, "FaceEmployee"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[FaceRecord] hasUserFace success hasRecord="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 1185
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1184
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1187
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment$1;->b:Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;->a(Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;)V

    :goto_0
    return-void

    .line 1189
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment$1;->b:Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;->b(Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 198
    const-string/jumbo v0, "FaceRecord"

    const-string/jumbo v1, "FaceEmployee"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[FaceRecord] hasUserFace fail:code="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "; msg="

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "; id="

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-wide v4, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment$1;->a:J

    .line 199
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 198
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 194
    return-void
.end method
