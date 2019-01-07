.class public abstract Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder;
.super Ljava/lang/Object;
.source "BaseViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;
    }
.end annotation


# instance fields
.field public e:Landroid/app/Activity;

.field protected f:Z

.field protected g:I

.field public h:Lfhz;

.field public i:Lfhx;

.field protected j:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder;->e:Landroid/app/Activity;

    .line 60
    new-instance v0, Lfid;

    invoke-direct {v0}, Lfid;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder;->h:Lfhz;

    .line 61
    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 64
    iget-object v1, p0, Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder;->e:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder;->c()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 65
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder;->a(Landroid/view/View;)V

    .line 66
    return-object v0
.end method

.method public final a(I)V
    .locals 0
    .param p1, "totalCount"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder;->g:I

    .line 71
    return-void
.end method

.method public abstract a(Landroid/view/View;)V
.end method

.method public abstract a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V
.end method

.method public abstract a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;ILandroid/view/ViewGroup;)V
.end method

.method public final a(Lfhx;)V
    .locals 0
    .param p1, "chooseControl"    # Lfhx;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder;->i:Lfhx;

    .line 91
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .param p1, "nextTypeSame"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder;->f:Z

    .line 87
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder;->g:I

    return v0
.end method

.method public final b(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V
    .locals 0
    .param p1, "node"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder;->j:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 95
    return-void
.end method

.method public final b(Z)V
    .locals 2
    .param p1, "isRemove"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 98
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.contact.list.change"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "item_remove"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 100
    iget-object v1, p0, Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder;->e:Landroid/app/Activity;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 101
    return-void
.end method

.method public abstract c()I
.end method
