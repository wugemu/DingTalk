.class final Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$13;
.super Ljava/lang/Object;
.source "ConversationSearchActivity.java"

# interfaces
.implements Lgd$d;


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
    .line 606
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$13;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$13;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->finish()V

    .line 615
    const/4 v0, 0x1

    return v0
.end method
