.class final Lbov$13;
.super Lcmg;
.source "CircleAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbov;->a(Ljava/lang/Long;Ljava/lang/String;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Lbpp;",
        "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbov;


# direct methods
.method constructor <init>(Lbov;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lbov;

    .prologue
    .line 117
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;>;"
    iput-object p1, p0, Lbov$13;->a:Lbov;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 117
    check-cast p1, Lbpp;

    .line 1120
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->fromIdl(Lbpp;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    move-result-object v0

    .line 117
    return-object v0
.end method