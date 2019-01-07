.class final Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$4;
.super Landroid/os/Handler;
.source "MyBalanceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$4;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 250
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 252
    :pswitch_0
    new-instance v6, Lcbn;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v6, v0}, Lcbn;-><init>(Ljava/lang/String;)V

    .line 1069
    .local v6, "authResult":Lcbn;
    iget-object v8, v6, Lcbn;->a:Ljava/lang/String;

    .line 257
    .local v8, "resultStatus":Ljava/lang/String;
    const-string/jumbo v0, "redpackets"

    const-string/jumbo v1, "auth"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "alipy auth resultStatus : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string/jumbo v0, "9000"

    invoke-static {v8, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1090
    iget-object v0, v6, Lcbn;->b:Ljava/lang/String;

    .line 261
    const-string/jumbo v1, "200"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$4$1;

    invoke-direct {v1, p0, v6}, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$4$1;-><init>(Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$4;Lcbn;)V

    const-class v2, Lcma;

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$4;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcma;

    .line 312
    .local v7, "bindListener":Lcma;
    invoke-static {}, Lcbs;->a()Lcbs;

    move-result-object v0

    .line 1104
    iget-object v1, v6, Lcbn;->d:Ljava/lang/String;

    .line 2097
    iget-object v2, v6, Lcbn;->c:Ljava/lang/String;

    .line 2348
    new-instance v5, Lcbs$4;

    invoke-direct {v5, v0, v7}, Lcbs$4;-><init>(Lcbs;Lcma;)V

    .line 2355
    const-class v0, Lcom/alibaba/android/dingtalk/redpackets/idl/service/DingPayIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/redpackets/idl/service/DingPayIService;

    .line 2356
    if-eqz v0, :cond_0

    .line 2357
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2358
    const-string/jumbo v4, "alipayOpenId"

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2359
    const-string/jumbo v4, "authCode"

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2360
    invoke-static {v3}, Lcbs;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 2361
    invoke-static {v3}, Lcbq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2362
    const/4 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/android/dingtalk/redpackets/idl/service/DingPayIService;->bindAlipay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Liyv;)V

    goto/16 :goto_0

    .line 313
    .end local v7    # "bindListener":Lcma;
    :cond_1
    const-string/jumbo v0, "4000"

    invoke-static {v8, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$4;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;

    sget v1, Lcaj$f;->redpackets_alipay_bind_failed:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 250
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
