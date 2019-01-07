.class final Lfgn$8;
.super Ljava/lang/Object;
.source "JoinGroupRequestAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfgn;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;

.field final synthetic b:Lfgn;


# direct methods
.method constructor <init>(Lfgn;Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;)V
    .locals 0
    .param p1, "this$0"    # Lfgn;

    .prologue
    .line 322
    iput-object p1, p0, Lfgn$8;->b:Lfgn;

    iput-object p2, p0, Lfgn$8;->a:Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;

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
    .line 325
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lfgn$8;->b:Lfgn;

    invoke-static {v1}, Lfgn;->b(Lfgn;)Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    .line 326
    invoke-static {}, Lflz;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lfgn$8$1;

    invoke-direct {v2, p0}, Lfgn$8$1;-><init>(Lfgn$8;)V

    .line 325
    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 333
    return-void
.end method
