.class final Lgua$1;
.super Ljava/lang/Object;
.source "RecruitVideoBaseHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgua;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;Lgud;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgua;


# direct methods
.method constructor <init>(Lgua;)V
    .locals 0
    .param p1, "this$0"    # Lgua;

    .prologue
    .line 67
    iput-object p1, p0, Lgua$1;->a:Lgua;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 70
    invoke-static {}, Lguv;->a()Lguv;

    move-result-object v0

    .line 1039
    iget v1, v0, Lguv;->a:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1040
    const/4 v1, 0x0

    iput v1, v0, Lguv;->a:I

    .line 71
    :cond_0
    iget-object v0, p0, Lgua$1;->a:Lgua;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgua;->a(Z)V

    .line 72
    return-void
.end method
