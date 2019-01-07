.class final Lenc$29;
.super Lcmg;
.source "SearchAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lenc;->a(JLcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Leos;",
        "Lcom/alibaba/android/search/model/idl/objects/OrgRightsInfoObject;",
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
    .line 1053
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/search/model/idl/objects/OrgRightsInfoObject;>;"
    iput-object p1, p0, Lenc$29;->a:Lenc;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1053
    check-cast p1, Leos;

    .line 2056
    invoke-static {p1}, Lcom/alibaba/android/search/model/idl/objects/OrgRightsInfoObject;->fromIDLModel(Leos;)Lcom/alibaba/android/search/model/idl/objects/OrgRightsInfoObject;

    move-result-object v0

    .line 1053
    return-object v0
.end method
