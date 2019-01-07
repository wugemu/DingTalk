.class final Lflt$4$2;
.super Ljava/lang/Object;
.source "FriendRequestDataManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflt$4;->onException(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lflt$4;


# direct methods
.method constructor <init>(Lflt$4;Lcma;)V
    .locals 0
    .param p1, "this$1"    # Lflt$4;

    .prologue
    .line 925
    iput-object p1, p0, Lflt$4$2;->b:Lflt$4;

    iput-object p2, p0, Lflt$4$2;->a:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 928
    invoke-static {}, Lfap;->a()Lezv;

    move-result-object v1

    iget-object v0, p0, Lflt$4$2;->b:Lflt$4;

    iget-object v0, v0, Lflt$4;->a:Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->id:J

    const/4 v4, 0x1

    iget-object v0, p0, Lflt$4$2;->a:Lcma;

    const-class v5, Lcma;

    iget-object v6, p0, Lflt$4$2;->b:Lflt$4;

    iget-object v6, v6, Lflt$4;->c:Lflt;

    .line 1060
    iget-object v6, v6, Lflt;->o:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    .line 928
    invoke-static {v0, v5, v6}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-interface {v1, v2, v3, v4, v0}, Lezv;->a(JZLcma;)V

    .line 929
    return-void
.end method
