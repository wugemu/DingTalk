.class final Lfdm$3;
.super Lcmg;
.source "ConnectionAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfdm;->b(Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Lfeo;",
        "Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfdm;


# direct methods
.method constructor <init>(Lfdm;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfdm;

    .prologue
    .line 81
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;>;"
    iput-object p1, p0, Lfdm$3;->a:Lfdm;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 81
    check-cast p1, Lfeo;

    .line 1084
    invoke-static {p1}, Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;->fromIdl(Lfeo;)Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;

    move-result-object v0

    .line 81
    return-object v0
.end method
