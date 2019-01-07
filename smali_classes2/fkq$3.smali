.class final Lfkq$3;
.super Lcmg;
.source "OrgApplyFormModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfkq;->a(JLcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;Lcma;)V
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
    .line 86
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;>;"
    iput-object p1, p0, Lfkq$3;->a:Lfkq;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 86
    check-cast p1, Lchl;

    .line 1089
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;->fromIDLModel(Lchl;)Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;

    move-result-object v0

    .line 86
    return-object v0
.end method
