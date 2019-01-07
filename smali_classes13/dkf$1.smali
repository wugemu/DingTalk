.class final Ldkf$1;
.super Ljava/lang/Object;
.source "MultiToTaskUtil.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldkf;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Lcom/alibaba/wukong/idl/im/models/ContentModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:J


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;J)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Ldkf$1;->a:Landroid/app/Activity;

    iput-object p2, p0, Ldkf$1;->b:Lcom/alibaba/wukong/im/Conversation;

    iput-object p3, p0, Ldkf$1;->c:Ljava/util/List;

    iput-wide p4, p0, Ldkf$1;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 76
    const-string/jumbo v0, "im"

    invoke-static {}, Ldkf;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[multiToTask]failed: code:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", reason:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    .line 77
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Ldkf$1;->a:Landroid/app/Activity;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 79
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 68
    move-object v3, p1

    check-cast v3, Ljava/util/Map;

    .line 1071
    iget-object v0, p0, Ldkf$1;->a:Landroid/app/Activity;

    iget-object v1, p0, Ldkf$1;->b:Lcom/alibaba/wukong/im/Conversation;

    iget-object v2, p0, Ldkf$1;->c:Ljava/util/List;

    iget-wide v4, p0, Ldkf$1;->d:J

    invoke-static/range {v0 .. v5}, Ldkf;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;Ljava/util/Map;J)V

    .line 68
    return-void
.end method
