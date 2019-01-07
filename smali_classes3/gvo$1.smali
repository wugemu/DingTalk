.class final Lgvo$1;
.super Ljava/lang/Object;
.source "InvitationManager.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgvo;->a(Lcom/alibaba/dingtalk/sharebase/invitation/InvitationUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/wukong/im/invitation/InvitationObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/sharebase/invitation/InvitationUnit;

.field final synthetic b:Lgvo;


# direct methods
.method constructor <init>(Lgvo;Lcom/alibaba/dingtalk/sharebase/invitation/InvitationUnit;)V
    .locals 0
    .param p1, "this$0"    # Lgvo;

    .prologue
    .line 119
    iput-object p1, p0, Lgvo$1;->b:Lgvo;

    iput-object p2, p0, Lgvo$1;->a:Lcom/alibaba/dingtalk/sharebase/invitation/InvitationUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 128
    const-string/jumbo v0, "share"

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "getTaoInvitationModel error code="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", reason="

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    .line 129
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 128
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 119
    check-cast p1, Lcom/alibaba/wukong/im/invitation/InvitationObject;

    .line 1122
    iget-object v0, p0, Lgvo$1;->b:Lgvo;

    invoke-static {v0, p1}, Lgvo;->a(Lgvo;Lcom/alibaba/wukong/im/invitation/InvitationObject;)V

    .line 1123
    iget-object v0, p0, Lgvo$1;->b:Lgvo;

    iget-object v1, p0, Lgvo$1;->a:Lcom/alibaba/dingtalk/sharebase/invitation/InvitationUnit;

    invoke-static {v0, v1, p1}, Lgvo;->a(Lgvo;Lcom/alibaba/dingtalk/sharebase/invitation/InvitationUnit;Lcom/alibaba/wukong/im/invitation/InvitationObject;)V

    .line 119
    return-void
.end method
