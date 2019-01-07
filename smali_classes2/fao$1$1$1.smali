.class final Lfao$1$1$1;
.super Ljava/lang/Object;
.source "ExternalContactAPIImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfao$1$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfao$1$1;


# direct methods
.method constructor <init>(Lfao$1$1;)V
    .locals 0
    .param p1, "this$2"    # Lfao$1$1;

    .prologue
    .line 78
    iput-object p1, p0, Lfao$1$1$1;->a:Lfao$1$1;

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
    .line 81
    iget-object v0, p0, Lfao$1$1$1;->a:Lfao$1$1;

    iget-object v0, v0, Lfao$1$1;->b:Lfao$1;

    iget-object v0, v0, Lfao$1;->a:Lcma;

    iget-object v1, p0, Lfao$1$1$1;->a:Lfao$1$1;

    iget-object v1, v1, Lfao$1$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 82
    return-void
.end method
