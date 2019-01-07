.class final Lgen$1;
.super Ljava/lang/Object;
.source "DentryGridViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;

.field final synthetic b:Lgeh;

.field final synthetic c:Lgen;


# direct methods
.method constructor <init>(Lgen;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;Lgeh;)V
    .locals 0
    .param p1, "this$0"    # Lgen;

    .prologue
    .line 89
    iput-object p1, p0, Lgen$1;->c:Lgen;

    iput-object p2, p0, Lgen$1;->a:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;

    iput-object p3, p0, Lgen$1;->b:Lgeh;

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
    .line 92
    iget-object v0, p0, Lgen$1;->a:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;

    .line 1160
    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->a:Lged$a;

    .line 92
    iget-object v1, p0, Lgen$1;->b:Lgeh;

    invoke-interface {v0, v1}, Lged$a;->g(Lgeh;)V

    .line 93
    return-void
.end method
