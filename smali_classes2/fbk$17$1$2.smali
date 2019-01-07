.class final Lfbk$17$1$2;
.super Ljava/lang/Object;
.source "UserProfileRPC.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfbk$17$1;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

.field final synthetic b:Lfbk$17$1;


# direct methods
.method constructor <init>(Lfbk$17$1;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
    .locals 0
    .param p1, "this$2"    # Lfbk$17$1;

    .prologue
    .line 128
    iput-object p1, p0, Lfbk$17$1$2;->b:Lfbk$17$1;

    iput-object p2, p0, Lfbk$17$1$2;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 131
    iget-object v0, p0, Lfbk$17$1$2;->b:Lfbk$17$1;

    iget-object v0, v0, Lfbk$17$1;->f:Lfbk$17;

    iget-object v0, v0, Lfbk$17;->a:Lcma;

    iget-object v1, p0, Lfbk$17$1$2;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 132
    return-void
.end method
