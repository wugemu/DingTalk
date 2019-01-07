.class final Lcbm$2;
.super Ljava/lang/Object;
.source "WalletPresenter.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcbm;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcbm;


# direct methods
.method constructor <init>(Lcbm;Z)V
    .locals 0
    .param p1, "this$0"    # Lcbm;

    .prologue
    .line 87
    iput-object p1, p0, Lcbm$2;->b:Lcbm;

    iput-boolean p2, p0, Lcbm$2;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 104
    iget-object v0, p0, Lcbm$2;->b:Lcbm;

    .line 1021
    iget-object v0, v0, Lcbm;->a:Lcbk$b;

    .line 104
    invoke-interface {v0, p1, p2}, Lcbk$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string/jumbo v0, "redpackets"

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "showVerifyPwdDialog failed, code="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", reason="

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 87
    check-cast p1, Ljava/lang/Boolean;

    .line 2022
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 1090
    if-eqz v0, :cond_2

    .line 1091
    iget-boolean v0, p0, Lcbm$2;->a:Z

    if-eqz v0, :cond_1

    .line 1092
    iget-object v0, p0, Lcbm$2;->b:Lcbm;

    .line 3128
    iget-object v1, v0, Lcbm;->a:Lcbk$b;

    invoke-interface {v1}, Lcbk$b;->b()V

    .line 3129
    new-instance v1, Lcbm$3;

    invoke-direct {v1, v0}, Lcbm$3;-><init>(Lcbm;)V

    .line 3149
    const-class v2, Lcma;

    iget-object v0, v0, Lcbm;->a:Lcbk$b;

    invoke-interface {v0}, Lcbk$b;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 3150
    invoke-static {}, Lcbs;->a()Lcbs;

    move-result-object v1

    .line 3533
    new-instance v2, Lcbs$16;

    invoke-direct {v2, v1, v0}, Lcbs$16;-><init>(Lcbs;Lcma;)V

    .line 3540
    const-class v0, Lcom/alibaba/android/dingtalk/redpackets/idl/service/DingPayIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/redpackets/idl/service/DingPayIService;

    .line 3541
    if-eqz v0, :cond_0

    .line 3542
    invoke-interface {v0, v2}, Lcom/alibaba/android/dingtalk/redpackets/idl/service/DingPayIService;->getAuthUrl(Liyv;)V

    .line 1094
    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcbm$2;->b:Lcbm;

    .line 4155
    iget-object v0, v1, Lcbm;->a:Lcbk$b;

    invoke-interface {v0}, Lcbk$b;->b()V

    .line 4156
    new-instance v0, Lcbm$4;

    invoke-direct {v0, v1}, Lcbm$4;-><init>(Lcbm;)V

    .line 4178
    const-class v2, Lcom/alibaba/wukong/Callback;

    iget-object v3, v1, Lcbm;->a:Lcbk$b;

    invoke-interface {v3}, Lcbk$b;->a()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 4179
    invoke-static {}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a()Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;

    move-result-object v2

    iget-object v1, v1, Lcbm;->a:Lcbk$b;

    invoke-interface {v1}, Lcbk$b;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->b(Landroid/app/Activity;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0

    .line 1097
    :cond_2
    iget-object v0, p0, Lcbm$2;->b:Lcbm;

    .line 5021
    iget-object v0, v0, Lcbm;->a:Lcbk$b;

    .line 1097
    iget-object v1, p0, Lcbm$2;->b:Lcbm;

    .line 6021
    iget-object v1, v1, Lcbm;->a:Lcbk$b;

    .line 1097
    invoke-interface {v1}, Lcbk$b;->a()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcaj$f;->redpackets_pwd_error:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcbk$b;->b(Ljava/lang/String;)V

    .line 1098
    const-string/jumbo v0, "redpackets"

    const/4 v1, 0x0

    const-string/jumbo v2, "getAuthUrl failed"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
