.class final Ldyp$2;
.super Lcmg;
.source "UserGuideAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldyp;->b(Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Ldqu;",
        "Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldyp;


# direct methods
.method constructor <init>(Ldyp;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Ldyp;

    .prologue
    .line 78
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;>;"
    iput-object p1, p0, Ldyp$2;->a:Ldyp;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 78
    check-cast p1, Ldqu;

    .line 1081
    invoke-static {p1}, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;->fromIdlModel(Ldqu;)Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;

    move-result-object v0

    .line 78
    return-object v0
.end method
