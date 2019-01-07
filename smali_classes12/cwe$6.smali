.class final Lcwe$6;
.super Ljava/lang/Object;
.source "MemberAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcwe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldqw;

.field final synthetic b:Lcwe;


# direct methods
.method constructor <init>(Lcwe;Ldqw;)V
    .locals 0
    .param p1, "this$0"    # Lcwe;

    .prologue
    .line 648
    iput-object p1, p0, Lcwe$6;->b:Lcwe;

    iput-object p2, p0, Lcwe$6;->a:Ldqw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 652
    iget-object v0, p0, Lcwe$6;->b:Lcwe;

    invoke-static {v0}, Lcwe;->b(Lcwe;)Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p0, Lcwe$6;->b:Lcwe;

    invoke-static {v0}, Lcwe;->b(Lcwe;)Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$a;

    move-result-object v0

    iget-object v1, p0, Lcwe$6;->a:Ldqw;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$a;->c(Ldqw;)V

    .line 655
    :cond_0
    return-void
.end method
