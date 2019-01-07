.class public final Lbim$3;
.super Ljava/lang/Object;
.source "DingMemberHolder.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

.field final synthetic b:Lbim;


# direct methods
.method public constructor <init>(Lbim;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
    .locals 0
    .param p1, "this$0"    # Lbim;

    .prologue
    .line 193
    iput-object p1, p0, Lbim$3;->b:Lbim;

    iput-object p2, p0, Lbim$3;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 196
    const/4 v1, 0x2

    iget-object v2, p0, Lbim$3;->b:Lbim;

    .line 1028
    iget-object v2, v2, Lbim;->b:Layc;

    .line 1093
    iget v2, v2, Layc;->b:I

    .line 196
    if-ne v1, v2, :cond_0

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v0, "userProfileObjectList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    iget-object v1, p0, Lbim$3;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 199
    iget-object v1, p0, Lbim$3;->b:Lbim;

    .line 2028
    iget-object v1, v1, Lbim;->a:Landroid/app/Activity;

    .line 199
    check-cast v0, Ljava/util/ArrayList;

    .line 2148
    .end local v0    # "userProfileObjectList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz v1, :cond_0

    .line 2151
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.workapp.member.change.choose.mode"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2152
    const-string/jumbo v3, "seleced_members"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 2153
    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v2}, Ldq;->a(Landroid/content/Intent;)Z

    .line 201
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
