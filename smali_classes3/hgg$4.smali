.class final Lhgg$4;
.super Lcmg;
.source "KaoQinManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhgg;->a(Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;Ljava/lang/Integer;Ljava/lang/Long;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhgg;


# direct methods
.method constructor <init>(Lhgg;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lhgg;

    .prologue
    .line 443
    .local p2, "x0":Lcma;, "Lcma<Ljava/lang/Void;>;"
    iput-object p1, p0, Lhgg$4;->a:Lhgg;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 443
    check-cast p1, Ljava/lang/Void;

    return-object p1
.end method
