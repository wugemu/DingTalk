.class final Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity$1;
.super Liak;
.source "CategoryBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity;

    invoke-direct {p0}, Liak;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 65
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity;->a(Ljava/util/List;)V

    .line 68
    :cond_0
    return-void
.end method
