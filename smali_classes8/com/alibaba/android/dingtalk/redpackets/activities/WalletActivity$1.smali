.class final Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity$1;
.super Ljava/lang/Object;
.source "WalletActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->f()V
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
.field final synthetic a:Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity$1;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 192
    .line 1195
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity$1;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->H_()V

    .line 1196
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity$1;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->a(Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;)V

    .line 1198
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity$1;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->b(Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;)Lcbk$a;

    move-result-object v0

    invoke-interface {v0}, Lcbk$a;->a()V

    .line 192
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 208
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity$1;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->H_()V

    .line 209
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lcaj$f;->redpackets_alipay_bind_failed:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "toast":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 211
    move-object v0, p2

    .line 213
    :cond_0
    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 215
    const-string/jumbo v1, "redpackets"

    const/4 v2, 0x0

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "bindAlipayV2 error, code="

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, ", reason="

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p2, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 204
    return-void
.end method
