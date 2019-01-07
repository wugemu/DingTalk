.class final Ldrw$3;
.super Ljava/lang/Object;
.source "PublicAccountMenuManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldrw;


# direct methods
.method constructor <init>(Ldrw;)V
    .locals 0
    .param p1, "this$0"    # Ldrw;

    .prologue
    .line 280
    iput-object p1, p0, Ldrw$3;->a:Ldrw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 283
    iget-object v0, p0, Ldrw$3;->a:Ldrw;

    .line 1049
    iget-object v0, v0, Ldrw;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    .line 283
    if-eqz v0, :cond_0

    iget-object v0, p0, Ldrw$3;->a:Ldrw;

    .line 2049
    iget-object v0, v0, Ldrw;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    .line 283
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->N()Ldrk;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Ldrw$3;->a:Ldrw;

    .line 3049
    iget-object v0, v0, Ldrw;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    .line 284
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->N()Ldrk;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ldrk;->b(Z)V

    .line 287
    :cond_0
    return-void
.end method
