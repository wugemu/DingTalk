.class final Lgej$1;
.super Ljava/lang/Object;
.source "DentryBaseViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgej;->a(Landroid/view/View;Lgeh;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;

.field final synthetic b:Lgeh;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;Lgeh;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lgej$1;->a:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;

    iput-object p2, p0, Lgej$1;->b:Lgeh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 95
    iget-object v0, p0, Lgej$1;->a:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;

    .line 1160
    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->a:Lged$a;

    .line 95
    iget-object v1, p0, Lgej$1;->b:Lgeh;

    invoke-interface {v0, v1}, Lged$a;->i(Lgeh;)V

    .line 96
    return-void
.end method
