.class final Lbov$9;
.super Lcmg;
.source "CircleAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbov;->c(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Lbpq;",
        "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;",
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
    .line 306
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;>;"
    iput-object p1, p0, Lbov$9;->a:Lbov;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 306
    check-cast p1, Lbpq;

    .line 1309
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;->fromIdl(Lbpq;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;

    move-result-object v0

    .line 306
    return-object v0
.end method
