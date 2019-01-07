.class final Lenc$33;
.super Lcmg;
.source "SearchAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lenc;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Lepj;",
        "Lcom/alibaba/android/search/model/idl/objects/NewRetailMemberObjectList;",
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
    .line 1136
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/search/model/idl/objects/NewRetailMemberObjectList;>;"
    iput-object p1, p0, Lenc$33;->a:Lenc;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1136
    check-cast p1, Lepj;

    .line 2139
    invoke-static {p1}, Lcom/alibaba/android/search/model/idl/objects/NewRetailMemberObjectList;->fromIDLModel(Lepj;)Lcom/alibaba/android/search/model/idl/objects/NewRetailMemberObjectList;

    move-result-object v0

    .line 1136
    return-object v0
.end method
