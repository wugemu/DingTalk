.class final Lgar$6;
.super Ljava/lang/Object;
.source "FavoriteNavigator.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgar;->a(Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;)V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 526
    iput-object p1, p0, Lgar$6;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iput-object p2, p0, Lgar$6;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 526
    check-cast p1, Ljava/lang/Boolean;

    .line 1529
    iget-object v0, p0, Lgar$6;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    new-instance v1, Lgar$6$1;

    invoke-direct {v1, p0, p1}, Lgar$6$1;-><init>(Lgar$6;Ljava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 526
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 547
    iget-object v0, p0, Lgar$6;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    new-instance v1, Lgar$6$2;

    invoke-direct {v1, p0, p1, p2}, Lgar$6$2;-><init>(Lgar$6;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 554
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 543
    return-void
.end method
