.class final Lfjq$2;
.super Ljava/lang/Object;
.source "LocalContactViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfjq;->a(Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;ILandroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

.field final synthetic b:Lfjq;


# direct methods
.method constructor <init>(Lfjq;Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;)V
    .locals 0
    .param p1, "this$0"    # Lfjq;

    .prologue
    .line 217
    iput-object p1, p0, Lfjq$2;->b:Lfjq;

    iput-object p2, p0, Lfjq$2;->a:Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 220
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Lfjq$2;->b:Lfjq;

    invoke-static {v1}, Lfjq;->a(Lfjq;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lfjq$2;->a:Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    const-string/jumbo v3, "phoneContacts"

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;Ljava/lang/String;)V

    .line 221
    return-void
.end method
