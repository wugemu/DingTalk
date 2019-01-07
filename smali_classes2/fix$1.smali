.class final Lfix$1;
.super Ljava/lang/Object;
.source "MultiCommonViewHolder.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfix;->a(Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;ILandroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfix;


# direct methods
.method constructor <init>(Lfix;)V
    .locals 0
    .param p1, "this$0"    # Lfix;

    .prologue
    .line 58
    iput-object p1, p0, Lfix$1;->a:Lfix;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 61
    if-eqz p2, :cond_1

    .line 62
    iget-object v0, p0, Lfix$1;->a:Lfix;

    invoke-static {v0}, Lfix;->a(Lfix;)Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    move-result-object v0

    iget-object v1, p0, Lfix$1;->a:Lfix;

    .line 1029
    iget-object v1, v1, Lfix;->k:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 62
    invoke-interface {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->addChooseObject(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v0, p0, Lfix$1;->a:Lfix;

    invoke-static {v0}, Lfix;->b(Lfix;)Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    move-result-object v0

    iget-object v1, p0, Lfix$1;->a:Lfix;

    .line 2029
    iget-object v1, v1, Lfix;->k:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 66
    invoke-interface {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->removeChooseObject(Ljava/lang/Object;)Z

    goto :goto_0
.end method
