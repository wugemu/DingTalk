.class final Lfaj$4;
.super Lcmg;
.source "CommonApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfaj;->b(Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Ljava/util/List",
        "<",
        "Lfoq;",
        ">;",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/user/model/DeviceSwitchObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfaj;


# direct methods
.method constructor <init>(Lfaj;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfaj;

    .prologue
    .line 178
    .local p2, "x0":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/user/model/DeviceSwitchObject;>;>;"
    iput-object p1, p0, Lfaj$4;->a:Lfaj;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 178
    check-cast p1, Ljava/util/List;

    .line 1182
    invoke-static {p1}, Lcom/alibaba/android/user/model/DeviceSwitchObject;->fromIdlList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 178
    return-object v0
.end method
