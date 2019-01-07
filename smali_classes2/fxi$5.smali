.class public final Lfxi$5;
.super Ljava/lang/Object;
.source "QuotaCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfxi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:Landroid/app/Activity;

.field final synthetic e:Lfxi;


# direct methods
.method public constructor <init>(Lfxi;Lcma;ZZLandroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lfxi;

    .prologue
    .line 288
    iput-object p1, p0, Lfxi$5;->e:Lfxi;

    iput-object p2, p0, Lfxi$5;->a:Lcma;

    iput-boolean p3, p0, Lfxi$5;->b:Z

    iput-boolean p4, p0, Lfxi$5;->c:Z

    iput-object p5, p0, Lfxi$5;->d:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    .line 292
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 293
    .local v2, "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v4

    invoke-virtual {v4}, Lfmz;->g()Lfmw;

    move-result-object v4

    invoke-interface {v4, v2}, Lfmw;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 298
    .local v1, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;>;"
    iget-object v4, p0, Lfxi$5;->a:Lcma;

    if-eqz v4, :cond_3

    .line 299
    iget-boolean v4, p0, Lfxi$5;->b:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lfxi$5;->e:Lfxi;

    invoke-static {v4, v1, v2}, Lfxi;->a(Lfxi;Ljava/util/List;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 300
    :cond_0
    iget-boolean v4, p0, Lfxi$5;->c:Z

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 301
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v4

    new-instance v5, Lfxi$5$1;

    invoke-direct {v5, p0, v1}, Lfxi$5$1;-><init>(Lfxi$5;Ljava/util/List;)V

    invoke-virtual {v4, v5}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 308
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 309
    .local v3, "typesForServer":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    new-instance v0, Lfxi$5$2;

    invoke-direct {v0, p0}, Lfxi$5$2;-><init>(Lfxi$5;)V

    .line 354
    .local v0, "apiEventListener":Lcma;
    iget-object v4, p0, Lfxi$5;->d:Landroid/app/Activity;

    if-eqz v4, :cond_2

    .line 355
    const-string/jumbo v4, "EVENTBUTLER"

    invoke-static {v4}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v5, Lcma;

    iget-object v6, p0, Lfxi$5;->d:Landroid/app/Activity;

    invoke-interface {v4, v0, v5, v6}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "apiEventListener":Lcma;
    check-cast v0, Lcma;

    .line 357
    .restart local v0    # "apiEventListener":Lcma;
    :cond_2
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->c(Ljava/util/List;Lcma;)V

    .line 370
    .end local v0    # "apiEventListener":Lcma;
    .end local v3    # "typesForServer":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_3
    :goto_0
    return-void

    .line 360
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 361
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v4

    new-instance v5, Lfxi$5$3;

    invoke-direct {v5, p0, v1}, Lfxi$5$3;-><init>(Lfxi$5;Ljava/util/List;)V

    invoke-virtual {v4, v5}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
