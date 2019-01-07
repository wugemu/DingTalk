.class final Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter$1;
.super Ljava/lang/Object;
.source "DentryListViewAdapter.java"

# interfaces
.implements Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter$1;->a:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;I)Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter$c;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter$1;->a:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->a(Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lgek;->a(Landroid/view/ViewGroup;ILandroid/content/Context;)Lgek;

    move-result-object v0

    return-object v0
.end method
