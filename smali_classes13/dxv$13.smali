.class final Ldxv$13;
.super Lcmg;
.source "GroupRobotServiceAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldxv;->g(JLcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Ldcd;",
        "Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldxv;


# direct methods
.method constructor <init>(Ldxv;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Ldxv;

    .prologue
    .line 335
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;>;"
    iput-object p1, p0, Ldxv$13;->a:Ldxv;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 335
    check-cast p1, Ldcd;

    .line 1339
    invoke-static {p1}, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->fromIdl(Ldcd;)Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    move-result-object v0

    .line 335
    return-object v0
.end method
