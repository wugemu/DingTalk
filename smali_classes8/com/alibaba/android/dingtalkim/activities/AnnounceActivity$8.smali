.class final Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$8;
.super Ljava/lang/Object;
.source "AnnounceActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/im/MessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$8;->a:Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdded(Ljava/util/List;Lcom/alibaba/wukong/im/MessageListener$DataType;)V
    .locals 0
    .param p2, "type"    # Lcom/alibaba/wukong/im/MessageListener$DataType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;",
            "Lcom/alibaba/wukong/im/MessageListener$DataType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 157
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    return-void
.end method

.method public final onChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 165
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$8;->a:Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->b(Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;)Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 166
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 167
    .local v0, "m":Lcom/alibaba/wukong/im/Message;
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$8;->a:Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->b(Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;)Lcom/alibaba/wukong/im/Message;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$8;->a:Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;

    invoke-static {v2, v0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->a(Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/wukong/im/Message;

    .line 169
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$8;->a:Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->c(Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;)V

    goto :goto_0

    .line 173
    .end local v0    # "m":Lcom/alibaba/wukong/im/Message;
    :cond_1
    return-void
.end method

.method public final onRemoved(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 161
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    return-void
.end method
