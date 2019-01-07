.class final Lcom/alibaba/android/dingtalkbase/bizframework/ipc/MainLauncherService$1;
.super Ljava/lang/Object;
.source "MainLauncherService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkbase/bizframework/ipc/MainLauncherService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/bizframework/ipc/MainLauncherService;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/bizframework/ipc/MainLauncherService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/bizframework/ipc/MainLauncherService;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/bizframework/ipc/MainLauncherService$1;->a:Lcom/alibaba/android/dingtalkbase/bizframework/ipc/MainLauncherService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/bizframework/ipc/MainLauncherService$1;->a:Lcom/alibaba/android/dingtalkbase/bizframework/ipc/MainLauncherService;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/bizframework/ipc/MainLauncherService;->stopSelf()V

    .line 19
    return-void
.end method
