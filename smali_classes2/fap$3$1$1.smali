.class final Lfap$3$1$1;
.super Ljava/lang/Object;
.source "FriendAPIImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfap$3$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfap$3$1;


# direct methods
.method constructor <init>(Lfap$3$1;)V
    .locals 0
    .param p1, "this$2"    # Lfap$3$1;

    .prologue
    .line 290
    iput-object p1, p0, Lfap$3$1$1;->a:Lfap$3$1;

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
    .line 293
    iget-object v0, p0, Lfap$3$1$1;->a:Lfap$3$1;

    iget-object v0, v0, Lfap$3$1;->b:Lfap$3;

    iget-object v0, v0, Lfap$3;->a:Lcma;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lfap$3$1$1;->a:Lfap$3$1;

    iget-object v0, v0, Lfap$3$1;->b:Lfap$3;

    iget-object v0, v0, Lfap$3;->a:Lcma;

    iget-object v1, p0, Lfap$3$1$1;->a:Lfap$3$1;

    iget-object v1, v1, Lfap$3$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObjectList;

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 296
    :cond_0
    return-void
.end method
