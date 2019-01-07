.class final Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$7$2;
.super Landroid/util/SparseArray;
.source "CsDentryListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/SparseArray",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$7;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$7;)V
    .locals 2
    .param p1, "this$1"    # Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$7;

    .prologue
    .line 421
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$7$2;->a:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$7;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    .line 422
    const/16 v0, 0x1392

    const-string/jumbo v1, "space_files_new_word"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$7$2;->put(ILjava/lang/Object;)V

    .line 423
    const/16 v0, 0x139c

    const-string/jumbo v1, "space_files_new_exel"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$7$2;->put(ILjava/lang/Object;)V

    .line 424
    const/16 v0, 0x13a6

    const-string/jumbo v1, "space_files_new_ppt"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$7$2;->put(ILjava/lang/Object;)V

    .line 425
    const/16 v0, 0x13b0

    const-string/jumbo v1, "space_createdoc_alidoc_click"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$7$2;->put(ILjava/lang/Object;)V

    .line 426
    const/16 v0, 0x13ba

    const-string/jumbo v1, "space_createsheet_alidoc_click"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$7$2;->put(ILjava/lang/Object;)V

    .line 427
    return-void
.end method
