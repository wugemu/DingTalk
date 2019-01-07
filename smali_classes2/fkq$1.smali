.class final Lfkq$1;
.super Lcmg;
.source "OrgApplyFormModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfkq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Lchl;",
        "Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfkq;


# direct methods
.method constructor <init>(Lfkq;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfkq;

    .prologue
    .line 45
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;>;"
    iput-object p1, p0, Lfkq$1;->a:Lfkq;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 45
    check-cast p1, Lchl;

    .line 1048
    const-string/jumbo v0, "OrgApplyFormModel"

    const-string/jumbo v1, "loadForm: convertDo: Data load complete. Start converting."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1049
    iget-object v0, p0, Lfkq$1;->a:Lfkq;

    invoke-static {p1}, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;->fromIDLModel(Lchl;)Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;

    move-result-object v1

    invoke-static {v0, v1}, Lfkq;->a(Lfkq;Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;)Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;

    .line 1050
    iget-object v0, p0, Lfkq$1;->a:Lfkq;

    invoke-static {v0}, Lfkq;->a(Lfkq;)Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;

    move-result-object v0

    .line 45
    return-object v0
.end method
