.class final Lcom/alibaba/android/user/connection/activity/ConnectionActivity$11;
.super Ljava/lang/Object;
.source "ConnectionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/connection/activity/ConnectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    .prologue
    .line 1199
    iput-object p1, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$11;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1202
    invoke-static {}, Lfdo;->a()Lfdo;

    move-result-object v2

    .line 1203
    .local v2, "pool":Lfdo;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lfdo;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 1205
    .local v1, "params":[Ljava/lang/String;
    const/4 v3, 0x0

    const-string/jumbo v4, "0"

    aput-object v4, v1, v3

    .line 1207
    invoke-static {}, Lfdv;->a()Lfdv;

    move-result-object v3

    const-string/jumbo v4, "read = ? "

    invoke-virtual {v3, v4, v1}, Lfdv;->d(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1208
    .local v0, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;>;"
    invoke-virtual {v2, v1}, Lfdo;->release(Ljava/lang/Object;)V

    .line 1210
    iget-object v3, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$11;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v3}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1211
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v4

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v3

    new-instance v5, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$11$1;

    invoke-direct {v5, p0, v0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$11$1;-><init>(Lcom/alibaba/android/user/connection/activity/ConnectionActivity$11;Ljava/util/List;)V

    const-class v6, Ljava/lang/Runnable;

    iget-object v7, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$11;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-interface {v3, v5, v6, v7}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {v4, v3}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 1218
    :cond_0
    return-void
.end method
