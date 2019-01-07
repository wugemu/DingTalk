.class final Lcom/alibaba/android/search/devtools/RecommendListActivity$a$1$1;
.super Ljava/lang/Object;
.source "RecommendListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/devtools/RecommendListActivity$a$1;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/devtools/RecommendListActivity$a$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/devtools/RecommendListActivity$a$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/search/devtools/RecommendListActivity$a$1;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/alibaba/android/search/devtools/RecommendListActivity$a$1$1;->a:Lcom/alibaba/android/search/devtools/RecommendListActivity$a$1;

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
    .line 199
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v1, "removeList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;>;"
    new-instance v0, Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;

    invoke-direct {v0}, Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;-><init>()V

    .line 201
    .local v0, "groupIntimacyPushObject":Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;
    iget-object v2, p0, Lcom/alibaba/android/search/devtools/RecommendListActivity$a$1$1;->a:Lcom/alibaba/android/search/devtools/RecommendListActivity$a$1;

    iget-object v2, v2, Lcom/alibaba/android/search/devtools/RecommendListActivity$a$1;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;->cid:Ljava/lang/String;

    .line 202
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v2, p0, Lcom/alibaba/android/search/devtools/RecommendListActivity$a$1$1;->a:Lcom/alibaba/android/search/devtools/RecommendListActivity$a$1;

    iget-object v2, v2, Lcom/alibaba/android/search/devtools/RecommendListActivity$a$1;->b:Lcom/alibaba/android/search/devtools/RecommendListActivity$a;

    iget-object v2, v2, Lcom/alibaba/android/search/devtools/RecommendListActivity$a;->c:Lcom/alibaba/android/search/devtools/RecommendListActivity;

    invoke-static {v2}, Lcom/alibaba/android/search/devtools/RecommendListActivity;->e(Lcom/alibaba/android/search/devtools/RecommendListActivity;)Lesp;

    move-result-object v2

    invoke-virtual {v2, v1}, Lesp;->a(Ljava/util/List;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 204
    const-string/jumbo v2, "\u5220\u9664\u6210\u529f"

    invoke-static {v2}, Lcms;->a(Ljava/lang/String;)V

    .line 205
    iget-object v2, p0, Lcom/alibaba/android/search/devtools/RecommendListActivity$a$1$1;->a:Lcom/alibaba/android/search/devtools/RecommendListActivity$a$1;

    iget-object v2, v2, Lcom/alibaba/android/search/devtools/RecommendListActivity$a$1;->b:Lcom/alibaba/android/search/devtools/RecommendListActivity$a;

    iget-object v2, v2, Lcom/alibaba/android/search/devtools/RecommendListActivity$a;->c:Lcom/alibaba/android/search/devtools/RecommendListActivity;

    invoke-static {v2}, Lcom/alibaba/android/search/devtools/RecommendListActivity;->b(Lcom/alibaba/android/search/devtools/RecommendListActivity;)V

    .line 207
    :cond_0
    return-void
.end method
