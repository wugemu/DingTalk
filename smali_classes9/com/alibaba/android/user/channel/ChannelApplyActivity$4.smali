.class final Lcom/alibaba/android/user/channel/ChannelApplyActivity$4;
.super Ljava/lang/Object;
.source "ChannelApplyActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/channel/ChannelApplyActivity;->a(Z)V
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
        "Lfoe;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/android/user/channel/ChannelApplyActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/channel/ChannelApplyActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/channel/ChannelApplyActivity;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$4;->b:Lcom/alibaba/android/user/channel/ChannelApplyActivity;

    iput-boolean p2, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$4;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 212
    check-cast p1, Lfoe;

    .line 1215
    iget-boolean v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$4;->a:Z

    if-nez v0, :cond_0

    .line 1216
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$4;->b:Lcom/alibaba/android/user/channel/ChannelApplyActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->a(Lcom/alibaba/android/user/channel/ChannelApplyActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1218
    :cond_0
    invoke-static {p1}, Lcom/alibaba/android/user/channel/model/ChannelApplyObjectList;->fromIdl(Lfoe;)Lcom/alibaba/android/user/channel/model/ChannelApplyObjectList;

    move-result-object v0

    .line 1219
    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$4;->b:Lcom/alibaba/android/user/channel/ChannelApplyActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->i(Lcom/alibaba/android/user/channel/ChannelApplyActivity;)Lcom/alibaba/android/user/channel/ChannelApplyActivity$a;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1220
    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$4;->b:Lcom/alibaba/android/user/channel/ChannelApplyActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->i(Lcom/alibaba/android/user/channel/ChannelApplyActivity;)Lcom/alibaba/android/user/channel/ChannelApplyActivity$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/user/channel/ChannelApplyActivity$a;->a()V

    .line 1222
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$4;->b:Lcom/alibaba/android/user/channel/ChannelApplyActivity;

    new-instance v2, Lcom/alibaba/android/user/channel/ChannelApplyActivity$a;

    iget-object v3, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$4;->b:Lcom/alibaba/android/user/channel/ChannelApplyActivity;

    invoke-direct {v2, v0, v3}, Lcom/alibaba/android/user/channel/ChannelApplyActivity$a;-><init>(Lcom/alibaba/android/user/channel/model/ChannelApplyObjectList;Lcom/alibaba/android/user/channel/ChannelApplyActivity;)V

    invoke-static {v1, v2}, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->a(Lcom/alibaba/android/user/channel/ChannelApplyActivity;Lcom/alibaba/android/user/channel/ChannelApplyActivity$a;)Lcom/alibaba/android/user/channel/ChannelApplyActivity$a;

    .line 1224
    const-class v0, Lcom/alibaba/android/user/channel/ChannelApplyActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$4;->b:Lcom/alibaba/android/user/channel/ChannelApplyActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->i(Lcom/alibaba/android/user/channel/ChannelApplyActivity;)Lcom/alibaba/android/user/channel/ChannelApplyActivity$a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 212
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 293
    iget-boolean v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$4;->a:Z

    if-nez v0, :cond_0

    .line 294
    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$4;->b:Lcom/alibaba/android/user/channel/ChannelApplyActivity;

    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$4;->b:Lcom/alibaba/android/user/channel/ChannelApplyActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->j(Lcom/alibaba/android/user/channel/ChannelApplyActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p2

    :goto_0
    invoke-static {v1, v0}, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->a(Lcom/alibaba/android/user/channel/ChannelApplyActivity;Ljava/lang/String;)V

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$4;->b:Lcom/alibaba/android/user/channel/ChannelApplyActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->j(Lcom/alibaba/android/user/channel/ChannelApplyActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 297
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    :cond_1
    return-void

    .line 294
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$4;->b:Lcom/alibaba/android/user/channel/ChannelApplyActivity;

    sget v2, Lezg$l;->load_error:I

    invoke-virtual {v0, v2}, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 289
    return-void
.end method
