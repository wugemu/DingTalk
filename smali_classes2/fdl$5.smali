.class final Lfdl$5;
.super Lcmg;
.source "CircleAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfdl;->a(Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;Lcma;)V
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
.field final synthetic a:Lfdl;


# direct methods
.method constructor <init>(Lfdl;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfdl;

    .prologue
    .line 305
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;>;"
    iput-object p1, p0, Lfdl$5;->a:Lfdl;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 305
    check-cast p1, Lfeo;

    .line 1308
    invoke-static {p1}, Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;->fromIdl(Lfeo;)Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;

    move-result-object v0

    .line 305
    return-object v0
.end method
