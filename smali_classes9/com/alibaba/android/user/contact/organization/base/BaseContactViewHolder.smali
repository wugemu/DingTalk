.class public abstract Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder;
.super Ljava/lang/Object;
.source "BaseContactViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected a:Landroid/app/Activity;

.field protected b:I

.field protected c:I

.field protected d:Lfin;

.field protected e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected g:Z

.field protected h:I

.field protected i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 75
    .local p0, "this":Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder;, "Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder;->a:Landroid/app/Activity;

    .line 77
    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 80
    .local p0, "this":Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder;, "Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder<TT;>;"
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder;->d()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 81
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder;->a(Landroid/view/View;)V

    .line 82
    return-object v0
.end method

.method public final a(I)V
    .locals 0
    .param p1, "chooseType"    # I

    .prologue
    .line 86
    .local p0, "this":Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder;, "Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder<TT;>;"
    iput p1, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder;->b:I

    .line 87
    return-void
.end method

.method public abstract a(Landroid/view/View;)V
.end method

.method public final a(Lfin;)V
    .locals 0
    .param p1, "adapter"    # Lfin;

    .prologue
    .line 102
    .local p0, "this":Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder;, "Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder<TT;>;"
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder;->d:Lfin;

    .line 103
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, "this":Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder;, "Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder<TT;>;"
    .local p1, "preModel":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder;->e:Ljava/lang/Object;

    .line 130
    return-void
.end method

.method public abstract a(Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Object;ILandroid/view/ViewGroup;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation
.end method

.method public final a(Z)V
    .locals 0
    .param p1, "nextTypeSame"    # Z

    .prologue
    .line 125
    .local p0, "this":Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder;, "Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder<TT;>;"
    iput-boolean p1, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder;->g:Z

    .line 126
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 94
    .local p0, "this":Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder;, "Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder<TT;>;"
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder;->a:Landroid/app/Activity;

    check-cast v0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder;->e()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->a(Ljava/lang/Class;)Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    .line 99
    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 0
    .param p1, "source"    # I

    .prologue
    .line 90
    .local p0, "this":Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder;, "Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder<TT;>;"
    iput p1, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder;->c:I

    .line 91
    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, "this":Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder;, "Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder<TT;>;"
    .local p1, "model":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder;->f:Ljava/lang/Object;

    .line 134
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 110
    .local p0, "this":Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder;, "Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder<TT;>;"
    iget v0, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder;->h:I

    return v0
.end method

.method public final c(I)V
    .locals 0
    .param p1, "totalCount"    # I

    .prologue
    .line 106
    .local p0, "this":Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder;, "Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder<TT;>;"
    iput p1, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder;->h:I

    .line 107
    return-void
.end method

.method public abstract d()I
.end method

.method public abstract e()Ljava/lang/Class;
.end method
