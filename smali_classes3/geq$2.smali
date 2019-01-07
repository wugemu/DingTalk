.class final Lgeq$2;
.super Ljava/lang/Object;
.source "DentryListViewHolder.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgeq;->b(Lgeh;ILcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;

.field final synthetic b:Lgeh;

.field final synthetic c:Lgeq;


# direct methods
.method constructor <init>(Lgeq;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;Lgeh;)V
    .locals 0
    .param p1, "this$0"    # Lgeq;

    .prologue
    .line 233
    iput-object p1, p0, Lgeq$2;->c:Lgeq;

    iput-object p2, p0, Lgeq$2;->a:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;

    iput-object p3, p0, Lgeq$2;->b:Lgeh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 236
    iget-object v0, p0, Lgeq$2;->a:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;

    .line 1160
    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->a:Lged$a;

    .line 236
    iget-object v1, p0, Lgeq$2;->b:Lgeh;

    invoke-interface {v0, v1}, Lged$a;->h(Lgeh;)V

    .line 237
    const/4 v0, 0x1

    return v0
.end method
