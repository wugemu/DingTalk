.class final Lfjb$1;
.super Ljava/lang/Object;
.source "MultCrmContactViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfjb;->a(Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;ILandroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;

.field final synthetic b:Lfjb;


# direct methods
.method constructor <init>(Lfjb;Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;)V
    .locals 0
    .param p1, "this$0"    # Lfjb;

    .prologue
    .line 79
    iput-object p1, p0, Lfjb$1;->b:Lfjb;

    iput-object p2, p0, Lfjb$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;

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
    .line 82
    iget-object v0, p0, Lfjb$1;->b:Lfjb;

    .line 1031
    iget-boolean v0, v0, Lfjb;->q:Z

    .line 82
    if-nez v0, :cond_0

    iget-object v0, p0, Lfjb$1;->b:Lfjb;

    .line 2031
    iget-boolean v0, v0, Lfjb;->p:Z

    .line 82
    if-eqz v0, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    iget-object v0, p0, Lfjb$1;->b:Lfjb;

    iget-object v0, v0, Lfjb;->j:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    iget-object v0, p0, Lfjb$1;->b:Lfjb;

    iget-object v0, v0, Lfjb;->j:Landroid/widget/CheckBox;

    sget v1, Lezg$g;->checkbox_pressed:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    .line 87
    iget-object v0, p0, Lfjb$1;->b:Lfjb;

    invoke-static {v0}, Lfjb;->a(Lfjb;)Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    move-result-object v0

    iget-object v1, p0, Lfjb$1;->b:Lfjb;

    .line 3031
    iget-object v1, v1, Lfjb;->o:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 87
    invoke-interface {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->addChooseObject(Ljava/lang/Object;)Z

    .line 88
    iget-object v0, p0, Lfjb$1;->b:Lfjb;

    iget-object v1, p0, Lfjb$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;

    invoke-virtual {v0, v1}, Lfjb;->b(Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;)V

    goto :goto_0

    .line 90
    :cond_2
    iget-object v0, p0, Lfjb$1;->b:Lfjb;

    invoke-static {v0}, Lfjb;->b(Lfjb;)Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    move-result-object v0

    iget-object v1, p0, Lfjb$1;->b:Lfjb;

    .line 4031
    iget-object v1, v1, Lfjb;->o:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 90
    invoke-interface {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->removeChooseObject(Ljava/lang/Object;)Z

    .line 91
    iget-object v0, p0, Lfjb$1;->b:Lfjb;

    iget-object v0, v0, Lfjb;->j:Landroid/widget/CheckBox;

    sget v1, Lezg$g;->checkbox_normal:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    goto :goto_0
.end method
