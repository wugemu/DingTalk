.class final Lcom/alibaba/android/dingtalk/circle/activity/CoverListActivity$2;
.super Ljava/lang/Object;
.source "CoverListActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/circle/activity/CoverListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lbpt;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/circle/activity/CoverListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/circle/activity/CoverListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/circle/activity/CoverListActivity;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CoverListActivity$2;->a:Lcom/alibaba/android/dingtalk/circle/activity/CoverListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 95
    check-cast p1, Lbpt;

    .line 1098
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CoverListActivity$2;->a:Lcom/alibaba/android/dingtalk/circle/activity/CoverListActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1099
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CoverListActivity$2;->a:Lcom/alibaba/android/dingtalk/circle/activity/CoverListActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalk/circle/activity/CoverListActivity;->a(Lcom/alibaba/android/dingtalk/circle/activity/CoverListActivity;Lbpt;)V

    .line 95
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 110
    const-string/jumbo v0, "Circle"

    const-string/jumbo v1, "CircleTag"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "load corver data error, code="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "; msg="

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 106
    return-void
.end method
