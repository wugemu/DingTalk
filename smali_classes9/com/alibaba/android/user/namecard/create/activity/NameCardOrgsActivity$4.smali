.class final Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity$4;
.super Ljava/lang/Object;
.source "NameCardOrgsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity$4;->b:Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity$4;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 220
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity$4;->b:Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;

    invoke-static {v0}, Lhcn;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity$4;->b:Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;->c(Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;)Lcom/alibaba/android/user/namecard/base/BaseAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity$4;->b:Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;->c(Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;)Lcom/alibaba/android/user/namecard/base/BaseAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity$4;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/namecard/base/BaseAdapter;->a(Ljava/util/List;)V

    .line 225
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity$4;->b:Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;->c(Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;)Lcom/alibaba/android/user/namecard/base/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/user/namecard/base/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
