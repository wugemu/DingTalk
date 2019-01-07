.class final Lcom/alibaba/android/dingtalk/circle/impl/CircleInterfaceImpl$1;
.super Ljava/lang/Object;
.source "CircleInterfaceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/circle/impl/CircleInterfaceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcov;

.field final synthetic c:Lcom/alibaba/android/dingtalk/circle/impl/CircleInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/circle/impl/CircleInterfaceImpl;Landroid/app/Activity;Lcov;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/circle/impl/CircleInterfaceImpl;

    .prologue
    .line 326
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/impl/CircleInterfaceImpl$1;->c:Lcom/alibaba/android/dingtalk/circle/impl/CircleInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/android/dingtalk/circle/impl/CircleInterfaceImpl$1;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/alibaba/android/dingtalk/circle/impl/CircleInterfaceImpl$1;->b:Lcov;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 329
    invoke-static {}, Lbox;->a()Lbox;

    move-result-object v2

    .line 330
    .local v2, "pool":Lbox;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lbox;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 332
    .local v1, "params":[Ljava/lang/String;
    const/4 v3, 0x0

    const-string/jumbo v4, "0"

    aput-object v4, v1, v3

    .line 334
    invoke-static {}, Lbpd;->e()Lbpd;

    move-result-object v3

    const-string/jumbo v4, "read = ? "

    invoke-virtual {v3, v4, v1}, Lbpd;->d(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 336
    .local v0, "noticeObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;>;"
    invoke-virtual {v2, v1}, Lbox;->release(Ljava/lang/Object;)V

    .line 338
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/circle/impl/CircleInterfaceImpl$1;->a:Landroid/app/Activity;

    invoke-static {v3}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 339
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v4

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v3

    new-instance v5, Lcom/alibaba/android/dingtalk/circle/impl/CircleInterfaceImpl$1$1;

    invoke-direct {v5, p0, v0}, Lcom/alibaba/android/dingtalk/circle/impl/CircleInterfaceImpl$1$1;-><init>(Lcom/alibaba/android/dingtalk/circle/impl/CircleInterfaceImpl$1;Ljava/util/List;)V

    const-class v6, Ljava/lang/Runnable;

    iget-object v7, p0, Lcom/alibaba/android/dingtalk/circle/impl/CircleInterfaceImpl$1;->a:Landroid/app/Activity;

    invoke-interface {v3, v5, v6, v7}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {v4, v3}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 350
    :cond_0
    return-void
.end method
