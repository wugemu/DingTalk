.class final Lfbk$1$1$1;
.super Ljava/lang/Object;
.source "UserProfileRPC.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfbk$1$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

.field final synthetic b:Lfbk$1$1;


# direct methods
.method constructor <init>(Lfbk$1$1;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
    .locals 0
    .param p1, "this$2"    # Lfbk$1$1;

    .prologue
    .line 51
    iput-object p1, p0, Lfbk$1$1$1;->b:Lfbk$1$1;

    iput-object p2, p0, Lfbk$1$1$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

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
    .line 54
    iget-object v0, p0, Lfbk$1$1$1;->b:Lfbk$1$1;

    iget-object v0, v0, Lfbk$1$1;->a:Lfbk$1;

    iget-object v0, v0, Lfbk$1;->b:Lcma;

    iget-object v1, p0, Lfbk$1$1$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 55
    return-void
.end method
