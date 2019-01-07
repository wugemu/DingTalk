.class final Lenc$35;
.super Lcmg;
.source "SearchAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lenc;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Leok;",
        "Lcom/alibaba/android/search/model/idl/objects/DeptSearchObjectList;",
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
    .line 1187
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/search/model/idl/objects/DeptSearchObjectList;>;"
    iput-object p1, p0, Lenc$35;->a:Lenc;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1187
    check-cast p1, Leok;

    .line 2190
    invoke-static {p1}, Lcom/alibaba/android/search/model/idl/objects/DeptSearchObjectList;->fromIDLModel(Leok;)Lcom/alibaba/android/search/model/idl/objects/DeptSearchObjectList;

    move-result-object v0

    .line 1187
    return-object v0
.end method
