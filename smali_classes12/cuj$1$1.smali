.class final Lcuj$1$1;
.super Ljava/lang/Object;
.source "ConfResultHolder.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcuj$1;->onClick(Landroid/view/View;)V
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
        "Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcuj$1;


# direct methods
.method constructor <init>(Lcuj$1;JLjava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcuj$1;

    .prologue
    .line 97
    iput-object p1, p0, Lcuj$1$1;->c:Lcuj$1;

    iput-wide p2, p0, Lcuj$1$1;->a:J

    iput-object p4, p0, Lcuj$1$1;->b:Ljava/lang/String;

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
    .line 97
    check-cast p1, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    .line 1100
    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mBeValid:Z

    if-eqz v0, :cond_0

    .line 1101
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v0

    iget-object v1, p0, Lcuj$1$1;->c:Lcuj$1;

    iget-object v1, v1, Lcuj$1;->b:Landroid/app/Activity;

    iget-wide v2, p0, Lcuj$1$1;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->a(Landroid/content/Context;Ljava/lang/Long;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V

    :goto_0
    return-void

    .line 1104
    :cond_0
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v0

    iget-object v1, p0, Lcuj$1$1;->c:Lcuj$1;

    iget-object v1, v1, Lcuj$1;->b:Landroid/app/Activity;

    iget-wide v2, p0, Lcuj$1$1;->a:J

    iget-object v4, p0, Lcuj$1$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->a(Landroid/content/Context;JLjava/lang/String;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 115
    const-string/jumbo v0, "im"

    invoke-static {}, Lcuj;->p()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Get biz info error "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ","

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    .line 116
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 115
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 111
    return-void
.end method
