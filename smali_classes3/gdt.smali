.class public final Lgdt;
.super Ljava/lang/Object;
.source "DentryListActionBarMenu.java"


# instance fields
.field public final a:Lgdu$a;

.field public final b:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListActivity;

.field public final c:Landroid/content/Context;

.field public d:I

.field public e:Z

.field public f:Z

.field public g:Lfzx$a;

.field public h:Lfzx$a;

.field public i:Landroid/widget/ListPopupWindow;

.field public j:Lfzx;

.field public k:Z

.field public l:Z


# direct methods
.method public constructor <init>(Lgdu$a;Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListActivity;)V
    .locals 1
    .param p1, "presenter"    # Lgdu$a;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "activity"    # Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {p1}, Lgqb;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgdu$a;

    iput-object v0, p0, Lgdt;->a:Lgdu$a;

    .line 61
    invoke-static {p2}, Lgqb;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lgdt;->c:Landroid/content/Context;

    .line 62
    invoke-static {p3}, Lgqb;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListActivity;

    iput-object v0, p0, Lgdt;->b:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListActivity;

    .line 63
    return-void
.end method
