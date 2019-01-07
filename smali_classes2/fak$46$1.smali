.class final Lfak$46$1;
.super Ljava/lang/Object;
.source "ContactAPIImpl.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfak$46;
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
        "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;

.field final synthetic b:Lfak$46;


# direct methods
.method constructor <init>(Lfak$46;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;)V
    .locals 0
    .param p1, "this$1"    # Lfak$46;

    .prologue
    .line 240
    iput-object p1, p0, Lfak$46$1;->b:Lfak$46;

    iput-object p2, p0, Lfak$46$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 240
    check-cast p1, Ljava/util/List;

    .line 1243
    iget-object v0, p0, Lfak$46$1;->b:Lfak$46;

    iget-object v0, v0, Lfak$46;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1244
    iget-object v0, p0, Lfak$46$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;

    iput-object p1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->orgNodeItemObjectList:Ljava/util/List;

    .line 1245
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lfak$46$1$1;

    invoke-direct {v1, p0}, Lfak$46$1$1;-><init>(Lfak$46$1;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 240
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 261
    iget-object v0, p0, Lfak$46$1;->b:Lfak$46;

    iget-object v0, v0, Lfak$46;->a:Lcma;

    if-eqz v0, :cond_0

    .line 262
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lfak$46$1$2;

    invoke-direct {v1, p0, p1, p2}, Lfak$46$1$2;-><init>(Lfak$46$1;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 269
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 257
    return-void
.end method
