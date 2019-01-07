.class final Lfkz$1;
.super Ljava/lang/Object;
.source "CheckMemberAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfkz;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:Lfkz;


# direct methods
.method constructor <init>(Lfkz;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "this$0"    # Lfkz;

    .prologue
    .line 114
    iput-object p1, p0, Lfkz$1;->c:Lfkz;

    iput-object p2, p0, Lfkz$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iput-object p3, p0, Lfkz$1;->b:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 118
    iget-object v0, p0, Lfkz$1;->c:Lfkz;

    invoke-static {v0}, Lfkz;->a(Lfkz;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lfkz$1;->c:Lfkz;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0, v1}, Lfkz;->a(Lfkz;Ljava/util/Set;)Ljava/util/Set;

    .line 122
    :cond_0
    iget-object v0, p0, Lfkz$1;->c:Lfkz;

    invoke-static {v0}, Lfkz;->a(Lfkz;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lfkz$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 123
    iget-object v0, p0, Lfkz$1;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lfkz$1;->c:Lfkz;

    invoke-static {v0}, Lfkz;->a(Lfkz;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lfkz$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 129
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-object v0, p0, Lfkz$1;->b:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lfkz$1;->c:Lfkz;

    invoke-static {v0}, Lfkz;->a(Lfkz;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lfkz$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
