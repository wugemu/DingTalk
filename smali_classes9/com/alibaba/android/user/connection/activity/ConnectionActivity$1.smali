.class final Lcom/alibaba/android/user/connection/activity/ConnectionActivity$1;
.super Ljava/lang/Object;
.source "ConnectionActivity.java"

# interfaces
.implements Lffa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/connection/activity/ConnectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$1;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 217
    return-void
.end method

.method public final a(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V
    .locals 6
    .param p1, "postObject"    # Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 221
    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$1;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->a(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    iget-wide v2, p1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->postId:J

    .line 226
    .local v2, "postId":J
    iget-object v4, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$1;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->a(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 227
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;>;"
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 228
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .line 229
    .local v1, "post":Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;
    if-eqz v1, :cond_2

    iget-wide v4, v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->postId:J

    cmp-long v4, v4, v2

    if-nez v4, :cond_2

    .line 230
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 234
    .end local v1    # "post":Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;
    :cond_3
    iget-object v4, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$1;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->b(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Lfce;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 235
    iget-object v4, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$1;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->b(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Lfce;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$1;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v5}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->a(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lfce;->a(Ljava/util/List;)V

    .line 236
    iget-object v4, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$1;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->b(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Lfce;

    move-result-object v4

    invoke-virtual {v4}, Lfce;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 210
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 206
    .local p1, "posts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;>;"
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 244
    return-void
.end method
