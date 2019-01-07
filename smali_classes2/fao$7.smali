.class final Lfao$7;
.super Lcmg;
.source "ExternalContactAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfao;->c(JLcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Lfot;",
        "Lcom/alibaba/android/user/model/ExtContactFieldsObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfao;


# direct methods
.method constructor <init>(Lfao;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfao;

    .prologue
    .line 390
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/user/model/ExtContactFieldsObject;>;"
    iput-object p1, p0, Lfao$7;->a:Lfao;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 390
    check-cast p1, Lfot;

    .line 1393
    invoke-static {p1}, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->fromIdlModel(Lfot;)Lcom/alibaba/android/user/model/ExtContactFieldsObject;

    move-result-object v0

    .line 390
    return-object v0
.end method
