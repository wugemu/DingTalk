.class final Lcom/alibaba/android/user/contact/fragments/ConcernListFragment$2;
.super Ljava/lang/Object;
.source "ConcernListFragment.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment$2;->b:Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;

    iput-boolean p2, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment$2;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 161
    check-cast p1, Ljava/util/List;

    .line 1165
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment$2;->b:Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;

    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment$2;->a:Z

    invoke-static {v0, p1, v1}, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->a(Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;Ljava/util/List;Z)V

    .line 161
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment$2;->b:Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->f(Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;)V

    .line 176
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 171
    return-void
.end method
