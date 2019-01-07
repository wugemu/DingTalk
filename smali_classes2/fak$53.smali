.class final Lfak$53;
.super Lcmg;
.source "ContactAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfak;->f(JLcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Lcet;",
        "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;",
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
    .line 1720
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;>;"
    iput-object p1, p0, Lfak$53;->a:Lfak;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1720
    check-cast p1, Lcet;

    .line 2723
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;->fromIDLModel(Lcet;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;

    move-result-object v0

    .line 1720
    return-object v0
.end method
