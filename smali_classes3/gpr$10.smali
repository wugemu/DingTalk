.class final Lgpr$10;
.super Ljava/lang/Object;
.source "CSpaceUtils.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgpr;->a(Landroid/app/Activity;Ljava/util/List;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcma;


# direct methods
.method constructor <init>(JLcma;)V
    .locals 1

    .prologue
    .line 703
    iput-wide p1, p0, Lgpr$10;->a:J

    iput-object p3, p0, Lgpr$10;->b:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 703
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .line 1706
    iget-wide v0, p0, Lgpr$10;->a:J

    .line 2101
    invoke-static {v0, v1}, Lgpr;->a(J)Z

    move-result v0

    .line 1706
    if-eqz v0, :cond_1

    .line 1708
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccr;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    .line 1709
    invoke-static {}, Lcom/alibaba/aether/api/Aether;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lgpr$10$1;

    invoke-direct {v1, p0, p1}, Lgpr$10$1;-><init>(Lgpr$10;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 1716
    iget-object v0, p0, Lgpr$10;->b:Lcma;

    if-eqz v0, :cond_0

    .line 1717
    iget-object v0, p0, Lgpr$10;->b:Lcma;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 1722
    :cond_0
    :goto_0
    return-void

    .line 1720
    :cond_1
    iget-object v0, p0, Lgpr$10;->b:Lcma;

    if-eqz v0, :cond_0

    .line 1721
    iget-wide v0, p0, Lgpr$10;->a:J

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lgpz;->a(JLcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1722
    iget-object v0, p0, Lgpr$10;->b:Lcma;

    const-string/jumbo v1, "2012"

    const-string/jumbo v2, "data error"

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1724
    :cond_2
    iget-object v0, p0, Lgpr$10;->b:Lcma;

    const-string/jumbo v1, "2020"

    const-string/jumbo v2, "access denied"

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 737
    iget-object v0, p0, Lgpr$10;->b:Lcma;

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lgpr$10;->b:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 733
    return-void
.end method
