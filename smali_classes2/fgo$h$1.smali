.class final Lfgo$h$1;
.super Ljava/lang/Object;
.source "NewRequestAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfgo$h;->a(ILfgm;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

.field final synthetic b:Lfgo$h;


# direct methods
.method constructor <init>(Lfgo$h;Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;)V
    .locals 0
    .param p1, "this$0"    # Lfgo$h;

    .prologue
    .line 436
    iput-object p1, p0, Lfgo$h$1;->b:Lfgo$h;

    iput-object p2, p0, Lfgo$h$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 439
    iget-object v0, p0, Lfgo$h$1;->b:Lfgo$h;

    .line 1241
    iget-object v0, v0, Lfgo$h;->b:Landroid/app/Activity;

    .line 439
    iget-object v1, p0, Lfgo$h$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    const-string/jumbo v2, "newFriendList"

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;Ljava/lang/String;)V

    .line 440
    return-void
.end method
