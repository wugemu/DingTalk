.class final Lfdm$4;
.super Lcmg;
.source "ConnectionAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfdm;->a(Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Lfen;",
        "Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;",
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
    .line 98
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;>;"
    iput-object p1, p0, Lfdm$4;->a:Lfdm;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 98
    check-cast p1, Lfen;

    .line 1101
    invoke-static {p1}, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->fromIdl(Lfen;)Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    move-result-object v0

    .line 98
    return-object v0
.end method
