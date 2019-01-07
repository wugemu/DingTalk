.class final Lcom/alibaba/android/user/external/list/ManageExternalActivity$27;
.super Ljava/lang/Object;
.source "ManageExternalActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/external/list/ManageExternalActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/user/external/list/ManageExternalActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/external/list/ManageExternalActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    .prologue
    .line 469
    iput-object p1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$27;->b:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$27;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 472
    new-instance v6, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    invoke-direct {v6}, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;-><init>()V

    .line 473
    .local v6, "po":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$27;->a:Ljava/lang/String;

    iput-object v0, v6, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->url:Ljava/lang/String;

    .line 474
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$27;->b:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    aput-object v6, v2, v4

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;ZLandroid/os/Bundle;)V

    .line 475
    return-void
.end method
