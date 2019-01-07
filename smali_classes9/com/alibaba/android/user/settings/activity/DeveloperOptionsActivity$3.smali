.class final Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity$3;
.super Ljava/lang/Object;
.source "DeveloperOptionsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity$3;->a:Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 88
    const-string/jumbo v2, "THREAD"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 89
    .local v0, "thread":Lcom/alibaba/doraemon/threadpool/Thread;
    invoke-interface {v0}, Lcom/alibaba/doraemon/threadpool/Thread;->dumpThreadStatus()Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "threadInfo":Ljava/lang/String;
    const-string/jumbo v2, "Doraemon"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-void
.end method
