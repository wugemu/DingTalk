.class final Lgem$5;
.super Ljava/lang/Object;
.source "DentryGridUploadViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;

.field final synthetic b:Lgeh;

.field final synthetic c:Lgem;


# direct methods
.method constructor <init>(Lgem;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;Lgeh;)V
    .locals 0
    .param p1, "this$0"    # Lgem;

    .prologue
    .line 209
    iput-object p1, p0, Lgem$5;->c:Lgem;

    iput-object p2, p0, Lgem$5;->a:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;

    iput-object p3, p0, Lgem$5;->b:Lgeh;

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
    .line 212
    iget-object v0, p0, Lgem$5;->a:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;

    .line 1160
    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->a:Lged$a;

    .line 212
    iget-object v1, p0, Lgem$5;->b:Lgeh;

    invoke-interface {v0, v1}, Lged$a;->d(Lgeh;)V

    .line 213
    return-void
.end method