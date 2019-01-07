.class final Lenc$a$2;
.super Lcmg;
.source "SearchAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lenc$a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Leoy;",
        "Lcom/alibaba/android/search/model/idl/objects/PushUserResultExObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lenc$a;


# direct methods
.method constructor <init>(Lenc$a;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lenc$a;

    .prologue
    .line 1300
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/search/model/idl/objects/PushUserResultExObject;>;"
    iput-object p1, p0, Lenc$a$2;->a:Lenc$a;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1300
    check-cast p1, Leoy;

    .line 2303
    invoke-static {p1}, Lcom/alibaba/android/search/model/idl/objects/PushUserResultExObject;->fromIdl(Leoy;)Lcom/alibaba/android/search/model/idl/objects/PushUserResultExObject;

    move-result-object v0

    .line 1300
    return-object v0
.end method
