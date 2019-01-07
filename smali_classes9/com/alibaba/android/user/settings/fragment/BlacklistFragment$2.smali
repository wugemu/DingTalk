.class final Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$2;
.super Ljava/lang/Object;
.source "BlacklistFragment.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->a(Z)V
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

.field final synthetic b:Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$2;->b:Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    iput-boolean p2, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$2;->a:Z

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
    .line 151
    check-cast p1, Ljava/util/List;

    .line 1155
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$2;->b:Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    iget-boolean v1, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$2;->a:Z

    invoke-static {v0, p1, v1}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->a(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;Ljava/util/List;Z)V

    .line 151
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$2;->b:Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->f(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;)V

    .line 166
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 161
    return-void
.end method
