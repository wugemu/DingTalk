.class public final Lfrf;
.super Ljava/lang/Object;
.source "AlipayLoginPresenter.java"

# interfaces
.implements Lfre$a;


# instance fields
.field a:Lfre$b;

.field b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field c:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lfrf$1;

    invoke-direct {v0, p0}, Lfrf$1;-><init>(Lfrf;)V

    iput-object v0, p0, Lfrf;->c:Landroid/os/Handler;

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lfre$b;)V
    .locals 1
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "view"    # Lfre$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lfrf$1;

    invoke-direct {v0, p0}, Lfrf$1;-><init>(Lfrf;)V

    iput-object v0, p0, Lfrf;->c:Landroid/os/Handler;

    .line 55
    invoke-static {p1}, Lciv;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iput-object v0, p0, Lfrf;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 56
    invoke-static {p2}, Lciv;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfre$b;

    iput-object v0, p0, Lfrf;->a:Lfre$b;

    .line 57
    iget-object v0, p0, Lfrf;->a:Lfre$b;

    invoke-interface {v0, p0}, Lfre$b;->setPresenter(Lcjd;)V

    .line 58
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 62
    .line 1111
    new-instance v0, Lfrf$2;

    invoke-direct {v0, p0}, Lfrf$2;-><init>(Lfrf;)V

    .line 1134
    const-class v1, Lcma;

    iget-object v2, p0, Lfrf;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v0, v1, v2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 1135
    invoke-static {}, Lfas;->a()Lfas;

    move-result-object v1

    const-string/jumbo v2, "ALIPAY"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lfas;->a(Ljava/lang/String;ILcma;)V

    .line 63
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 9
    .param p1, "areaCode"    # Ljava/lang/String;
    .param p2, "phone"    # Ljava/lang/String;
    .param p3, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 255
    .local p4, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    iget-object v3, p0, Lfrf;->a:Lfre$b;

    invoke-interface {v3}, Lfre$b;->b()V

    .line 257
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    .line 258
    .local v2, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 260
    const-string/jumbo v3, "send code"

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 262
    const-string/jumbo v3, "register"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 263
    const/16 v1, 0xe

    .line 270
    .local v1, "bizType":I
    :goto_0
    invoke-static {}, Lfaf;->b()Lezm;

    move-result-object v0

    .line 271
    .local v0, "api":Lezm;
    sget-object v3, Lcom/alibaba/android/user/devset/DevSettingActivity;->x:Ljava/lang/String;

    .line 272
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const-string/jumbo v3, "EVENTBUTLER"

    .line 273
    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v6, Lfrf$5;

    invoke-direct {v6, p0, v2, p4}, Lfrf$5;-><init>(Lfrf;Lcom/alibaba/doraemon/performance/DDStringBuilder;Lcma;)V

    const-class v7, Lcma;

    iget-object v8, p0, Lfrf;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 274
    invoke-interface {v3, v6, v7, v8}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcma;

    .line 272
    invoke-interface {v0, v4, v1, v5, v3}, Lezm;->a(Ljava/lang/String;IILcma;)V

    .line 336
    return-void

    .line 264
    .end local v0    # "api":Lezm;
    .end local v1    # "bizType":I
    :cond_0
    const-string/jumbo v3, "forgetPwd"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 265
    const/16 v1, 0xf

    .restart local v1    # "bizType":I
    goto :goto_0

    .line 267
    .end local v1    # "bizType":I
    :cond_1
    const/4 v1, 0x1

    .restart local v1    # "bizType":I
    goto :goto_0
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public final i()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method
