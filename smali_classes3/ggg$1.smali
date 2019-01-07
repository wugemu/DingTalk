.class final Lggg$1;
.super Ljava/lang/Object;
.source "AbsRecentViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lggg;->a(Ljava/lang/String;Landroid/os/Handler;Lcom/alibaba/alimei/cspace/model/RecentOperationModel;Landroid/widget/AbsListView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lggg;


# direct methods
.method constructor <init>(Lggg;J)V
    .locals 0
    .param p1, "this$0"    # Lggg;

    .prologue
    .line 105
    iput-object p1, p0, Lggg$1;->b:Lggg;

    iput-wide p2, p0, Lggg$1;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 108
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Lggg$1;->b:Lggg;

    iget-object v1, v1, Lggg;->d:Landroid/app/Activity;

    iget-wide v2, p0, Lggg$1;->a:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;J)V

    .line 109
    return-void
.end method
