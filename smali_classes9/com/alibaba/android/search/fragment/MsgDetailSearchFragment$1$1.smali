.class final Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment$1$1;
.super Ljava/lang/Object;
.source "MsgDetailSearchFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic b:Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment$1;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment$1;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment$1$1;->b:Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment$1;

    iput-object p2, p0, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment$1$1;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 130
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment$1$1;->b:Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment$1;

    iget-object v0, v0, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment$1$1;->a:Lcom/alibaba/wukong/im/Conversation;

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment$1$1;->b:Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment$1;

    iget-object v2, v2, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;

    iget-object v2, v2, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;->c:Landroid/widget/ListView;

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;->a(Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;Lcom/alibaba/wukong/im/Conversation;Landroid/view/View;)V

    .line 131
    return-void
.end method
