.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$64;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 1186
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$64;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$64;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    const-string/jumbo v1, "plus_boss"

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->b(Ljava/lang/String;)V

    .line 1190
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$64;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->b(Z)V

    .line 1191
    return-void
.end method
