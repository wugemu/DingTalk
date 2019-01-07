.class final Lfij$1;
.super Ljava/lang/Object;
.source "MultipleDeptViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfij;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;ILandroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

.field final synthetic b:Lfij;


# direct methods
.method constructor <init>(Lfij;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V
    .locals 0
    .param p1, "this$0"    # Lfij;

    .prologue
    .line 102
    iput-object p1, p0, Lfij$1;->b:Lfij;

    iput-object p2, p0, Lfij$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 105
    iget-object v3, p0, Lfij$1;->b:Lfij;

    iget-object v3, v3, Lfij;->i:Lfhx;

    if-eqz v3, :cond_0

    .line 106
    iget-object v3, p0, Lfij$1;->b:Lfij;

    .line 1034
    iget-object v3, v3, Lfij;->a:Landroid/widget/CheckBox;

    .line 106
    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 107
    iget-object v3, p0, Lfij$1;->b:Lfij;

    iget-object v3, v3, Lfij;->i:Lfhx;

    iget-object v4, p0, Lfij$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-interface {v3, v4}, Lfhx;->a(Ljava/lang/Object;)Z

    move-result v0

    .line 108
    .local v0, "result":Z
    iget-object v3, p0, Lfij$1;->b:Lfij;

    .line 2034
    invoke-virtual {v3, v0}, Lfij;->d(Z)V

    .line 109
    iget-object v3, p0, Lfij$1;->b:Lfij;

    .line 3034
    invoke-virtual {v3, v0}, Lfij;->c(Z)V

    .line 110
    iget-object v3, p0, Lfij$1;->b:Lfij;

    if-nez v0, :cond_1

    :goto_0
    invoke-virtual {v3, v1}, Lfij;->b(Z)V

    .line 119
    .end local v0    # "result":Z
    :cond_0
    :goto_1
    return-void

    .restart local v0    # "result":Z
    :cond_1
    move v1, v2

    .line 110
    goto :goto_0

    .line 112
    .end local v0    # "result":Z
    :cond_2
    iget-object v3, p0, Lfij$1;->b:Lfij;

    .line 4034
    invoke-virtual {v3, v2}, Lfij;->c(Z)V

    .line 113
    iget-object v3, p0, Lfij$1;->b:Lfij;

    iget-object v3, v3, Lfij;->i:Lfhx;

    iget-object v4, p0, Lfij$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 114
    invoke-interface {v3, v4, v1}, Lfhx;->a(Ljava/lang/Object;Z)Z

    move-result v0

    .line 115
    .restart local v0    # "result":Z
    iget-object v3, p0, Lfij$1;->b:Lfij;

    if-nez v0, :cond_3

    .line 5034
    :goto_2
    invoke-virtual {v3, v1}, Lfij;->d(Z)V

    .line 116
    iget-object v1, p0, Lfij$1;->b:Lfij;

    invoke-virtual {v1, v0}, Lfij;->b(Z)V

    goto :goto_1

    :cond_3
    move v1, v2

    .line 115
    goto :goto_2
.end method
