.class final Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$5;
.super Ljava/lang/Object;
.source "MyBalanceActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;
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
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;

    .prologue
    .line 386
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$5;->b:Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;

    iput p2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$5;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 404
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$5;->b:Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;

    invoke-static {v0, p2}, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->b(Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;Ljava/lang/String;)V

    .line 407
    :cond_0
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 386
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 386
    check-cast p1, Ljava/lang/Boolean;

    .line 1389
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$5;->b:Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2022
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 1390
    if-eqz v0, :cond_2

    .line 1391
    iget v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$5;->a:I

    if-nez v0, :cond_1

    .line 1392
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$5;->b:Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;

    .line 2166
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$2;

    invoke-direct {v2, v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$2;-><init>(Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;)V

    const-class v3, Lcma;

    invoke-interface {v0, v2, v3, v1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 2222
    invoke-static {}, Lcbs;->a()Lcbs;

    move-result-object v1

    invoke-static {}, Lcbr;->a()Lcbr;

    move-result-object v2

    invoke-virtual {v2}, Lcbr;->b()Ljava/lang/String;

    move-result-object v2

    .line 2410
    new-instance v3, Lcbs$7;

    invoke-direct {v3, v1, v0}, Lcbs$7;-><init>(Lcbs;Lcma;)V

    .line 2417
    const-class v0, Lcom/alibaba/android/dingtalk/redpackets/idl/service/DingPayIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/redpackets/idl/service/DingPayIService;

    .line 2418
    if-eqz v0, :cond_0

    .line 2419
    invoke-interface {v0, v2, v3}, Lcom/alibaba/android/dingtalk/redpackets/idl/service/DingPayIService;->authSign(Ljava/lang/String;Liyv;)V

    .line 1394
    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$5;->b:Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->h(Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;)V

    goto :goto_0

    .line 1397
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$5;->b:Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$5;->b:Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;

    sget v2, Lcaj$f;->redpackets_pwd_error:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->b(Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
