.class final Ldjl$2$1;
.super Ljava/lang/Object;
.source "ConversationUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldjl$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldjl$2;


# direct methods
.method constructor <init>(Ldjl$2;)V
    .locals 0
    .param p1, "this$0"    # Ldjl$2;

    .prologue
    .line 1271
    iput-object p1, p0, Ldjl$2$1;->a:Ldjl$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1274
    iget-object v2, p0, Ldjl$2$1;->a:Ldjl$2;

    iget-object v2, v2, Ldjl$2;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    iget-object v3, p0, Ldjl$2$1;->a:Ldjl$2;

    iget-object v3, v3, Ldjl$2;->c:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-wide v0, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    .line 1275
    .local v0, "oid":J
    iget-object v2, p0, Ldjl$2$1;->a:Ldjl$2;

    iget-object v2, v2, Ldjl$2;->a:Landroid/app/Activity;

    iget-object v3, p0, Ldjl$2$1;->a:Ldjl$2;

    iget-object v3, v3, Ldjl$2;->d:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0, v1}, Ldjl;->a(Landroid/app/Activity;Ljava/lang/String;J)V

    .line 1276
    return-void
.end method
