.class final Lcom/alibaba/android/ding/widget/SubTaskDetailView$8;
.super Ljava/lang/Object;
.source "SubTaskDetailView.java"

# interfaces
.implements Lbht$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/widget/SubTaskDetailView;->a(JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/android/ding/widget/SubTaskDetailView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/widget/SubTaskDetailView;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/widget/SubTaskDetailView;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView$8;->b:Lcom/alibaba/android/ding/widget/SubTaskDetailView;

    iput-boolean p2, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView$8;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
    .locals 3
    .param p1, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 284
    if-nez p1, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView$8;->b:Lcom/alibaba/android/ding/widget/SubTaskDetailView;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->d(Lcom/alibaba/android/ding/widget/SubTaskDetailView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView$8;->b:Lcom/alibaba/android/ding/widget/SubTaskDetailView;

    .line 288
    invoke-static {v0}, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->d(Lcom/alibaba/android/ding/widget/SubTaskDetailView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView$8;->b:Lcom/alibaba/android/ding/widget/SubTaskDetailView;

    invoke-static {v1}, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->e(Lcom/alibaba/android/ding/widget/SubTaskDetailView;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 289
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView$8;->b:Lcom/alibaba/android/ding/widget/SubTaskDetailView;

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView$8;->a:Z

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->a(Lcom/alibaba/android/ding/widget/SubTaskDetailView;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 295
    return-void
.end method
