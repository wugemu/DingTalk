.class final Lcom/alibaba/android/ding/activity/DingMembersActivity$8$2$1;
.super Ljava/lang/Object;
.source "DingMembersActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/activity/DingMembersActivity$8$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/ding/activity/DingMembersActivity$8$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingMembersActivity$8$2;Ljava/util/List;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/ding/activity/DingMembersActivity$8$2;

    .prologue
    .line 373
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingMembersActivity$8$2$1;->b:Lcom/alibaba/android/ding/activity/DingMembersActivity$8$2;

    iput-object p2, p0, Lcom/alibaba/android/ding/activity/DingMembersActivity$8$2$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 376
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMembersActivity$8$2$1;->b:Lcom/alibaba/android/ding/activity/DingMembersActivity$8$2;

    iget-object v0, v0, Lcom/alibaba/android/ding/activity/DingMembersActivity$8$2;->c:Lcom/alibaba/android/ding/activity/DingMembersActivity$8;

    iget-object v0, v0, Lcom/alibaba/android/ding/activity/DingMembersActivity$8;->a:Lcom/alibaba/android/ding/activity/DingMembersActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingMembersActivity;->h(Lcom/alibaba/android/ding/activity/DingMembersActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingMembersActivity$8$2$1;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->a(Ljava/util/List;)V

    .line 377
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMembersActivity$8$2$1;->b:Lcom/alibaba/android/ding/activity/DingMembersActivity$8$2;

    iget-object v0, v0, Lcom/alibaba/android/ding/activity/DingMembersActivity$8$2;->c:Lcom/alibaba/android/ding/activity/DingMembersActivity$8;

    iget-object v0, v0, Lcom/alibaba/android/ding/activity/DingMembersActivity$8;->a:Lcom/alibaba/android/ding/activity/DingMembersActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingMembersActivity;->m(Lcom/alibaba/android/ding/activity/DingMembersActivity;)V

    .line 378
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMembersActivity$8$2$1;->b:Lcom/alibaba/android/ding/activity/DingMembersActivity$8$2;

    iget-object v0, v0, Lcom/alibaba/android/ding/activity/DingMembersActivity$8$2;->c:Lcom/alibaba/android/ding/activity/DingMembersActivity$8;

    iget-object v0, v0, Lcom/alibaba/android/ding/activity/DingMembersActivity$8;->a:Lcom/alibaba/android/ding/activity/DingMembersActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingMembersActivity;->n(Lcom/alibaba/android/ding/activity/DingMembersActivity;)V

    .line 379
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMembersActivity$8$2$1;->b:Lcom/alibaba/android/ding/activity/DingMembersActivity$8$2;

    iget-object v0, v0, Lcom/alibaba/android/ding/activity/DingMembersActivity$8$2;->c:Lcom/alibaba/android/ding/activity/DingMembersActivity$8;

    iget-object v0, v0, Lcom/alibaba/android/ding/activity/DingMembersActivity$8;->a:Lcom/alibaba/android/ding/activity/DingMembersActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingMembersActivity;->a(Lcom/alibaba/android/ding/activity/DingMembersActivity;)Lcom/alibaba/android/ding/fragment/DingMembersFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->c()V

    .line 380
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMembersActivity$8$2$1;->b:Lcom/alibaba/android/ding/activity/DingMembersActivity$8$2;

    iget-object v0, v0, Lcom/alibaba/android/ding/activity/DingMembersActivity$8$2;->b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 381
    return-void
.end method
