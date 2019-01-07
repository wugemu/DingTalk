.class final Lcva$1;
.super Ljava/lang/Object;
.source "EncryptVoiceViewHolder.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcva;->a(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcva;


# direct methods
.method constructor <init>(Lcva;)V
    .locals 0
    .param p1, "this$0"    # Lcva;

    .prologue
    .line 79
    iput-object p1, p0, Lcva$1;->a:Lcva;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 87
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v0

    iget-object v1, p0, Lcva$1;->a:Lcva;

    invoke-static {v1}, Lcva;->a(Lcva;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V

    .line 88
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcma;)V
    .locals 2
    .param p1, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 82
    .local p2, "apiEventListener":Lcma;, "Lcma<Ljava/lang/String;>;"
    invoke-static {}, Ldjr;->a()Ldjr;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Ldjr;->a(ZLcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcma;)V

    .line 83
    return-void
.end method
