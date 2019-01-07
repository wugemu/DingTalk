.class final Lcom/alibaba/android/user/channel/ChannelApplyActivity$a$1;
.super Ljava/lang/Object;
.source "ChannelApplyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/channel/ChannelApplyActivity$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/alibaba/android/user/channel/ChannelApplyActivity$a;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/channel/ChannelApplyActivity$a;Ljava/util/ArrayList;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/channel/ChannelApplyActivity$a;

    .prologue
    .line 364
    iput-object p1, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$a$1;->c:Lcom/alibaba/android/user/channel/ChannelApplyActivity$a;

    iput-object p2, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$a$1;->a:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$a$1;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 367
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$a$1;->c:Lcom/alibaba/android/user/channel/ChannelApplyActivity$a;

    .line 1334
    iget-object v0, v0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$a;->b:Lcom/alibaba/android/user/channel/ChannelApplyActivity;

    .line 367
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$a$1;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$a$1;->c:Lcom/alibaba/android/user/channel/ChannelApplyActivity$a;

    .line 2334
    iget-object v0, v0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$a;->b:Lcom/alibaba/android/user/channel/ChannelApplyActivity;

    .line 368
    invoke-static {v0}, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->a(Lcom/alibaba/android/user/channel/ChannelApplyActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$a$1;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$a$1;->c:Lcom/alibaba/android/user/channel/ChannelApplyActivity$a;

    .line 3334
    iget-object v0, v0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$a;->b:Lcom/alibaba/android/user/channel/ChannelApplyActivity;

    .line 370
    if-eqz v0, :cond_1

    .line 371
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$a$1;->c:Lcom/alibaba/android/user/channel/ChannelApplyActivity$a;

    .line 4334
    iget-object v0, v0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$a;->b:Lcom/alibaba/android/user/channel/ChannelApplyActivity;

    .line 371
    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$a$1;->c:Lcom/alibaba/android/user/channel/ChannelApplyActivity$a;

    .line 5334
    iget-object v1, v1, Lcom/alibaba/android/user/channel/ChannelApplyActivity$a;->a:Lcom/alibaba/android/user/channel/model/ChannelApplyObjectList;

    .line 371
    iget-wide v2, v1, Lcom/alibaba/android/user/channel/model/ChannelApplyObjectList;->nextCursor:J

    invoke-static {v0, v2, v3}, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->a(Lcom/alibaba/android/user/channel/ChannelApplyActivity;J)J

    .line 372
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$a$1;->c:Lcom/alibaba/android/user/channel/ChannelApplyActivity$a;

    .line 6334
    iget-object v0, v0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$a;->b:Lcom/alibaba/android/user/channel/ChannelApplyActivity;

    .line 372
    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$a$1;->c:Lcom/alibaba/android/user/channel/ChannelApplyActivity$a;

    .line 7334
    iget-object v1, v1, Lcom/alibaba/android/user/channel/ChannelApplyActivity$a;->a:Lcom/alibaba/android/user/channel/model/ChannelApplyObjectList;

    .line 372
    iget-boolean v1, v1, Lcom/alibaba/android/user/channel/model/ChannelApplyObjectList;->hasMore:Z

    invoke-static {v0, v1}, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->b(Lcom/alibaba/android/user/channel/ChannelApplyActivity;Z)Z

    .line 374
    :cond_1
    invoke-static {}, Lfbj;->a()Lfbj;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$a$1;->b:Ljava/util/List;

    new-instance v2, Lcom/alibaba/android/user/channel/ChannelApplyActivity$a$1$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/channel/ChannelApplyActivity$a$1$1;-><init>(Lcom/alibaba/android/user/channel/ChannelApplyActivity$a$1;)V

    invoke-virtual {v0, v1, v2}, Lfbj;->b(Ljava/util/List;Lcma;)V

    .line 400
    return-void
.end method
