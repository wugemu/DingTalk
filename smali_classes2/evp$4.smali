.class final Levp$4;
.super Ljava/lang/Object;
.source "TeleVideoMemberListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Levp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Levp;


# direct methods
.method constructor <init>(Levp;)V
    .locals 0
    .param p1, "this$0"    # Levp;

    .prologue
    .line 203
    iput-object p1, p0, Levp$4;->a:Levp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 206
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "videoconf_conf_memlist_end_conf_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Levp$4;->a:Levp;

    sget v1, Leuj$l;->dt_conference_video_terminate_tip:I

    invoke-static {v0, v1}, Levp;->a(Levp;I)V

    .line 208
    return-void
.end method
