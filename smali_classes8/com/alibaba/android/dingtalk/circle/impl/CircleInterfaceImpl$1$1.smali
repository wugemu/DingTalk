.class final Lcom/alibaba/android/dingtalk/circle/impl/CircleInterfaceImpl$1$1;
.super Ljava/lang/Object;
.source "CircleInterfaceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/circle/impl/CircleInterfaceImpl$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/dingtalk/circle/impl/CircleInterfaceImpl$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/circle/impl/CircleInterfaceImpl$1;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalk/circle/impl/CircleInterfaceImpl$1;

    .prologue
    .line 339
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/impl/CircleInterfaceImpl$1$1;->b:Lcom/alibaba/android/dingtalk/circle/impl/CircleInterfaceImpl$1;

    iput-object p2, p0, Lcom/alibaba/android/dingtalk/circle/impl/CircleInterfaceImpl$1$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 342
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/impl/CircleInterfaceImpl$1$1;->a:Ljava/util/List;

    invoke-static {v0}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/impl/CircleInterfaceImpl$1$1;->b:Lcom/alibaba/android/dingtalk/circle/impl/CircleInterfaceImpl$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/circle/impl/CircleInterfaceImpl$1;->b:Lcov;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcov;->a(Ljava/lang/Object;)V

    .line 347
    :goto_0
    return-void

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/impl/CircleInterfaceImpl$1$1;->b:Lcom/alibaba/android/dingtalk/circle/impl/CircleInterfaceImpl$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/circle/impl/CircleInterfaceImpl$1;->b:Lcov;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/impl/CircleInterfaceImpl$1$1;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcov;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method
