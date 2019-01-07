.class final Lfkc$1;
.super Ljava/lang/Object;
.source "MultipleDeptViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfkc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

.field final synthetic b:Lfkc;


# direct methods
.method constructor <init>(Lfkc;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V
    .locals 0
    .param p1, "this$0"    # Lfkc;

    .prologue
    .line 140
    iput-object p1, p0, Lfkc$1;->b:Lfkc;

    iput-object p2, p0, Lfkc$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

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
    .line 143
    iget-object v0, p0, Lfkc$1;->b:Lfkc;

    invoke-static {v0}, Lfkc;->a(Lfkc;)Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lfkc$1;->b:Lfkc;

    .line 1043
    iget-object v0, v0, Lfkc;->j:Landroid/widget/CheckBox;

    .line 144
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lfkc$1;->b:Lfkc;

    invoke-virtual {v0}, Lfkc;->f()V

    .line 146
    iget-object v0, p0, Lfkc$1;->b:Lfkc;

    invoke-static {v0}, Lfkc;->b(Lfkc;)Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    move-result-object v0

    iget-object v1, p0, Lfkc$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-interface {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->addChooseObject(Ljava/lang/Object;)Z

    .line 147
    iget-object v0, p0, Lfkc$1;->b:Lfkc;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lfkc;->a(Lfkc;Z)V

    .line 148
    iget-object v0, p0, Lfkc$1;->b:Lfkc;

    .line 2043
    iget-object v0, v0, Lfkc;->j:Landroid/widget/CheckBox;

    .line 148
    sget v1, Lezg$g;->checkbox_pressed:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    .line 154
    :goto_0
    iget-object v0, p0, Lfkc$1;->b:Lfkc;

    invoke-static {v0}, Lfkc;->d(Lfkc;)Lfin;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lfkc$1;->b:Lfkc;

    invoke-static {v0}, Lfkc;->e(Lfkc;)Lfin;

    move-result-object v0

    invoke-virtual {v0}, Lfin;->notifyDataSetChanged()V

    .line 158
    :cond_0
    return-void

    .line 150
    :cond_1
    iget-object v0, p0, Lfkc$1;->b:Lfkc;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lfkc;->a(Lfkc;Z)V

    .line 151
    iget-object v0, p0, Lfkc$1;->b:Lfkc;

    invoke-static {v0}, Lfkc;->c(Lfkc;)Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    move-result-object v0

    iget-object v1, p0, Lfkc$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-interface {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->removeChooseObject(Ljava/lang/Object;)Z

    .line 152
    iget-object v0, p0, Lfkc$1;->b:Lfkc;

    .line 3043
    iget-object v0, v0, Lfkc;->j:Landroid/widget/CheckBox;

    .line 152
    sget v1, Lezg$g;->checkbox_normal:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    goto :goto_0
.end method
