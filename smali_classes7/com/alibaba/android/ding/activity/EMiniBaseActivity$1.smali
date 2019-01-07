.class final Lcom/alibaba/android/ding/activity/EMiniBaseActivity$1;
.super Ljava/lang/Object;
.source "EMiniBaseActivity.java"

# interfaces
.implements Lhln;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/activity/EMiniBaseActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/EMiniBaseActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/EMiniBaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/EMiniBaseActivity;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/EMiniBaseActivity$1;->a:Lcom/alibaba/android/ding/activity/EMiniBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lhlp;)V
    .locals 3
    .param p1, "iMiniPageInstance"    # Lhlp;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 154
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/EMiniBaseActivity$1;->a:Lcom/alibaba/android/ding/activity/EMiniBaseActivity;

    iput-object p1, v0, Lcom/alibaba/android/ding/activity/EMiniBaseActivity;->b:Lhlp;

    .line 155
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/EMiniBaseActivity$1;->a:Lcom/alibaba/android/ding/activity/EMiniBaseActivity;

    invoke-static {v0}, Lhcn;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[EMiniBaseActivity]initEMiniView failed, activity is not alive"

    aput-object v2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 160
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/EMiniBaseActivity$1;->a:Lcom/alibaba/android/ding/activity/EMiniBaseActivity;

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/activity/EMiniBaseActivity;->a(Lcom/alibaba/android/ding/activity/EMiniBaseActivity;Z)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 164
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[EMiniBaseActivity]initEMiniView failed, initInstanceAsync failed, "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/EMiniBaseActivity$1;->a:Lcom/alibaba/android/ding/activity/EMiniBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/activity/EMiniBaseActivity;->finish()V

    .line 166
    return-void
.end method
