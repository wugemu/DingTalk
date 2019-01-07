.class final Lcom/alibaba/android/user/connection/ui/CommentListView$3;
.super Lffd;
.source "CommentListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/connection/ui/CommentListView;->a(Ljava/lang/String;J)Landroid/text/SpannableString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/alibaba/android/user/connection/ui/CommentListView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/connection/ui/CommentListView;IJ)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/android/user/connection/ui/CommentListView;
    .param p2, "textColor"    # I

    .prologue
    .line 170
    iput-object p1, p0, Lcom/alibaba/android/user/connection/ui/CommentListView$3;->b:Lcom/alibaba/android/user/connection/ui/CommentListView;

    iput-wide p3, p0, Lcom/alibaba/android/user/connection/ui/CommentListView$3;->a:J

    invoke-direct {p0, p2}, Lffd;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "widget"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 173
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/android/user/connection/ui/CommentListView$3;->b:Lcom/alibaba/android/user/connection/ui/CommentListView;

    invoke-virtual {v0}, Lcom/alibaba/android/user/connection/ui/CommentListView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-wide v2, p0, Lcom/alibaba/android/user/connection/ui/CommentListView$3;->a:J

    invoke-virtual {v1, v0, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;J)V

    .line 174
    return-void
.end method
