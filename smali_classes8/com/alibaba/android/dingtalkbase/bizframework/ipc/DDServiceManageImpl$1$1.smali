.class final Lcom/alibaba/android/dingtalkbase/bizframework/ipc/DDServiceManageImpl$1$1;
.super Ljava/lang/Object;
.source "DDServiceManageImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkbase/bizframework/ipc/DDServiceManageImpl$1;->a(Ljava/lang/String;Landroid/os/IBinder;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/bizframework/ipc/DDServiceManageImpl$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/bizframework/ipc/DDServiceManageImpl$1;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkbase/bizframework/ipc/DDServiceManageImpl$1;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/bizframework/ipc/DDServiceManageImpl$1$1;->b:Lcom/alibaba/android/dingtalkbase/bizframework/ipc/DDServiceManageImpl$1;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkbase/bizframework/ipc/DDServiceManageImpl$1$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 97
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "biz service died:"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/bizframework/ipc/DDServiceManageImpl$1$1;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lciz;->a(Ljava/lang/String;Z)V

    .line 98
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "ipc"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "bizServiceDied"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/bizframework/ipc/DDServiceManageImpl$1$1;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->commitCountEvent(Ljava/lang/String;Ljava/lang/String;D)V

    .line 99
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/bizframework/ipc/DDServiceManageImpl$1$1;->b:Lcom/alibaba/android/dingtalkbase/bizframework/ipc/DDServiceManageImpl$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/bizframework/ipc/DDServiceManageImpl$1;->a:Lcom/alibaba/android/dingtalkbase/bizframework/ipc/DDServiceManageImpl;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/bizframework/ipc/DDServiceManageImpl;->a(Lcom/alibaba/android/dingtalkbase/bizframework/ipc/DDServiceManageImpl;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/bizframework/ipc/DDServiceManageImpl$1$1;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    return-void
.end method
