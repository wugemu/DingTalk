.class final Laym$1;
.super Ljava/lang/Object;
.source "SelectUserAdapter.java"

# interfaces
.implements Laym$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laym;-><init>(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laym;


# direct methods
.method constructor <init>(Laym;)V
    .locals 0
    .param p1, "this$0"    # Laym;

    .prologue
    .line 47
    iput-object p1, p0, Laym$1;->a:Laym;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V
    .locals 1
    .param p1, "userIdentityObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .prologue
    .line 50
    iget-object v0, p0, Laym$1;->a:Laym;

    invoke-static {v0}, Laym;->a(Laym;)Laym$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Laym$1;->a:Laym;

    invoke-static {v0}, Laym;->a(Laym;)Laym$a;

    move-result-object v0

    invoke-interface {v0, p1}, Laym$a;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    .line 53
    :cond_0
    return-void
.end method

.method public final b(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V
    .locals 1
    .param p1, "userIdentityObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .prologue
    .line 57
    iget-object v0, p0, Laym$1;->a:Laym;

    invoke-static {v0}, Laym;->a(Laym;)Laym$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Laym$1;->a:Laym;

    invoke-static {v0}, Laym;->a(Laym;)Laym$a;

    move-result-object v0

    invoke-interface {v0, p1}, Laym$a;->b(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    .line 60
    :cond_0
    return-void
.end method

.method public final c(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V
    .locals 1
    .param p1, "userIdentityObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .prologue
    .line 64
    iget-object v0, p0, Laym$1;->a:Laym;

    invoke-static {v0, p1}, Laym;->a(Laym;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 65
    iget-object v0, p0, Laym$1;->a:Laym;

    invoke-static {v0}, Laym;->a(Laym;)Laym$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Laym$1;->a:Laym;

    invoke-static {v0}, Laym;->a(Laym;)Laym$a;

    move-result-object v0

    invoke-interface {v0, p1}, Laym$a;->c(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    .line 68
    :cond_0
    iget-object v0, p0, Laym$1;->a:Laym;

    invoke-virtual {v0}, Laym;->notifyDataSetChanged()V

    .line 69
    return-void
.end method
