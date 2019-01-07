.class final Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$29;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 1911
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$29;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1914
    const-string/jumbo v2, "THREAD"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 1915
    .local v1, "t":Lcom/alibaba/doraemon/threadpool/Thread;
    invoke-interface {v1}, Lcom/alibaba/doraemon/threadpool/Thread;->dumpThreadStatus()Ljava/lang/String;

    move-result-object v0

    .line 1916
    .local v0, "dump":Ljava/lang/String;
    sget-object v2, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1917
    const-string/jumbo v2, "\u65e5\u5fd7\u5df2\u6253\u5370\u5b8c\u6210"

    invoke-static {v2}, Lcms;->a(Ljava/lang/String;)V

    .line 1918
    const/4 v2, 0x0

    return v2
.end method
