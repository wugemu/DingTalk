.class final Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$4;
.super Ljava/lang/Object;
.source "ConversationSearchActivity.java"

# interfaces
.implements Lcom/alibaba/android/dingtalk/search/base/SearchInterface$b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;

    .prologue
    .line 658
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;)Landroid/widget/SearchView;

    move-result-object v0

    return-object v0
.end method
