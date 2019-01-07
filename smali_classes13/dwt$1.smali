.class final Ldwt$1;
.super Ljava/lang/Object;
.source "RecruitmentExtraInfoFetcher.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldwt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldwt;


# direct methods
.method constructor <init>(Ldwt;)V
    .locals 0
    .param p1, "this$0"    # Ldwt;

    .prologue
    .line 217
    iput-object p1, p0, Ldwt$1;->a:Ldwt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 220
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 231
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 222
    :pswitch_0
    iget-object v1, p0, Ldwt$1;->a:Ldwt;

    .line 1040
    invoke-virtual {v1}, Ldwt;->a()V

    goto :goto_0

    .line 225
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/util/Set;

    if-eqz v1, :cond_0

    .line 226
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    .line 227
    .local v0, "removeUidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    iget-object v1, p0, Ldwt$1;->a:Ldwt;

    .line 2245
    iget-object v2, v1, Ldwt;->d:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2246
    iget-object v1, v1, Ldwt;->d:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 220
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
