.class final Lfak$44;
.super Lcmg;
.source "ContactAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfak;->b(JJILcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Lfpe;",
        "Lcom/alibaba/android/user/model/OrgEmpMobileObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfak;


# direct methods
.method constructor <init>(Lfak;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfak;

    .prologue
    .line 1506
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/user/model/OrgEmpMobileObject;>;"
    iput-object p1, p0, Lfak$44;->a:Lfak;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1506
    check-cast p1, Lfpe;

    .line 2510
    invoke-static {p1}, Lcom/alibaba/android/user/model/OrgEmpMobileObject;->fromIDLModel(Lfpe;)Lcom/alibaba/android/user/model/OrgEmpMobileObject;

    move-result-object v0

    .line 1506
    return-object v0
.end method
