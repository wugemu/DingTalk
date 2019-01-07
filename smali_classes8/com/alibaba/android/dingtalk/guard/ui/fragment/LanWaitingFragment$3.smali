.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment$3;
.super Ljava/lang/Object;
.source "LanWaitingFragment.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;->a(Lbsw$b;)V
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
        "Lbmu;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbsw$b;

.field final synthetic b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;Lbsw$b;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment$3;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;

    iput-object p2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment$3;->a:Lbsw$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 159
    check-cast p1, Lbmu;

    .line 1162
    if-eqz p1, :cond_1

    .line 1163
    const-string/jumbo v0, "LanWaitingFragment"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "queryProductConfigInfo picUrl: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p1, Lbmu;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", waitTimeAfterBind: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p1, Lbmu;->b:Ljava/lang/Integer;

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment$3;->a:Lbsw$b;

    iget-object v1, p1, Lbmu;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lbsw$b;->n(Ljava/lang/String;)V

    .line 1166
    iget-object v0, p1, Lbmu;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1167
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment$3;->a:Lbsw$b;

    iget-object v1, p1, Lbmu;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lbsw$b;->f(I)V

    .line 1169
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment$3;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment$3;->a:Lbsw$b;

    invoke-interface {v1}, Lbsw$b;->M()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;Ljava/lang/String;)V

    .line 159
    :cond_1
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 180
    const-string/jumbo v0, "LanWaitingFragment"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "queryProductConfigInfo exp code: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", reason: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment$3;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment$3;->a:Lbsw$b;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;Lbsw$b;)V

    .line 182
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 176
    return-void
.end method
