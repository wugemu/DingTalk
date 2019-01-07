.class final Lcom/alibaba/android/search/devtools/RecommendListActivity$a$1;
.super Ljava/lang/Object;
.source "RecommendListActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/devtools/RecommendListActivity$a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic b:Lcom/alibaba/android/search/devtools/RecommendListActivity$a;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/devtools/RecommendListActivity$a;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/search/devtools/RecommendListActivity$a;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/alibaba/android/search/devtools/RecommendListActivity$a$1;->b:Lcom/alibaba/android/search/devtools/RecommendListActivity$a;

    iput-object p2, p0, Lcom/alibaba/android/search/devtools/RecommendListActivity$a$1;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 196
    const-class v0, Lcom/alibaba/android/search/devtools/RecommendListActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/search/devtools/RecommendListActivity$a$1$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/search/devtools/RecommendListActivity$a$1$1;-><init>(Lcom/alibaba/android/search/devtools/RecommendListActivity$a$1;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 210
    const/4 v0, 0x1

    return v0
.end method
