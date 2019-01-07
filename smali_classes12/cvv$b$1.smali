.class final Lcvv$b$1;
.super Ljava/lang/Object;
.source "GroupAdminAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcvv$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

.field final synthetic b:Lcvv$b;


# direct methods
.method constructor <init>(Lcvv$b;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
    .locals 0
    .param p1, "this$1"    # Lcvv$b;

    .prologue
    .line 192
    iput-object p1, p0, Lcvv$b$1;->b:Lcvv$b;

    iput-object p2, p0, Lcvv$b$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

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
    .line 195
    iget-object v0, p0, Lcvv$b$1;->b:Lcvv$b;

    iget-object v0, v0, Lcvv$b;->g:Lcvv;

    invoke-static {v0}, Lcvv;->a(Lcvv;)Lcvv$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcvv$b$1;->b:Lcvv$b;

    iget-object v0, v0, Lcvv$b;->g:Lcvv;

    invoke-static {v0}, Lcvv;->a(Lcvv;)Lcvv$a;

    move-result-object v0

    iget-object v1, p0, Lcvv$b$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-interface {v0, v1}, Lcvv$a;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    .line 198
    :cond_0
    return-void
.end method
