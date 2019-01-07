.class final Lcwz$2$1;
.super Ljava/lang/Object;
.source "RobotMarkdownExViewHolder.java"

# interfaces
.implements Ldoi$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcwz$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcwz$2;


# direct methods
.method constructor <init>(Lcwz$2;Landroid/view/View;)V
    .locals 0
    .param p1, "this$1"    # Lcwz$2;

    .prologue
    .line 292
    iput-object p1, p0, Lcwz$2$1;->b:Lcwz$2;

    iput-object p2, p0, Lcwz$2$1;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IZ)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "isSucceed"    # Z

    .prologue
    .line 295
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 296
    iget-object v0, p0, Lcwz$2$1;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcwz$2$1;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->t()V

    .line 300
    :cond_0
    return-void
.end method
