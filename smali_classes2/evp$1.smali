.class final Levp$1;
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
    .line 152
    iput-object p1, p0, Levp$1;->a:Levp;

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
    .line 155
    invoke-static {}, Levp;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Close member list panel"

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "videoconf_conf_quit_memlist_panel_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Levp$1;->a:Levp;

    invoke-static {v0}, Levp;->a(Levp;)V

    .line 159
    return-void
.end method
