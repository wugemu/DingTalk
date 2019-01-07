.class public final Lfyd;
.super Lfya;
.source "DeptItemViewHolder.java"


# instance fields
.field public c:Z

.field public d:I

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "layoutId"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lfya;-><init>(Landroid/app/Activity;I)V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfyd;->c:Z

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lfyd;->d:I

    .line 45
    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 50
    sget v0, Lfxs$a;->tv_member_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfyd;->e:Landroid/widget/TextView;

    .line 51
    sget v0, Lfxs$a;->iv_member_delete_small_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lfyd;->f:Landroid/widget/ImageView;

    .line 52
    new-instance v0, Lfyd$1;

    invoke-direct {v0, p0}, Lfyd$1;-><init>(Lfyd;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    return-void
.end method

.method public final a(Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel;)V
    .locals 4
    .param p1, "model"    # Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 65
    instance-of v2, p1, Lfxy;

    if-nez v2, :cond_0

    .line 77
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 68
    check-cast v0, Lfxy;

    .line 69
    .local v0, "deptItemModel":Lfxy;
    iget-boolean v2, p0, Lfyd;->c:Z

    if-eqz v2, :cond_2

    .line 70
    iget-object v2, p0, Lfyd;->f:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1032
    :goto_1
    const/4 v1, 0x0

    .line 76
    .local v1, "orgDeptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    iget-object v3, p0, Lfyd;->e:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    const-string/jumbo v2, ""

    :goto_2
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 72
    .end local v1    # "orgDeptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    :cond_2
    iget-object v2, p0, Lfyd;->f:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 76
    .restart local v1    # "orgDeptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    :cond_3
    iget-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    goto :goto_2
.end method
