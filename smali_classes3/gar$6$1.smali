.class final Lgar$6$1;
.super Ljava/lang/Object;
.source "FavoriteNavigator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgar$6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Boolean;

.field final synthetic b:Lgar$6;


# direct methods
.method constructor <init>(Lgar$6;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "this$0"    # Lgar$6;

    .prologue
    .line 529
    iput-object p1, p0, Lgar$6$1;->b:Lgar$6;

    iput-object p2, p0, Lgar$6$1;->a:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 532
    iget-object v0, p0, Lgar$6$1;->b:Lgar$6;

    iget-object v0, v0, Lgar$6;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 533
    iget-object v0, p0, Lgar$6$1;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgar$6$1;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    iget-object v1, p0, Lgar$6$1;->b:Lgar$6;

    iget-object v1, v1, Lgar$6;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    const/4 v2, 0x0

    iget-object v3, p0, Lgar$6$1;->b:Lgar$6;

    iget-object v3, v3, Lgar$6;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 536
    :cond_0
    return-void
.end method
