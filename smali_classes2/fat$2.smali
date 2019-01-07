.class final Lfat$2;
.super Lcmg;
.source "OmpPolicyImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfat;->a(JLcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Lfpk;",
        "Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfat;


# direct methods
.method constructor <init>(Lfat;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfat;

    .prologue
    .line 72
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;>;"
    iput-object p1, p0, Lfat$2;->a:Lfat;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 72
    check-cast p1, Lfpk;

    .line 1075
    if-nez p1, :cond_0

    .line 1076
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1078
    :cond_0
    invoke-static {p1}, Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;->fromIDLModel(Lfpk;)Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;

    move-result-object v0

    goto :goto_0
.end method
