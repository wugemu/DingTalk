.class final Lenc$12;
.super Lcmg;
.source "SearchAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lenc;->b(JZLcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Leov;",
        "Lcom/alibaba/android/search/model/idl/objects/PushGroupResultObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lenc;


# direct methods
.method constructor <init>(Lenc;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lenc;

    .prologue
    .line 654
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/search/model/idl/objects/PushGroupResultObject;>;"
    iput-object p1, p0, Lenc$12;->a:Lenc;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 654
    check-cast p1, Leov;

    .line 1657
    invoke-static {p1}, Lcom/alibaba/android/search/model/idl/objects/PushGroupResultObject;->fromIdl(Leov;)Lcom/alibaba/android/search/model/idl/objects/PushGroupResultObject;

    move-result-object v0

    .line 654
    return-object v0
.end method
